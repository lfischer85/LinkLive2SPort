/*
 * LinkLive.c
 *
 * Created: 29.12.2015 20:57:56
 *  Author: lfischer85
 */ 
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

#include "LinkLive.h"

// NTC Linearization LUT
const int16_t NTClookup[256] PROGMEM = {296,296,237,208,189,176,165,156,149,143,138,133,128,125,121,
118,115,112,109,107,105,102,100,98,97,95,93,91,90,88,87,
86,84,83,82,80,79,78,77,76,75,74,73,72,71,70,69,
68,67,66,66,65,64,63,62,62,61,60,59,59,58,57,57,
56,55,55,54,53,53,52,52,51,50,50,49,49,48,48,47,
47,46,45,45,44,44,43,43,42,42,41,41,40,40,39,39,
38,38,38,37,37,36,36,35,35,34,34,33,33,33,32,32,
31,31,30,30,30,29,29,28,28,28,27,27,26,26,25,25,
25,24,24,23,23,23,22,22,22,21,21,20,20,20,19,19,
18,18,18,17,17,16,16,16,15,15,14,14,14,13,13,12,
12,12,11,11,11,10,10,9,9,9,8,8,7,7,7,6,
6,5,5,4,4,4,3,3,2,2,2,1,1,0,0,
-1,-1,-2,-2,-2,-3,-3,-4,-4,-5,-5,-6,-6,-7,-7,-8,
-8,-9,-9,-10,-10,-11,-11,-12,-13,-13,-14,-14,-15,-16,-16,-17,
-17,-18,-19,-19,-20,-21,-22,-22,-23,-24,-25,-26,-27,-28,-29,-30,
-31,-32,-33,-34,-35,-37,-38,-40,-41,-43,-45,-48,-50,-54,-58,-63,-72,-72};

void LLinit()
{
	// INIT PB0 as Input
	DDRB &= ~(1<<PORTB0);
	
	// Init INT0
	EICRA |= (1<<ISC01);			// The falling edge of INT0 generates an interrupt request.
	
	// Init PinChange Interrupt 0
	PCICR |= (1<<PCINT0);			// Pin Change Interrupt 0 Enable (0::7)
	PCMSK0 |= (1<<PCINT0);			// Enable PinChange Interrupt for PCINT0
}

void LLstartCounter()
{
	TCCR1B |= (1<<CS11);
}

void LLstopCounter()
{
	TCCR1B &= ~(1<<CS11);
}

void LLresetCounter()
{
	TCNT1 = 0;
}

void LLProcessFrame()
{
	uint16_t cal1ms,cal500us;
	enum {NTC, LIN} tempSensorType;
	
	cal1ms = LLValueArray[0] = LLItemArray[0];	// Cal 1ms
	
	// Get temperature, sensor type and 0.5ms calibration value (lower value = calibration value)
	if(LLItemArray[10] > LLItemArray[9])
	{
		// Cal 500us
		cal500us = LLValueArray[9] = LLItemArray[9];
		// Temperature
		tempSensorType = NTC;
		LLValueArray[10] = LLItemArray[10];
	}
	else
	{
		// Cal 500us
		cal500us = LLValueArray[9] = LLItemArray[10];	
		// Temperature
		tempSensorType = LIN;
		LLValueArray[10] = LLItemArray[9];
	}
	
	for(uint8_t i = 0; i < 10; i++)
	{
		if(LLItemArray[i] < cal500us)
		{
			LLItemArray[i] = cal500us;
		}
	}
	//cal500us -=1;	// - instability margin
	
	//Cal 1ms
	LLValueArray[0] = LLItemArray[0];
	
	// Voltage
	LLValueArray[1] = ((LLItemArray[1]-cal500us) * 20 * 1000) / cal1ms; // LLValue = millivolts
	// Ripple Volts
	LLValueArray[2] = ((LLItemArray[2]-cal500us) * 4 * 1000) / cal1ms; // LLValue = millivolts
	// Current
	LLValueArray[3] = ((LLItemArray[3]-cal500us) * 50 * 1000) / cal1ms; // LLValue = milliAmps
	// VAl 4 = Throttle
	
	// Output Power in %
	LLValueArray[5] = ((LLItemArray[5]-cal500us) * 25 * 1000) / cal1ms; // LLValue = Output Power % (0-100)
	// RPM
	LLValueArray[6] = ((LLItemArray[6]-cal500us) * 20416 ) / cal1ms; // LLValue = RPM (electrical)
	// BEC Voltage
	LLValueArray[7] = ((LLItemArray[7]-cal500us) * 4 * 1000) / cal1ms; // LLValue = millivolts
	// BEC Current
	LLValueArray[8] = ((LLItemArray[8]-cal500us) * 4 * 1000) / cal1ms; // LLValue = milliAmps
	
	// Temperature
	switch(tempSensorType)
	{
		uint8_t units = ((LLItemArray[8]-cal500us) * 64) / cal1ms;
		
		case NTC:
		LLValueArray[9] =  pgm_read_byte(&(NTClookup[units])); 
		break;
		
		case LIN:
		LLValueArray[9] = ((LLItemArray[8]-cal500us) * 30 * 1000) / cal1ms; // LLValue = Degrees C (max 150)
		break;
	}
	LLPacketReadyFlag = 1 ;	
}

uint16_t LLreadCounter()
{
	return TCNT1;
}

ISR ( INT0_vect )	// LinkLive Pulse from ESC
{
	EIMSK &= ~(1<<INT0);	// Disable INT0 to not count falling edge of receiver signal
	
	LLstopCounter();
	if ((LLreadCounter() > 7500))
	{
		// Reset ItemCounter if Timer > 7.5ms
		LLItemCounter = 0;
	}
	else
	{
		// Read Value to ItemArray
		LLItemArray[LLItemCounter] = LLreadCounter();
		LLItemCounter++;
	}
	if (LLItemCounter==11)	// all items received
	{
		LLProcessFrame();
	}
}

ISR (PCINT0_vect)	// PinChange Interrupt Vector
{
	uint8_t changedbits;

    changedbits = PINB ^ portbhistory;
    portbhistory = PINB;

    if(changedbits & (1 << PB0))	// PINB0 changed
    {
		if(portbhistory & (1 << PB0))	// PINB0 is now High (Rising Edge)
		{		
			// Set LL to LOW / Low-Imp
			DDRD |= (1<<DDD2);
			PORTD &= ~(1<<PORTD2);
		}
		else // PINB0 is now Low (Falling Edge)
		{
			// Set LL to High (then High-Imp)
			PORTD &= ~(1<<PORTD2);
			LLresetCounter();
			LLstartCounter();
			DDRD &= ~(1<<DDD2);
			
			EIFR |= (1<<INTF0);				// Clear INT0 Flag
			EIMSK |= (1<<INT0);				// Enable INT0, wait for low pulse from esc
		}
		
    }
}