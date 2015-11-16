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
#include <math.h>
#include <stdio.h>
#include <time.h>
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_gpio.h"
#include "bsp.h"
#include "bsp_trace.h"
#include "Klok.h"
#include "Relais.h"
#include "Displaymodule.h"
#include "textdisplay.h"
#include "Watchdog.h"
//#include "segmentlcd.h"

int statusRelais;
volatile int status;
bool updateScherm = true;

volatile uint32_t msTicks; /* counts 1ms timeTicks */

void Delay(uint32_t dlyTicks);

/**************************************************************************//**
 * @brief SysTick_Handler
 * Interrupt Service Routine for system tick counter
 ****************************************************************************/
void SysTick_Handler(void)
{
  msTicks++;       /* increment counter necessary in Delay()*/
  //countDownWatchdog();
  updateKlok();

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

// De GPIO-pinnen worden ge�nitialiseerd in deze functie
static void gpioSetup(void)
{
	/* Zet GPIO-klok aan */
	CMU_ClockEnable(cmuClock_GPIO, true);

	/* Zet schakelaar PB0 als ingang en laat interrupts toe */
	GPIO_PinModeSet(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, gpioModeInputPull, 1);
	GPIO_IntConfig(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, false, true, true);

	/* Zet schakelaar PB1 als ingang en schakel interrupts aan op deze ingang */
	GPIO_PinModeSet(BSP_GPIO_PB1_PORT, BSP_GPIO_PB1_PIN, gpioModeInputPull, 1);
	GPIO_IntConfig(BSP_GPIO_PB1_PORT, BSP_GPIO_PB1_PIN, false, true, true);

	NVIC_ClearPendingIRQ(GPIO_EVEN_IRQn);
	NVIC_EnableIRQ(GPIO_EVEN_IRQn);

	NVIC_ClearPendingIRQ(GPIO_ODD_IRQn);
	NVIC_EnableIRQ(GPIO_ODD_IRQn);

	/* Stel alle uitgangen (PD0 -> PD6 en PC0) in als PushPull*/
	for(int i = 0; i < 7; i++) {
		GPIO_PinModeSet(gpioPortD,i,gpioModePushPull,0);
	}
	GPIO_PinModeSet(gpioPortC,0,gpioModePushPull,0);
}

/*
 * Wordt uitgevoerd wanneer er een interrupt binnenkomt
 */
void GPIO_Unified_IRQ() {
	/* Get and clear all pending GPIO interrupts */
	  uint32_t interruptMask = GPIO_IntGet();

	  // Clear de interruptvlaggen
	  GPIO_IntClear(interruptMask);

	  /* Act on interrupts */
	  if (interruptMask & (1 << BSP_GPIO_PB0_PIN))
	  {
	    /*
	     * Verander de displaymode
	     * KLOK -> STATUS
	     * STATUS -> PROGRAMMATIE
	     * PROGRAMMATIE -> KLOK
	     */
	    changeDisplayMode();

	    // Laat aan de mainloop weten dat we het scherm moeten updaten
	    updateScherm = true;
	  }

	  if (interruptMask & (1 << BSP_GPIO_PB1_PIN))
	  {
		  // OM TE TESTEN: verander de statuswaarde bij het induwen van PB1
		  status = 0b00110011;
	  }

}

/**************************************************************************//**
 * @brief Handelt de interrupt af die op een even pin binnenkomt
 *****************************************************************************/
void GPIO_EVEN_IRQHandler(void)
{
  GPIO_Unified_IRQ();
}

/**************************************************************************//**
 * @brief Handelt de interrupt af die op een even pin binnenkomt
 *****************************************************************************/
void GPIO_ODD_IRQHandler(void)
{
  GPIO_Unified_IRQ();
}

/**************************************************************************//**
 * @brief  Main function
 *****************************************************************************/
int main(void)
{
  /* Chip errata */
  CHIP_Init();

  //initWatchdog();

  /* Setup SysTick Timer for 1 msec interrupts  */
  if (SysTick_Config(CMU_ClockFreqGet(cmuClock_CORE) / 1000)) while (1) ;

  /* Initialiseer de functies en modules */
  initDisplay();
  gpioSetup();
  setKlok(19,59,55);

  status = 0b10101010; // Stel een variable in om de status te testen

  while(1) {
	  //initWatchdog();
	  // Wanneer ons display op KLOK staat, de klok laten zien.
	  if (getDisplayMode() == KLOK) {
		  /*
		   * Teken een nieuwe klok op het scherm wanneer
		   * we juist van mode zijn verandert.
		   * Anders gewoon opnieuw een string laten afprinten.
		   */
		  clockUpdateDisplay(updateScherm);
	  } else if (getDisplayMode() == STATUS) {
		  /*
		   * Wis het volledige scherm wanneer we van scherm verandert zijn.
		   * Daarna worden de statussen afgedrukt naar het scherm.
		   * Wanneer we niet van scherm verandert zijn, gewoon statussen afprinten.
		   */
		  if (updateScherm == true) {
			  clearDisplay();
			  updateScherm = false;
		  }
		  printStatus(status);
	  } else {
		  /*
		   * Wis het volledige scherm wanneer we van scherm verandert zijn.
		   * Daarna wordt de programmatie afgedrukt naar het scherm.
		   * Wanneer we niet van scherm verandert zijn, gewoon programmatie afprinten.
		   */
		  if (updateScherm == true) {
			  clearDisplay();
			  updateScherm = false;
		  }
		  char tijdelijkeString[16];
		  sprintf(tijdelijkeString,"%02d:%02d > %d,%d,%d",19,59,1,4,6);
		  printString(tijdelijkeString,2,4);
	  }

	  //while(true){
		  //countDownWatchdog();
	  //}

	  }

  }


