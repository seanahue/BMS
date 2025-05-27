/*
 * taskBQ76920.c
 * FreeRTOS task for communicating with BQ76920 battery monitor over I2C
 * and logging status via UART with support for commands: g, read, write
 */

#include <xc.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "FreeRTOS.h"
#include "task.h"

#include "taskBQ76920.h"
#include "i2c1.h"
#include "uart1.h"

#include <math.h>

#define BQ76920_I2C_ADDR     0x08 //Current device address of BQ76920 chip

//Predefined Register addresses inside of BQ76920
#define SYS_CTRL1_REG        0x04
#define SYS_CTRL2_REG        0x05
#define VC1_HI_REG           0x0C
#define BAT_HI_REG           0x2A
#define TS1_HI_REG           0x2C
#define CC_HI_REG            0x32
#define CC_LO_REG            0x33
#define ADCGAIN1_REG         0x50
#define ADCOFFSET_REG        0x51
#define ADCGAIN2_REG         0x59


uint16_t adc_gain_uV = 365;
int8_t adc_offset_mV = 0;

float remaining_capacity_mAh = 3200.0f; //battery milliAmp Hours from Chemistry for my pack
float soc_percent = 100.0f;
float coulomb_counter_gain_uV = 369.0f;
float shunt_resistance_ohm = 0.01f;

static TickType_t last_update_tick = 0;

static void taskBQ76920_Run(void *pvParameters);
static void enable_BQ76920(void);
static void read_adc_gain_and_offset(void);
static void execute_uart_command(const char *line);
static void send_uart_hex_bytes(uint8_t *data, uint8_t len);
static void read_and_send_status(void);
void read_external_temp(void);
void update_soc_from_cc(void);


//Initialize tasks
void taskBQ76920_init(void)
{
    BaseType_t result = xTaskCreate(taskBQ76920_Run, "BQ76920", 512, NULL, 1, NULL);
    if (result != pdPASS)
    {
        uart1_send_string("FAILED TO CREATE BQ76920 TASK\r\n");
    }
    else
    {
        uart1_send_string("Created BQ76920 Task\r\n");
    }
}


//task loop
static void taskBQ76920_Run(void* pvParameters)
{
    (void)pvParameters;
    char line[64];

    vTaskDelay(pdMS_TO_TICKS(1000));
    enable_BQ76920();
    read_adc_gain_and_offset();

    while (1)
    {
        size_t i = 0;
        const TickType_t timeout_ticks = pdMS_TO_TICKS(2000); // 2 seconds
        TickType_t start = xTaskGetTickCount();

        //Clear overrun if needed
        if (U1STAbits.OERR)
        {
            U1STAbits.OERR = 0; //Clear Overrun Error
            uart1_send_string("UART Overrun cleared\r\n");
        }

        memset(line, 0, sizeof(line)); //Clear buffer before receiving

        while (i < sizeof(line) - 1)
        {
            if (UART1_IsRxReady())
            {
                char c = UART1_Read();
                if (c == '\r' || c == '\n') break;
                if (c >= 32 && c <= 126) line[i++] = c;
            }
            else
            {
                vTaskDelay(pdMS_TO_TICKS(1));
            }

            if ((xTaskGetTickCount() - start) > timeout_ticks)
            {
                //uart1_send_string("UART Timeout...\r\n");
                i = 0; //Clear buffer
                break;
            }
        }

        line[i] = '\0';
        
        update_soc_from_cc();   //polling the Coulomb Counter
        
        if (i > 0)
        {
            execute_uart_command(line);
        }
    }
}


