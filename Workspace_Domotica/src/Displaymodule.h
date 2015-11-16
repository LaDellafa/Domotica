/*
 * Display.h
 *
 *  Created on: 9 nov. 2015
 *      Author: jensdehoog
 */

#ifndef DISPLAY_H_
#define DISPLAY_H_
#include <stdbool.h>
#include <stdio.h>

typedef enum {
	KLOK,
	STATUS,
	PROGRAMMATIE
} DisplayMode;

void initDisplay();
void clockUpdateDisplay(bool redraw);
void printString(char invoer[], int font, int regel);
void clearDisplay();
void changeDisplayMode();
DisplayMode getDisplayMode();
void printStatus(int status);


#endif /* DISPLAY_H_ */
