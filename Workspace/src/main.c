/**************************************************************************//**
 * @file
 * @brief Simple LED Blink Demo for EFM32GG_STK3700
 * @version 4.0.0
 ******************************************************************************
 * @section License
 * <b>(C) Copyright 2014 Silicon Labs, http://www.silabs.com</b>
 *******************************************************************************
 *
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 *
 ******************************************************************************/

#include <stdint.h>
#include <stdbool.h>
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_gpio.h"
#include "bsp.h"
#include "bsp_trace.h"

#include "Relais.h"

volatile uint32_t msTicks; /* counts 1ms timeTicks */

void Delay(uint32_t dlyTicks);

/**************************************************************************//**
 * @brief SysTick_Handler
 * Interrupt Service Routine for system tick counter
 *****************************************************************************/
void SysTick_Handler(void)
{
  msTicks++;       /* increment counter necessary in Delay()*/
}

/**************************************************************************//**
 * @brief Delays number of msTick Systicks (typically 1 ms)
 * @param dlyTicks Number of ticks to delay
 *****************************************************************************/
// Wordt opgeroepen door de mainfunctie
void Delay(uint32_t dlyTicks)
{
  uint32_t curTicks;

  curTicks = msTicks;

  //Wanneer het verschil groter is dan ingesteld aantal -> uit While-lus springen
  while ((msTicks - curTicks) < dlyTicks) ;
}

/**************************************************************************//**
 * @brief  Main function
 *****************************************************************************/
int main(void)
{
  /* Chip errata */
  CHIP_Init();

  //Enable de klok van GPIO
  CMU_ClockEnable(cmuClock_GPIO, true);

  /* If first word of user data page is non-zero, enable eA Profiler trace */
  BSP_TraceProfilerSetup();

  /* Setup SysTick Timer for 1 msec interrupts  */
  if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000)) while (1) ;

  //Zet de aansluitingen 0 & 1 van poort D in outputmode met PushPull

   for(int i = 0; i < 7; i++) {
	  GPIO_PinModeSet(gpioPortD,i,gpioModePushPull,0);
  }
   GPIO_PinModeSet(gpioPortC,0,gpioModePushPull,0);


  while(1) {
	  Relais_bediening(0b11110000);
	  Delay(1000);
	  Relais_bediening(0b01100111);
	  Delay(1000);
	  Relais_bediening(0b11001100);
	  Delay(1000);
	  Relais_bediening(0b00101010);
	  Delay(1000);
  }

}