//Enables various functions by ensuring that certain bits within registers
//are set correctly
static void enable_BQ76920(void)
{
    I2C1_MESSAGE_STATUS status;
    uint8_t data[2];

    //Enable ADC, TS1 temperature, and Coulomb Counter
    data[0] = SYS_CTRL1_REG;
    data[1] = 0x19;
    I2C1_MasterWrite(data, 2, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE)
    {
        uart1_send_string("Enable SYS_CTRL1 failed!\r\n");
        I2C1_Initialize();
    }

    vTaskDelay(pdMS_TO_TICKS(2));  // small delay

    //Enable CHG and DSG FETs
    data[0] = SYS_CTRL2_REG;
    data[1] = 0xC0;
    I2C1_MasterWrite(data, 2, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE)
        uart1_send_string("Enable SYS_CTRL2 failed!\r\n");
}


//Extract ADC gain and offset calibration values from BQ76920
static void read_adc_gain_and_offset(void)
{
    I2C1_MESSAGE_STATUS status;
    uint8_t gain1 = 0, gain2 = 0, offset = 0;
    uint8_t reg;

    reg = ADCGAIN1_REG;
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    I2C1_MasterRead(&gain1, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);

    reg = ADCOFFSET_REG;
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    I2C1_MasterRead(&offset, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);

    reg = ADCGAIN2_REG;
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    I2C1_MasterRead(&gain2, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);

    adc_gain_uV = (((gain2 >> 2) & 0x03) << 3 | (gain1 & 0x07)) + 365;
    adc_offset_mV = (int8_t)offset;
}

//Handle read/write UART commands
static void execute_uart_command(const char *line)
{
    char cmd_buf[64];
    strncpy(cmd_buf, line, sizeof(cmd_buf));
    cmd_buf[sizeof(cmd_buf) - 1] = '\0';

    uart1_send_string("CMD Received: ");
    uart1_send_string(cmd_buf);
    uart1_send_string("\r\n");

    char *cmd = strtok(cmd_buf, " ");
    if (!cmd) {
        uart1_send_string("CMD Parse Error\r\n");
        return;
    }

    if (strcmp(cmd, "g") == 0) {
        uart1_send_string("Status Triggered\r\n");
        read_and_send_status();
    }
    else if (strcmp(cmd, "write") == 0) {
        char *arg1 = strtok(NULL, " ");
        char *arg2 = strtok(NULL, " ");
        if (arg1 && arg2) {
            uint8_t reg = (uint8_t)strtol(arg1, NULL, 0);
            uint8_t val = (uint8_t)strtol(arg2, NULL, 0);
            uint8_t data[2] = { reg, val };
            I2C1_MESSAGE_STATUS status;
            I2C1_MasterWrite(data, 2, BQ76920_I2C_ADDR, &status);
            while (status == I2C1_MESSAGE_PENDING);
            uart1_send_string((status == I2C1_MESSAGE_COMPLETE) ? "ACK\r\n" : "WRITE FAIL\r\n");
        } else {
            uart1_send_string("Invalid write format\r\n");
        }
    }
    else if (strcmp(cmd, "read") == 0) {
        char *arg1 = strtok(NULL, " ");
        char *arg2 = strtok(NULL, " ");
        if (arg1 && arg2) {
            uint8_t reg = (uint8_t)strtol(arg1, NULL, 0);
            uint8_t len = (uint8_t)strtol(arg2, NULL, 0);
            if (len > 8) len = 8;
            uint8_t buffer[8];
            I2C1_MESSAGE_STATUS status;
            I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
            while (status == I2C1_MESSAGE_PENDING);
            if (status != I2C1_MESSAGE_COMPLETE) {
                uart1_send_string("READ CMD FAIL\r\n"); return;
            }
            I2C1_MasterRead(buffer, len, BQ76920_I2C_ADDR, &status);
            while (status == I2C1_MESSAGE_PENDING);
            (status == I2C1_MESSAGE_COMPLETE) ? send_uart_hex_bytes(buffer, len) : uart1_send_string("READ FAIL\r\n");
        } else {
            uart1_send_string("Invalid read format\r\n");
        }
    }
    else {
        uart1_send_string("Unknown command\r\n");
    }
}


