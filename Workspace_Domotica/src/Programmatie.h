/*
 * Programmatie.h
 *
 *  Created on: 21-nov.-2015
 *      Author: jensdehoog
 */

#ifndef PROGRAMMATIE_H_
#define PROGRAMMATIE_H_

typedef struct {
	int uren;
	int minuten;
	int set;
	int clear;
} Programma;

void initProgrammatie();
void setProgrammatie(Programma *p, int set, int clear);
void checkProgrammatie(int *status);
void nieuweProgrammatie(int uren, int minuten, int set, int clear);
void bewerkProgrammatie(int uren, int minuten, int set, int clear);
void bewerkProgrammatie(int uren, int minuten, int set, int clear);
void addPointerArray();
int getElementArray();

#endif /* PROGRAMMATIE_H_ */
