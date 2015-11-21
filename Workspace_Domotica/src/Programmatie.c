
/*
 * Programmatie.c
 *
 *  Created on: 16-nov.-2015
 *      Author: jensdehoog
 */
#include "stdlib.h"
#include "Klok.h"
#include "Programmatie.h"

Programma programmaties[19];
int elementArray = 0;

void initProgrammatie() {

	Programma prog;
	prog.clear = 0;
	prog.set = 0;
	prog.uren = 0;
	prog.minuten = 0;

	for(int i = 0; i < 20; i++) {
		programmaties[i] = prog;
	}
}

void checkProgrammatie(int *status) {
    int uren = getUren();
    int minuten = getMinuten();
    for(int i = 0; i < 20; i++) {
        if (programmaties[i].uren == uren && programmaties[i].minuten == minuten) {
            *status = *status | programmaties[i].set;
            *status = *status & ~programmaties[i].clear;

        }
    }
}

void nieuweProgrammatie(int uren, int minuten, int set, int clear) {
	Programma nieuwProgramma;
	nieuwProgramma.uren = uren;
	nieuwProgramma.minuten = minuten;
	nieuwProgramma.set = set;
	nieuwProgramma.clear = clear;
	if (elementArray < 20) {
		programmaties[elementArray] = nieuwProgramma;
	}
}

void bewerkProgrammatie(int uren, int minuten, int set, int clear) {
	for(int i = 0; i < 20; i++) {
		if (programmaties[i].uren == uren && programmaties[i].minuten == minuten) {
			setProgrammatie(&programmaties[i],set,clear);
		}
	}
}

void addPointerArray() {
	elementArray++;
}

int getElementArray() {
	return elementArray;
}

void setProgrammatie(Programma *p, int set, int clear) {
	p->set = set;
	p->clear = clear;
}


