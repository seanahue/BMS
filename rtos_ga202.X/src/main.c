/**
  @Author
    Sean Donahue, Computer Engineering Major

  @Course
    ECE 461/462, Senior Design, St. Cloud State University 2024-2025

  @File Name
    main.c

  @Summary
    Connect to BQ76920EVM using PIC24FJ128GA202. Utilizes UART and I2C.
    Designed to work with Python 3.13 GUI to send read/write commands to
    PIC24 MCU via UART, then BQ76920 battery monitor chip using I2C. The reverse
    process is used to send commands back.

  @Description
  
*/

/**
  Section: Included Files
*/
#include <stddef.h>      // Defines NULL
#include <stdbool.h>     // Defines true
#include <stdlib.h>      // Defines EXIT_FAILURE

#include <FreeRTOS.h>
#include <croutine.h>
#include <task.h>

#include <pin_manager.h>
#include <system.h>
#include "FreeRTOSConfig.h"

#include "board.h"
#include "taskBQ76920.h"

/* Only one co-routine is created so the index is not significant. */
#define crfFLASH_INDEX             (0)

/* The number of flash co-routines to create. */
#define mainNUM_FLASH_COROUTINES   (1)

static void taskHeartbeat_Init(unsigned portBASE_TYPE uxPriority);
static void taskHeartbeat_Execute(void);
static void prvMainCoRoutine(CoRoutineHandle_t xHandle, unsigned portBASE_TYPE uxIndex);
/*
                         Main application
 */
int main(void)
{
    //initialize the device (MCC configurations)
    SYSTEM_Initialize();

    //=========================================================================
    //    Board initialization
    //=========================================================================
    

    //=========================================================================
    //    Set application's initial state
    //=========================================================================
    
    //=========================================================================
    //    Application Task initialization
    //=========================================================================
    taskHeartbeat_Init(mainNUM_FLASH_COROUTINES);
    
//Initialize UART and I2C, then initialize the task I created
    UART1_Initialize();
    I2C1_Initialize();
    taskBQ76920_init();
    
  
    
uint16_t resetCause = RCON;
RCON = 0;  // Clear all reset flags

if (resetCause & 0x0001) uart1_send_string("Reset cause: MCLR\r\n");
if (resetCause & 0x0010) uart1_send_string("Reset cause: WDT Timeout\r\n");
if (resetCause & 0x0040) uart1_send_string("Reset cause: Brown-out\r\n");
if (resetCause & 0x0080) uart1_send_string("Reset cause: Power-on\r\n");












    //=========================================================================
    //    FreeRTOS scheduler
    //=========================================================================
    vTaskStartScheduler();

    /* If all is well then this line will never be reached.  If it is reached
    then it is likely that there was insufficient (FreeRTOS) heap memory space
    to create the idle task.  This may have been trapped by the malloc() failed
    hook function, if one is configured.
    */
    
    uart1_send_string("ERROR: Scheduler failed to start!\r\n"); //indicate if line was passed

    while (1)
    {
        // Add your application code
    }
    
    return 1;
}
/**
 End of File
*/

static void prvMainCoRoutine(CoRoutineHandle_t xHandle, unsigned portBASE_TYPE uxIndex)
{
    /* Co-routines MUST start with a call to crSTART. */
    crSTART(xHandle);

    for (;;)
    {
        taskHeartbeat_Execute();
        crDELAY(xHandle, pdMS_TO_TICKS(1000));
    }

    /* Co-routines MUST end with a call to crEND. */
    crEND();
}

static void taskHeartbeat_Init( unsigned portBASE_TYPE uxPriority )
{
    xCoRoutineCreate( prvMainCoRoutine, uxPriority, crfFLASH_INDEX );
}

/*
    Process the heartbeat. This is done in the main event loop (as
    opposed to an interrupt) so we can see if the App has locked up.
*/
static void taskHeartbeat_Execute(void)
{
    portENTER_CRITICAL();
    {
//        IO_TOGGLE(LED_2);
    }
    portEXIT_CRITICAL();
}
