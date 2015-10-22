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
#include "Klok.h"

int uren,minuten,seconden;
int msTeller;

bool initKlok() {
    uren = 19;
    minuten = 20;
    seconden = 0;
    msTeller = 0;
    return true;
}

bool updateKlok()
{
    if (msTeller == 999) {
        msTeller = 0;
        printf("Update %d:%d:%d\n",uren,minuten,seconden);
        if(seconden == 59) {
            seconden = 0;
            if (minuten == 59) {
                minuten = 0;
                if (uren == 23) {
                    uren = 0;
                } else {
                    uren++;
                }
            } else {
                minuten++;
            }
        } else {
            seconden++;
        }
    } else {
        msTeller++;
    }
    return true;
}

int getUren() {
    return uren;
}

int getMinuten() {
    return minuten;
}

int getSeconden() {
    return seconden;
}

void setKlok(int instUren, int instMinuten, int instSeconden) {
    uren = instUren;
    minuten = instMinuten;
    seconden = instSeconden;
}
