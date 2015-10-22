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
#include "em_gpio.h"
/**************************************************************************//**
 * @brief  Main function
 *****************************************************************************/
void Relais_bediening(int status)
{
	for (int i = 0; i < 7; i++) {
	        //Initialiseer een tijdelijke waarde
			// die de huidige relais gaat aansturen.
			int tijdelijk = status & 0b00000001;
	        if (tijdelijk == 0) {
	        	//Als de bit van "tijdelijk" 0 is ->
	        	// clear de uitgang (zet op 0).
	        	GPIO_PinOutClear(gpioPortD,i);
	        } else if (tijdelijk == 1){
	        	//Als de bit van "tijdelijk" 1 is ->
	        	// set de uitgang (zet op 1).
	        	GPIO_PinOutSet(gpioPortD,i);
	        }
	        //Shift de byte "status" 1 plaats naar rechts
	        // met andere woorden: ga naar volgende relais.
	        status = status >> 1;
	    }
	if (status == 0) {
		GPIO_PinOutClear(gpioPortC,0);
	} else if (status == 1) {
		GPIO_PinOutSet(gpioPortC,0);
	}
}