//Print bytes as hexadecimal values over UART
static void send_uart_hex_bytes(uint8_t *data, uint8_t len)
{
    char buf[16];
    for (uint8_t i = 0; i < len; i++) {
        sprintf(buf, "0x%02X ", data[i]);
        uart1_send_string(buf);
    }
    uart1_send_string("\r\n");
}


//Function is called when user sends 'g' in GUI to get a general status update
//of the battery pack (Cell voltages, pack voltage)
static void read_and_send_status(void)
{
    I2C1_MESSAGE_STATUS status;
    uint8_t reg;
    uint8_t buffer[10]; //need to store 10 bytes of data (VC1_HIGH_BYTE - VC5_LOW_BYTE)
    char uart_buf[64];
    uint16_t raw_value;
    uint32_t voltage_mV;

    uart1_send_string("\r\n======== BQ76920 Status ========\r\n");
    //Calculate individual cell voltages
    reg = VC1_HI_REG;
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status == I2C1_MESSAGE_COMPLETE)
    {
        I2C1_MasterRead(buffer, 10, BQ76920_I2C_ADDR, &status);
        while (status == I2C1_MESSAGE_PENDING);
        if (status == I2C1_MESSAGE_COMPLETE)
        {
            uart1_send_string("Cell Voltages:\r\n");
            for (int i = 0; i < 2; i++) //this loop would ideally cover all 3 cells at once,
                    //but since VC2 through VC4 were all shorted per data sheet for a 3-cell
                    //configuration, VC3 and VC4 needed to be skipped
            {
                raw_value = (buffer[i * 2] << 8) | buffer[i * 2 + 1];   //get raw value
                voltage_mV = ((uint32_t)raw_value * adc_gain_uV) / 1000 + adc_offset_mV; //convert raw to voltage (mV)
                sprintf(uart_buf, (raw_value < 10 || voltage_mV > 5000) ?
                    "  C%d: ERROR (raw: 0x%04X)\r\n" :      
                    "  C%d: %lu mV (raw: 0x%04X)\r\n",
                    i + 1, (raw_value < 10 || voltage_mV > 5000) ? raw_value : voltage_mV, raw_value);
                uart1_send_string(uart_buf); //to display on GUI using UART
            }
            
            int i = 4; //Display VC5. Uses same code in for loop above, just need i = 4 now
            raw_value = (buffer[i * 2] << 8) | buffer[i * 2 + 1];
            voltage_mV = ((uint32_t)raw_value * adc_gain_uV) / 1000 + adc_offset_mV;
            sprintf(uart_buf, (raw_value < 10 || voltage_mV > 5000) ?
                "  C%d: ERROR (raw: 0x%04X)\r\n" :
                "  C%d: %lu mV (raw: 0x%04X)\r\n",
                i + 1, (raw_value < 10 || voltage_mV > 5000) ? raw_value : voltage_mV, raw_value);
            uart1_send_string(uart_buf);
        }
    }

    //Pack Voltage Calculate and Display
    reg = BAT_HI_REG;
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status == I2C1_MESSAGE_COMPLETE)
    {
        I2C1_MasterRead(buffer, 2, BQ76920_I2C_ADDR, &status);
        while (status == I2C1_MESSAGE_PENDING);
        if (status == I2C1_MESSAGE_COMPLETE)
        {
            raw_value = (buffer[0] << 8) | buffer[1];
            voltage_mV = (uint32_t)raw_value * 1.9f;  //BAT_HI/LO = 1.9 mV/LSB
            sprintf(uart_buf, "Pack Voltage: %lu mV (raw: 0x%04X)\r\n", voltage_mV, raw_value);
            uart1_send_string(uart_buf);
        }
    }
    
    read_external_temp(); //adds thermister temperature to output
    
    uart1_send_string("================================\r\n"); //formatting
}


