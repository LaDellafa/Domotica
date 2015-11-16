/*
 * Display.c
 *
 *  Created on: 9 nov. 2015
 *      Author: jensdehoog
 */
#include "Displaymodule.h"
#include <string.h>
#include "display.h"
#include "textdisplay.h"
#include "retargettextdisplay.h"
#include "glib.h"
#include "dmd.h"
#include "Klok.h"

volatile DisplayMode displaymode = KLOK;

static GLIB_Context_t glibContext;

void changeDisplayMode() {
	if (displaymode == KLOK) {
		displaymode = STATUS;
	} else if (displaymode == STATUS) {
		displaymode = PROGRAMMATIE;
	} else {
		displaymode = KLOK;
	}
}

DisplayMode getDisplayMode() {
	return displaymode;
}

void initDisplay() {
	EMSTATUS status;

	status = DISPLAY_Init();
	if (DISPLAY_EMSTATUS_OK != status)
	      while (true)
	        ;

	    /* Initialize the DMD module for the DISPLAY device driver. */
	    status = DMD_init(0);
	    if (DMD_OK != status)
	      while (true)
	        ;

	    status = GLIB_contextInit(&glibContext);
	    if (GLIB_OK != status)
	      while (true)
	        ;
}

void clockUpdateDisplay(bool redraw)
{
  char clockString[16];

  if (redraw)
  {
    GLIB_setFont(&glibContext, (GLIB_Font_t *)&GLIB_FontNumber16x20);
    glibContext.backgroundColor = Black;
    glibContext.foregroundColor = White;
    GLIB_clear(&glibContext);
  }
  sprintf(clockString, "%02d:%02d:%02d", getUren(), getMinuten(), getSeconden());
  //sprintf(clockString, "s", "Dit is een test");
  GLIB_drawString(&glibContext, clockString, strlen(clockString), 1, 52, true);

  /* Update display */
  DMD_updateDisplay();
}

void printString(char invoer[], int font, int regel) {

	switch(font) {
	case 1:
		//Klein font
		GLIB_setFont(&glibContext,(GLIB_Font_t *)&GLIB_FontNarrow6x8);
		break;
	case 2:
		GLIB_setFont(&glibContext,(GLIB_Font_t*)&GLIB_FontNormal8x8);
		break;
	case 3:
		GLIB_setFont(&glibContext,(GLIB_Font_t *)&GLIB_FontNumber16x20);
		break;
	default:
		GLIB_setFont(&glibContext,(GLIB_Font_t *)&GLIB_FontNarrow6x8);
		break;
	}
	GLIB_drawString(&glibContext, invoer, strlen(invoer), 1, (regel*8), true);
	DMD_updateDisplay();
}

void printStatus(int status) {
	char tijdelijkeString[16];
	for (int i = 0; i < 8; i++) {
		//Initialiseer een tijdelijke waarde
		// die de huidige relais gaat aansturen.
		int tijdelijk = status & 0b00000001;
		if (tijdelijk == 0) {
			//Als de bit van "tijdelijk" 0 is ->
			// clear de uitgang (zet op 0).
			sprintf(tijdelijkeString,"Relais %d: uit",i);
			printString(tijdelijkeString,2,i+4);
			//GLIB_drawString(&glibContext, tijdelijkeString, strlen(tijdelijk), 1, i, true);
		} else if (tijdelijk == 1){
			//Als de bit van "tijdelijk" 1 is ->
			// set de uitgang (zet op 1).
			sprintf(tijdelijkeString,"Relais %d: aan",i);
			printString(tijdelijkeString,2,i+4);
			//GLIB_drawString(&glibContext, tijdelijkeString, strlen(tijdelijk), 1, i, true);
		}
		//Shift de byte "status" 1 plaats naar rechts
		// met andere woorden: ga naar volgende relais.
		status = status >> 1;
	}
}

void clearDisplay() {
	glibContext.backgroundColor = White;
	glibContext.foregroundColor = Black;
	GLIB_clear(&glibContext);
}


