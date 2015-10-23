/*
 * Klok.h
 *
 *  Created on: 22 okt. 2015
 *      Author: jensdehoog
 */

#ifndef KLOK_H_
#define KLOK_H_
#include <stdbool.h>

void initKlok();
void updateKlok();
int getUren();
int getMinuten();
int getSeconden();
void setKlok(int instUren, int instMinuten, int instSeconden);

#endif /* KLOK_H_ */
