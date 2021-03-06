EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:LL2FRsky-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "LinkLive2sPort"
Date "2017-12-06"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA88PA-AU U2
U 1 1 5A27905A
P 4250 2950
F 0 "U2" H 3500 4200 50  0000 L BNN
F 1 "ATMEGA88PA-AU" H 4650 1550 50  0000 L BNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 4250 2950 50  0001 C CIN
F 3 "" H 4250 2950 50  0001 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A279789
P 6800 3250
F 0 "R2" V 6880 3250 50  0000 C CNN
F 1 "4.7k" V 6800 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6730 3250 50  0001 C CNN
F 3 "" H 6800 3250 50  0001 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A279A75
P 8050 3450
F 0 "R6" V 8130 3450 50  0000 C CNN
F 1 "1k" V 8050 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7980 3450 50  0001 C CNN
F 3 "" H 8050 3450 50  0001 C CNN
	1    8050 3450
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5A279A92
P 7750 3700
F 0 "R4" V 7830 3700 50  0000 C CNN
F 1 "1k" V 7750 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7680 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5A279B95
P 8600 3900
F 0 "R7" V 8680 3900 50  0000 C CNN
F 1 "1k" V 8600 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 3900 50  0001 C CNN
F 3 "" H 8600 3900 50  0001 C CNN
	1    8600 3900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A279BDE
P 7300 3700
F 0 "R3" V 7380 3700 50  0000 C CNN
F 1 "10k" V 7300 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5A279E27
P 6800 4100
F 0 "#PWR01" H 6800 3850 50  0001 C CNN
F 1 "GND" H 6800 3950 50  0000 C CNN
F 2 "" H 6800 4100 50  0001 C CNN
F 3 "" H 6800 4100 50  0001 C CNN
	1    6800 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A279E56
P 8050 4150
F 0 "#PWR02" H 8050 3900 50  0001 C CNN
F 1 "GND" H 8050 4000 50  0000 C CNN
F 2 "" H 8050 4150 50  0001 C CNN
F 3 "" H 8050 4150 50  0001 C CNN
	1    8050 4150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A279EAF
P 6800 3050
F 0 "#PWR03" H 6800 2900 50  0001 C CNN
F 1 "VCC" H 6800 3200 50  0000 C CNN
F 2 "" H 6800 3050 50  0001 C CNN
F 3 "" H 6800 3050 50  0001 C CNN
	1    6800 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A279ED5
P 8050 3150
F 0 "#PWR04" H 8050 3000 50  0001 C CNN
F 1 "VCC" H 8050 3300 50  0000 C CNN
F 2 "" H 8050 3150 50  0001 C CNN
F 3 "" H 8050 3150 50  0001 C CNN
	1    8050 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3050 6800 3100
Wire Wire Line
	6800 3400 6800 3500
Wire Wire Line
	7100 3700 7150 3700
Wire Wire Line
	7450 3700 7600 3700
Wire Wire Line
	7900 3700 8050 3700
Wire Wire Line
	8050 3700 8050 3600
Wire Wire Line
	8050 3150 8050 3300
Wire Wire Line
	8350 3900 8450 3900
Wire Wire Line
	8050 4100 8050 4150
Wire Wire Line
	6800 3900 6800 4100
Wire Wire Line
	5250 3450 6800 3450
Connection ~ 6800 3450
Wire Wire Line
	5250 3550 6400 3550
Wire Wire Line
	6400 3550 6400 4600
Wire Wire Line
	6400 4600 8750 4600
Wire Wire Line
	8750 4600 8750 3900
Text GLabel 5550 3650 2    60   Input ~ 0
LL
Text GLabel 5250 1600 1    60   Input ~ 0
RCin
Text GLabel 7500 3500 1    60   Input ~ 0
s.Port
Wire Wire Line
	7500 3500 7500 3700
Connection ~ 7500 3700
Wire Wire Line
	5250 3650 5550 3650
