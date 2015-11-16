/*
 * Watchdog.c
 *
 *  Created on: 23-okt.-2015
 *      Author: landerdellafaille
 */

#include "Main.h"
#include "Displaymodule.h"

int counterOfDeath;

void initWatchdog() {
	counterOfDeath = 2000;
}

void countDownWatchdog() {
	if(counterOfDeath == 0) {
		clearDisplay();
		printString("Watchdog Reset",2,8);
		main();
	} else {
		counterOfDeath--;
	}
}