//Read and calculate external thermister temperature and send to GUI
void read_external_temp(void)
{
    I2C1_MESSAGE_STATUS status;
    uint8_t reg = TS1_HI_REG;
    uint8_t buffer[2];
    uint16_t raw_value;
    float v_ts1, r_therm, temp_c;
    char uart_buf[128];

    //Read TS1
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE) return;

    I2C1_MasterRead(buffer, 2, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE) return;

    raw_value = (buffer[0] << 8) | buffer[1];
    v_ts1 = raw_value * 0.00005f;  //volts

    //Calculate thermistor resistance
    float v_bias = 2.5f;         //REGOUT
    float r_pullup = 10000.0f;   //10k resistor from REGOUT to TS1
    r_therm = (v_ts1 * r_pullup) / (v_bias - v_ts1);

    //Beta model temperature calculation
    float t0 = 298.15f;          //25°C in Kelvin
    float b = 3435.0f;           //Beta constant
    float r0 = 10000.0f;         //10kOhm at 25°C

    float temp_k = 1.0f / ( (1.0f / t0) + (1.0f / b) * logf(r_therm / r0) );
    temp_c = temp_k - 273.15f;

    uart1_send_string("External Temperature Sensor:\r\n");
    snprintf(uart_buf, sizeof(uart_buf),
        "  Voltage:    %.3f V\r\n"
        "  Resistance: %.0f Ohms\r\n"
        "  Temp:       %.2f C (raw: 0x%04X)\r\n",
        v_ts1, r_therm, temp_c, raw_value);

    uart1_send_string(uart_buf);
}


//Use Coulomb Counter to calculate State of Charge (SoC) and display on GUI
void update_soc_from_cc(void)
{
    //Use TickType task to account for time delays. A Coulomb Counter can only
    //work accurately if each updated value for current, SoC, etc. (anything using
    //the Coulomb Counter) accounts for the time it took to display from the previous
    //value(s). Here, the frequency of the tick rate is 1000 Hz, or 1 ms per tick.
    TickType_t now = xTaskGetTickCount();
    float dt_sec = (last_update_tick == 0) ? 1.0f : (now - last_update_tick) / 1000.0f;
    last_update_tick = now;

    I2C1_MESSAGE_STATUS status;
    uint8_t reg = CC_HI_REG;
    uint8_t cc_raw[2];
    char uart_buf[64];

    //Read CC_HI and CC_LO
    I2C1_MasterWrite(&reg, 1, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE) return;

    I2C1_MasterRead(cc_raw, 2, BQ76920_I2C_ADDR, &status);
    while (status == I2C1_MESSAGE_PENDING);
    if (status != I2C1_MESSAGE_COMPLETE) return;

    int16_t cc_value = (int16_t)((cc_raw[0] << 8) | cc_raw[1]); //signed value;
    //Should be negative, but was having issues. Wasn't using a load tester for
    //higher current draw, so maybe very small positive values that were yielded
    //were the result of rounding. Fixed for now by subtracting delta_charge_mAh
    //in line 419 below. Again, rough estimate Coulomb counter. Adjust mAh in
    //remaining_capacity_mAh variable according to pack and battery chemistry.
    
    //Convert to current in Amps
    float cc_voltage_V = (float)cc_value * coulomb_counter_gain_uV * 1e-6f;
    float current_A = cc_voltage_V / shunt_resistance_ohm;

    //Convert to charge (mAh) over elapsed time (3600.0f is # of seconds in 1 hour)
    float delta_charge_mAh = (current_A * dt_sec * 1000.0f) / 3600.0f; 

    remaining_capacity_mAh -= delta_charge_mAh; //adding a negative value for discharge
    if (remaining_capacity_mAh > 3200.0f) remaining_capacity_mAh = 3200.0f;
    if (remaining_capacity_mAh < 0.0f) remaining_capacity_mAh = 0.0f;

    soc_percent = (remaining_capacity_mAh / 3200.0f) * 100.0f;

    sprintf(uart_buf, "Current: %.2f A | SoC: %.2f %%\r\n", current_A, soc_percent);
    uart1_send_string(uart_buf);
}