$Comp
L R R1
U 1 1 5A27A92A
P 6700 1150
F 0 "R1" V 6780 1150 50  0000 C CNN
F 1 "1k" V 6700 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6630 1150 50  0001 C CNN
F 3 "" H 6700 1150 50  0001 C CNN
	1    6700 1150
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5A27A97E
P 6450 1500
F 0 "J1" H 6450 1700 50  0000 C CNN
F 1 "Conn_01x03" V 6550 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6450 1500 50  0001 C CNN
F 3 "" H 6450 1500 50  0001 C CNN
	1    6450 1500
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5A27AA4F
P 7700 1500
F 0 "J2" H 7700 1700 50  0000 C CNN
F 1 "Conn_01x03" V 7800 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7700 1500 50  0001 C CNN
F 3 "" H 7700 1500 50  0001 C CNN
	1    7700 1500
	0    -1   1    0   
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5A27AAB6
P 9100 1450
F 0 "J3" H 9100 1650 50  0000 C CNN
F 1 "Conn_01x03" V 9200 1400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9100 1450 50  0001 C CNN
F 3 "" H 9100 1450 50  0001 C CNN
	1    9100 1450
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A27B13C
P 6050 1300
F 0 "#PWR05" H 6050 1050 50  0001 C CNN
F 1 "GND" H 6050 1150 50  0000 C CNN
F 2 "" H 6050 1300 50  0001 C CNN
F 3 "" H 6050 1300 50  0001 C CNN
	1    6050 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A27B16E
P 7400 1300
F 0 "#PWR06" H 7400 1050 50  0001 C CNN
F 1 "GND" H 7400 1150 50  0000 C CNN
F 2 "" H 7400 1300 50  0001 C CNN
F 3 "" H 7400 1300 50  0001 C CNN
	1    7400 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A27B1A0
P 8800 1250
F 0 "#PWR07" H 8800 1000 50  0001 C CNN
F 1 "GND" H 8800 1100 50  0000 C CNN
F 2 "" H 8800 1250 50  0001 C CNN
F 3 "" H 8800 1250 50  0001 C CNN
	1    8800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1300 6350 1300
Wire Wire Line
	7400 1300 7600 1300
Wire Wire Line
	8800 1250 9000 1250
Wire Wire Line
	7550 850  7550 1100
Wire Wire Line
	7550 1100 7700 1100
Wire Wire Line
	7700 1100 7700 1300
Wire Wire Line
	7850 850  7850 1300
Wire Wire Line
	7850 1300 7800 1300
Wire Wire Line
	6300 850  6300 1100
Wire Wire Line
	6300 1100 6450 1100
Wire Wire Line
	6450 1100 6450 1300
Wire Wire Line
	6550 950  6550 1300
Text GLabel 9300 1150 1    60   Input ~ 0
s.Port
Wire Wire Line
	9200 1250 9200 1150
Wire Wire Line
	9200 1150 9300 1150
Text GLabel 6550 950  1    60   Input ~ 0
LL
Text GLabel 7850 850  1    60   Input ~ 0
RCin
$Comp
L C C2
U 1 1 5A27B5C9
P 1850 2850
F 0 "C2" H 1875 2950 50  0000 L CNN
F 1 "0.1uF" H 1875 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1888 2700 50  0001 C CNN
F 3 "" H 1850 2850 50  0001 C CNN
	1    1850 2850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5A27B946
P 2450 2850
F 0 "C3" H 2475 2950 50  0000 L CNN
F 1 "0.1uF" H 2475 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2488 2700 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
	1    2450 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A27B986
P 2450 3000
F 0 "#PWR08" H 2450 2750 50  0001 C CNN
F 1 "GND" H 2450 2850 50  0000 C CNN
F 2 "" H 2450 3000 50  0001 C CNN
F 3 "" H 2450 3000 50  0001 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A27B9BE
P 1850 3000
F 0 "#PWR09" H 1850 2750 50  0001 C CNN
F 1 "GND" H 1850 2850 50  0000 C CNN
F 2 "" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5A27B9F6
P 2450 2700
F 0 "#PWR010" H 2450 2550 50  0001 C CNN
F 1 "VCC" H 2450 2850 50  0000 C CNN
F 2 "" H 2450 2700 50  0001 C CNN
F 3 "" H 2450 2700 50  0001 C CNN
	1    2450 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5A27BA2E
