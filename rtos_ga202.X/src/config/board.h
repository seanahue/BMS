#ifndef BOARD_H
#define	BOARD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <FreeRTOS.h>
#include <semphr.h>  // semaphores
    
#include <pin_manager.h>
#include <system.h>

#define IO(x, y, z)    x ## y ## z
#define IO_TOGGLE(n)    IO(IO_, n, _Toggle())
    
extern SemaphoreHandle_t xButton_sem;

#ifdef	__cplusplus
}
#endif

#endif	/* BOARD_H */

