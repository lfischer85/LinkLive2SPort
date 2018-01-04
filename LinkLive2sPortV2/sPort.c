/*
 * sPort.c
 *
 * Created: 29.12.2015 20:53:06
  */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

#include "sPort.h"

const uint8_t FrSkySensorId[28] PROGMEM = {0x00, 0xA1, 0x22, 0x83, 0xE4, 0x45, 0xC6, 0x67, 0x48, 0xE9, 0x6A, 0xCB, 0xAC, 0x0D, 0x8E, 0x2F, 0xD0, 0x71, 0xF2, 0x53, 0x34, 0x95, 0x16, 0xB7, 0x98, 0x39, 0xBA, 0x1B};

void sPortInit()
{
	/* Set baud rate 57600 (2.1% error on 8Mhz) */
	UBRR0L = 16;
	UCSR0A |= (1<<U2X0);
	/* Enable receiver and transmitter */
	UCSR0B = (1<<RXEN0) | (1<<TXEN0);
	/* Set frame format: 8data, 1stop bit */
	UCSR0C = (1<<UCSZ00) | (1<<UCSZ01);
}

uint8_t sPortReadByte()
{
	/* Wait for data to be received */
	//while ( !(UCSR0A & (1<<RXC0)) )
	;
	/* Get and return received data from buffer */
	return UDR0;
}

uint8_t sPortReadByteReady()
{
	if ((UCSR0A & (1<<RXC0)) == 0)
	{
		return 0;
	}
	/* 0 if no data received */
	return 1;
}

void sPortSendByte(uint8_t data)
{
	/* Wait for empty transmit buffer */
	while ( !( UCSR0A & (1<<UDRE0)) )
	;
	/* Put data into buffer, sends the data */
	UDR0 = data;
	
	// CRC Update
	crc += data;		// 0-1FF
	crc += crc >> 8;	//0-100
	crc &= 0x00ff;
	crc += crc >> 8;	//0-0FF
	crc &= 0x00ff;
}

void sPortSendCRC()
{
	sPortSendByte(0xFF-crc);
	crc = 0;	// reset CRC
}

void sPortSendPacket(uint16_t sensorID, uint32_t sensorValue)
{
	sPortSendByte(0x10);	// Header DataFrame
	uint8_t *bytes = (uint8_t*) &sensorID;
	sPortSendByte(bytes[0]);
	sPortSendByte(bytes[1]);
	bytes = (uint8_t*) &sensorValue;
	sPortSendByte(bytes[0]);
	sPortSendByte(bytes[1]);
	sPortSendByte(bytes[2]);
	sPortSendByte(bytes[3]);
	sPortSendCRC();
}

uint8_t sPortSensorID(uint8_t openTXSensorID)
{
	// sanity check openTXSensorID (min 1, max.28)
	if (openTXSensorID > 28)
	{
		openTXSensorID = 28;
	}
	else if (openTXSensorID < 1)
	{
		openTXSensorID = 1;
	}

	return pgm_read_byte(&(FrSkySensorId[openTXSensorID-1]));
}