P 1850 2700
F 0 "#PWR011" H 1850 2550 50  0001 C CNN
F 1 "VCC" H 1850 2850 50  0000 C CNN
F 2 "" H 1850 2700 50  0001 C CNN
F 3 "" H 1850 2700 50  0001 C CNN
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5A27BA66
P 3350 1700
F 0 "#PWR012" H 3350 1550 50  0001 C CNN
F 1 "VCC" H 3350 1850 50  0000 C CNN
F 2 "" H 3350 1700 50  0001 C CNN
F 3 "" H 3350 1700 50  0001 C CNN
	1    3350 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5A27BA9E
P 3350 4250
F 0 "#PWR013" H 3350 4000 50  0001 C CNN
F 1 "GND" H 3350 4100 50  0000 C CNN
F 2 "" H 3350 4250 50  0001 C CNN
F 3 "" H 3350 4250 50  0001 C CNN
	1    3350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3950 3350 4250
Wire Wire Line
	3350 1700 3350 2150
Connection ~ 3350 1950
$Comp
L LM1117-3.3 U1
U 1 1 5A27C17C
P 2250 1500
F 0 "U1" H 2100 1625 50  0000 C CNN
F 1 "LM1117-3.3" H 2250 1625 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 2250 1500 50  0001 C CNN
F 3 "" H 2250 1500 50  0001 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR014
U 1 1 5A27C4E1
P 2900 1500
F 0 "#PWR014" H 2900 1350 50  0001 C CNN
F 1 "VCC" H 2900 1650 50  0000 C CNN
F 2 "" H 2900 1500 50  0001 C CNN
F 3 "" H 2900 1500 50  0001 C CNN
	1    2900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1500 2900 1500
$Comp
L +BATT #PWR015
U 1 1 5A27C5C7
P 1500 1450
F 0 "#PWR015" H 1500 1300 50  0001 C CNN
F 1 "+BATT" H 1500 1590 50  0000 C CNN
F 2 "" H 1500 1450 50  0001 C CNN
F 3 "" H 1500 1450 50  0001 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR016
U 1 1 5A27C609
P 6300 850
F 0 "#PWR016" H 6300 700 50  0001 C CNN
F 1 "+BATT" H 6300 990 50  0000 C CNN
F 2 "" H 6300 850 50  0001 C CNN
F 3 "" H 6300 850 50  0001 C CNN
	1    6300 850 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR017
U 1 1 5A27C781
P 7550 850
F 0 "#PWR017" H 7550 700 50  0001 C CNN
F 1 "+BATT" H 7550 990 50  0000 C CNN
F 2 "" H 7550 850 50  0001 C CNN
F 3 "" H 7550 850 50  0001 C CNN
	1    7550 850 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR018
U 1 1 5A27C7BC
P 9100 1050
F 0 "#PWR018" H 9100 900 50  0001 C CNN
F 1 "+BATT" H 9100 1190 50  0000 C CNN
F 2 "" H 9100 1050 50  0001 C CNN
F 3 "" H 9100 1050 50  0001 C CNN
	1    9100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1450 1500 1500
Wire Wire Line
	1500 1500 1950 1500
$Comp
L VCC #PWR019
U 1 1 5A27D315
P 6850 1100
F 0 "#PWR019" H 6850 950 50  0001 C CNN
F 1 "VCC" H 6850 1250 50  0000 C CNN
F 2 "" H 6850 1100 50  0001 C CNN
F 3 "" H 6850 1100 50  0001 C CNN
	1    6850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1100 6850 1150
Connection ~ 6550 1150
$Comp
L R R5
U 1 1 5A27D911
P 8000 1100
F 0 "R5" V 8080 1100 50  0000 C CNN
F 1 "1k" V 8000 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 1100 50  0001 C CNN
F 3 "" H 8000 1100 50  0001 C CNN
	1    8000 1100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR020
U 1 1 5A27D98D
P 8200 1050
F 0 "#PWR020" H 8200 900 50  0001 C CNN
F 1 "VCC" H 8200 1200 50  0000 C CNN
F 2 "" H 8200 1050 50  0001 C CNN
F 3 "" H 8200 1050 50  0001 C CNN
	1    8200 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1100 8200 1100
