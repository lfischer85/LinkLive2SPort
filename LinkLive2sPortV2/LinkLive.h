/*
 * LinkLive.h
 *
 * Created: 29.12.2015 20:57:42
 *  Author: lukas
 
 LL		->	PD2 (INT0)		->	to link live enabled esc
 RcIN	->	PB0	(PCInt0)	->	to receiver ppm channel
 
 */ 



/*  LinkLive  */
volatile uint8_t portbhistory;     // default is high because the pull-up
volatile uint8_t LLItemCounter;
volatile uint8_t LLPacketReadyFlag;
volatile uint32_t LLItemArray[11];
volatile uint32_t LLValueArray[11];

void LLinit();
void LLstartCounter();
void LLstopCounter();
void LLresetCounter();
uint16_t LLreadCounter();
void LLProcessFrame();

/* LinkLive Data:
	Voltage
	Ripple Voltage
	Current
	Throttle
	Output Power
	RPM
	BEC Voltage
	BEC Current
	Temperature (Linear)
	Temperature (NTC)
*/