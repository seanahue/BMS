/* 
 * File:    taskBQ76920.h
 * Author:  Sean Donahue
 * Summary: Task header for interfacing with BQ76920 battery monitor
 * 
 * Description:
 *   This module sets up a FreeRTOS task that communicates with the BQ76920
 *   over I2C to read cell voltages and state of charge (SoC).
 *   The readings are transmitted over UART for display/debugging.
 */

#ifndef _TASKBQ76920_H
#define _TASKBQ76920_H

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Initializes the BQ76920 I2C/UART task.
 * 
 * This function initializes any hardware interfaces required (I2C1, UART1)
 * and registers the FreeRTOS task that will run periodic voltage monitoring.
 */
void taskBQ76920_init(void);


extern uint16_t adc_gain_uV;
extern int8_t adc_offset_mV;




#ifdef __cplusplus
}
#endif

#endif /* _TASKBQ76920_H */