Wire Wire Line
	8200 1100 8200 1050
Connection ~ 7850 1100
$Comp
L CP C4
U 1 1 5A27DAE6
P 2800 1650
F 0 "C4" H 2825 1750 50  0000 L CNN
F 1 "100uF" H 2825 1550 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-C_EIA-6032-28_Hand" H 2838 1500 50  0001 C CNN
F 3 "" H 2800 1650 50  0001 C CNN
	1    2800 1650
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5A27DB8E
P 1600 1650
F 0 "C1" H 1625 1750 50  0000 L CNN
F 1 "10uF" H 1625 1550 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-C_EIA-6032-28_Hand" H 1638 1500 50  0001 C CNN
F 3 "" H 1600 1650 50  0001 C CNN
	1    1600 1650
	1    0    0    -1  
$EndComp
Connection ~ 3350 4050
Connection ~ 3350 4150
Connection ~ 1600 1500
Connection ~ 2800 1500
Connection ~ 3350 1850
$Comp
L GND #PWR021
U 1 1 5A27FBEE
P 1850 3000
F 0 "#PWR021" H 1850 2750 50  0001 C CNN
F 1 "GND" H 1850 2850 50  0000 C CNN
F 2 "" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Connection ~ 2250 1800
Wire Wire Line
	1600 1800 2800 1800
Wire Wire Line
	9100 1050 9100 1250
$Comp
L GND #PWR022
U 1 1 5A280011
P 2250 1900
F 0 "#PWR022" H 2250 1650 50  0001 C CNN
F 1 "GND" H 2250 1750 50  0000 C CNN
F 2 "" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1800 2250 1900
$Comp
L BC847 Q1
U 1 1 5A28209A
P 6900 3700
F 0 "Q1" H 7100 3775 50  0000 L CNN
F 1 "BC847" H 7100 3700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 7100 3625 50  0001 L CIN
F 3 "" H 6900 3700 50  0001 L CNN
	1    6900 3700
	-1   0    0    -1  
$EndComp
$Comp
L BC847 Q2
U 1 1 5A2821CE
P 8150 3900
F 0 "Q2" H 8350 3975 50  0000 L CNN
F 1 "BC847" H 8350 3900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8350 3825 50  0001 L CIN
F 3 "" H 8150 3900 50  0001 L CNN
	1    8150 3900
	-1   0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A282CB5
P 5800 2650
F 0 "Y1" H 5800 2800 50  0000 C CNN
F 1 "16MHz" H 5800 2500 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_5032-2pin_5.0x3.2mm_HandSoldering" H 5800 2650 50  0001 C CNN
F 3 "" H 5800 2650 50  0001 C CNN
	1    5800 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2500 5800 2500
Wire Wire Line
	5500 2800 5800 2800
$Comp
L C C6
U 1 1 5A28EB4B
P 6250 2850
F 0 "C6" H 6275 2950 50  0000 L CNN
F 1 "15pF" H 6275 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6288 2700 50  0001 C CNN
F 3 "" H 6250 2850 50  0001 C CNN
	1    6250 2850
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 5A28EC80
P 6250 2450
F 0 "C5" H 6275 2550 50  0000 L CNN
F 1 "15pF" H 6275 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6288 2300 50  0001 C CNN
F 3 "" H 6250 2450 50  0001 C CNN
	1    6250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2450 5800 2450
Wire Wire Line
	5800 2450 5800 2500
Wire Wire Line
	6400 2450 6400 2850
$Comp
L GND #PWR023
U 1 1 5A28EF2F
P 6450 2950
F 0 "#PWR023" H 6450 2700 50  0001 C CNN
F 1 "GND" H 6450 2800 50  0000 C CNN
F 2 "" H 6450 2950 50  0001 C CNN
F 3 "" H 6450 2950 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2850 6450 2850
Wire Wire Line
	6450 2850 6450 2950
Wire Wire Line
	6100 2850 5800 2850
Wire Wire Line
	5800 2850 5800 2800
