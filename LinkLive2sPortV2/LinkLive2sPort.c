/*
 * LinkLive2sPort.c
 *
 * Created: 26.12.2015 09:06:38
 *  Author: lfischer85
 
 
 RX		->	PD0
 TX		->	PD1
 LL		->	PD2 (INT0)
 RcIN	->	PB0	(PCInt0)
 
 LED1	->	PD4
 LED2	->	PD3
 
 TODO:
 -better use of calibration data
 -add sensor "power %"
   
 */ 
#include <avr/interrupt.h>
#include <avr/io.h>

#include "sPort.h"
#include "LinkLive.h"

/*  Main  */
int main(void)
{
	uint8_t subSensorCounter;
	uint16_t LED1;
	uint16_t LED2;
	uint8_t rxData, rxLast;
	uint8_t sensorID = 10;

	/* Set led ports as output */
	DDRD |= (1<<PORTD3);
	DDRD |= (1<<PORTD4);
	
	/* Set PortB5 as input with Pullup */
	DDRB &= ~(1<<PORTB5);
	PORTB |= (1<<PORTB5);
	

	LLinit();
	sPortInit();

	/*  Init Global  */
	sei();			// Enable all Interrupts
	
	// set SensorID = 11 if PB5 shorted to GND
	if( !(PINB & (1<<PINB5)) )
	{
		sensorID = 11;
	}
	
    while(1)
    {
		if (LLPacketReadyFlag)
		{
			// LinkLive data received
			LED1 = 30000;
		}
		
		if(sPortReadByteReady())
		{		
			rxData=sPortReadByte();
			if ( (rxData==sPortSensorID(sensorID)) && (rxLast==SPORT_HEADER_REQUEST))
			{
				// SPORT data received
				LED2 = 30000;
			}
			
			if ( (rxData==sPortSensorID(sensorID)) && (rxLast==SPORT_HEADER_REQUEST) && LLPacketReadyFlag)
			{
				switch(subSensorCounter)
				{
					case 0:
					sPortSendPacket(VFAS_FIRST_ID,LLValueArray[1]/10);		// Voltage
					break;
				
					case 1:
					sPortSendPacket(VFAS_FIRST_ID+1,LLValueArray[2]/10);	// Ripple Voltage
					break;
				
					case 2:
					sPortSendPacket(CURR_FIRST_ID,LLValueArray[3]/100);		// Current
					break;
				
					case 3:
					sPortSendPacket(VFAS_FIRST_ID+2,LLValueArray[7]/10);	// BEC Voltage
					break;
				
					case 4:
					sPortSendPacket(CURR_FIRST_ID+1,LLValueArray[8]/100);	// BEC Current
					break;
				
					case 5:
					sPortSendPacket(T1_FIRST_ID,LLValueArray[9]);			// Temperature
					break;
				
					case 6:
					sPortSendPacket(RPM_FIRST_ID,LLValueArray[6]);			// Electrical RPM
					break;
				
				}	
				if (subSensorCounter == 6)
				{
					subSensorCounter = 0;
					LLPacketReadyFlag = 0; // only send data again when new data available
				}
				else
				{
					subSensorCounter++;
				}
			}  
			rxLast = rxData;
		}
		// check / set led status
		if (LED1 > 0)
		{
			LED1 --;
			PORTD |= (1<<PIND3);
		}
		else
		{
			PORTD &= ~(1<<PIND3);
		}			
		if (LED2 > 0)
		{
			LED2 --;
			PORTD |= (1<<PIND4);
		}
		else
		{
			PORTD &= ~(1<<PIND4);
		}
    }
}
