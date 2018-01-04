/*
 * sPort.h
 *
 * Created: 29.12.2015 20:52:53
 *  Author: lukas
 
 RX		->	PD0
 TX		->	PD1
 
 Needs inverter / half duplex
 
8XR (November 2013 firmware X8R_131105.frk) polling is observed to request data for 28 different sensor IDs in the following sequence: 
0x00, 0xA1, 0x22, 0x83, 0xE4, 0x45, 0xC6, 0x67, 0x48, 0xE9, 0x6A, 0xCB, 0xAC, 0x0D, 0x8E, 0x2F, 0xD0, 0x71, 0xF2, 0x53, 0x34, 0x95, 0x16, 0xB7, 0x98, 0x39, 0xBA, 0x1B
 
ID OpenTX	1     2     3     4     5     6     7     8     9     10    11    12    13    14    15    16    17    18    19    20    21    22    23    24    25    26    27    28
ID FrSky	0x00, 0xA1, 0x22, 0x83, 0xE4, 0x45, 0xC6, 0x67, 0x48, 0xE9, 0x6A, 0xCB, 0xAC, 0x0D, 0x8E, 0x2F, 0xD0, 0x71, 0xF2, 0x53, 0x34, 0x95, 0x16, 0xB7, 0x98, 0x39, 0xBA, 0x1B
 */ 


void sPortInit();
uint8_t sPortReadByteReady();
uint8_t sPortReadByte();
void sPortSendByte(uint8_t data);
void sPortSendCRC();
void sPortSendPacket(uint16_t sensorID, uint32_t sensorValue);

uint8_t sPortSensorID(uint8_t openTXSensorID);
/* valid values for openTXSensorID are 1 through 28, used by the receiver itself 25 / 27 */

short crc;	// crc buffer for s.Port

#define SPORT_HEADER_REQUEST	0x7E

// FrSky new DATA IDs (2 bytes)
#define RSSI_ID                 0xf101
#define ADC1_ID                 0xf102
#define ADC2_ID                 0xf103
#define BATT_ID                 0xf104
#define SWR_ID                  0xf105
#define T1_FIRST_ID             0x0400
#define T1_LAST_ID              0x040f
#define T2_FIRST_ID             0x0410
#define T2_LAST_ID              0x041f
#define RPM_FIRST_ID            0x0500
#define RPM_LAST_ID             0x050f
#define FUEL_FIRST_ID           0x0600
#define FUEL_LAST_ID            0x060f
#define ALT_FIRST_ID            0x0100
#define ALT_LAST_ID             0x010f
#define VARIO_FIRST_ID          0x0110
#define VARIO_LAST_ID           0x011f
#define ACCX_FIRST_ID           0x0700
#define ACCX_LAST_ID            0x070f
#define ACCY_FIRST_ID           0x0710
#define ACCY_LAST_ID            0x071f
#define ACCZ_FIRST_ID           0x0720
#define ACCZ_LAST_ID            0x072f
#define CURR_FIRST_ID           0x0200
#define CURR_LAST_ID            0x020f
#define VFAS_FIRST_ID           0x0210
#define VFAS_LAST_ID            0x021f
#define CELLS_FIRST_ID          0x0300
#define CELLS_LAST_ID           0x030f
#define GPS_LONG_LATI_FIRST_ID  0x0800
#define GPS_LONG_LATI_LAST_ID   0x080f
#define GPS_ALT_FIRST_ID        0x0820
#define GPS_ALT_LAST_ID         0x082f
#define GPS_SPEED_FIRST_ID      0x0830
#define GPS_SPEED_LAST_ID       0x083f
#define GPS_COURS_FIRST_ID      0x0840
#define GPS_COURS_LAST_ID       0x084f
#define GPS_TIME_DATE_FIRST_ID  0x0850 
#define GPS_TIME_DATE_LAST_ID   0x085f 

/*
Type_ID	Description		Unit	Data value
0x0110	vario			0.01m/s	int32
0x0200	current			0.1A	uint32
0x0210	voltage			0.01V	uint32
0x0500	RPM				1 rpm	uint32
0x0600	capacity used	1 mah	uint32
0x0100	altitude		1m		int32
0x0830	gps speed		1 km/h	uint32
*/