$Comp
L R R8
U 1 1 5A28F568
P 5500 4100
F 0 "R8" V 5580 4100 50  0000 C CNN
F 1 "1k" V 5500 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0001 C CNN
	1    5500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3750 5700 3750
Wire Wire Line
	5500 3850 5500 3950
$Comp
L GND #PWR024
U 1 1 5A28F67D
P 5500 4550
F 0 "#PWR024" H 5500 4300 50  0001 C CNN
F 1 "GND" H 5500 4400 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5A28F6B6
P 5500 4400
F 0 "D1" H 5500 4500 50  0000 C CNN
F 1 "LED" H 5500 4300 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5500 4400 50  0001 C CNN
F 3 "" H 5500 4400 50  0001 C CNN
	1    5500 4400
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 5A28FE6D
P 5700 4000
F 0 "R9" V 5780 4000 50  0000 C CNN
F 1 "1k" V 5700 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5630 4000 50  0001 C CNN
F 3 "" H 5700 4000 50  0001 C CNN
	1    5700 4000
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5A28FEE5
P 5700 4300
F 0 "D2" H 5700 4400 50  0000 C CNN
F 1 "LED" H 5700 4200 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5700 4300 50  0001 C CNN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5700 4300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 5A28FF50
P 5700 4450
F 0 "#PWR025" H 5700 4200 50  0001 C CNN
F 1 "GND" H 5700 4300 50  0000 C CNN
F 2 "" H 5700 4450 50  0001 C CNN
F 3 "" H 5700 4450 50  0001 C CNN
	1    5700 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3850 5500 3850
Wire Wire Line
	5700 3750 5700 3850
$Comp
L Conn_01x01 J4
U 1 1 5A2900BD
P 5600 1850
F 0 "J4" H 5600 1950 50  0000 C CNN
F 1 "Conn_01x01" H 5600 1750 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5600 1850 50  0001 C CNN
F 3 "" H 5600 1850 50  0001 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J7
U 1 1 5A29027A
P 5800 1950
F 0 "J7" H 5800 2050 50  0000 C CNN
F 1 "Conn_01x01" H 5800 1850 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5800 1950 50  0001 C CNN
F 3 "" H 5800 1950 50  0001 C CNN
	1    5800 1950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5A29034D
P 5600 2050
F 0 "J5" H 5600 2150 50  0000 C CNN
F 1 "Conn_01x01" H 5600 1950 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5600 2050 50  0001 C CNN
F 3 "" H 5600 2050 50  0001 C CNN
	1    5600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1600 5250 1850
$Comp
L Conn_01x01 J8
U 1 1 5A2905CE
P 5800 2150
F 0 "J8" H 5800 2250 50  0000 C CNN
F 1 "Conn_01x01" H 5800 2050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5800 2150 50  0001 C CNN
F 3 "" H 5800 2150 50  0001 C CNN
	1    5800 2150
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J6
U 1 1 5A290645
P 5600 2250
F 0 "J6" H 5600 2350 50  0000 C CNN
F 1 "Conn_01x01" H 5600 2150 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 5600 2250 50  0001 C CNN
F 3 "" H 5600 2250 50  0001 C CNN
	1    5600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2350 5400 2350
Wire Wire Line
	5400 2350 5400 2250
Wire Wire Line
	5250 2250 5350 2250
Wire Wire Line
	5350 2250 5350 2150
Wire Wire Line
	5350 2150 5600 2150
Wire Wire Line
	5250 2150 5300 2150
Wire Wire Line
	5300 2150 5300 2050
Wire Wire Line
	5300 2050 5400 2050
Wire Wire Line
	5250 2050 5250 2000
Wire Wire Line
	5250 1950 5400 1950
Wire Wire Line
	5400 1950 5400 1850
Wire Wire Line
	5250 2450 5500 2450
Wire Wire Line
	5500 2450 5500 2500
Wire Wire Line
	5250 2550 5500 2550
Wire Wire Line
	5500 2550 5500 2800
Wire Wire Line
	5250 2000 5500 2000
Wire Wire Line
	5500 2000 5500 1950
Wire Wire Line
	5500 1950 5600 1950
$EndSCHEMATC
