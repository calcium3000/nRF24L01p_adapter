EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "nRF24L01+ Adapter for Raspberry Pi"
Date "2017-06-01"
Rev "A"
Comp ""
Comment1 "By Calvin A. Cherry >> calvincherry@gmail.com"
Comment2 "Released under the TAPR Open Hardware License >> http://tapr.org/ohl.html"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X04 P1
U 1 1 5918EA77
P 4450 2450
F 0 "P1" H 4350 2800 50  0000 L CNN
F 1 "2x4" H 4350 2700 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04" H 4450 1250 50  0001 C CNN
F 3 "" H 4450 1250 50  0000 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P2
U 1 1 5918EADE
P 4450 4500
F 0 "P2" H 4350 4850 50  0000 L CNN
F 1 "2x4" H 4350 4750 50  0000 L CNN
F 2 "nRF24L01p_adapter:Socket_Strip_Straight_2x04_mirrored" H 4450 3300 50  0001 C CNN
F 3 "" H 4450 3300 50  0000 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5918EB3F
P 6100 3450
F 0 "C1" H 6200 3500 50  0000 L CNN
F 1 "10uF" H 6200 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6138 3300 50  0001 C CNN
F 3 "" H 6100 3450 50  0000 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR01
U 1 1 5918EBFC
P 6100 3200
F 0 "#PWR01" H 6100 3050 50  0001 C CNN
F 1 "VDD" H 6100 3350 50  0000 C CNN
F 2 "" H 6100 3200 50  0000 C CNN
F 3 "" H 6100 3200 50  0000 C CNN
	1    6100 3200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 5918EC28
P 4100 2200
F 0 "#PWR02" H 4100 2050 50  0001 C CNN
F 1 "VDD" H 4100 2350 50  0000 C CNN
F 2 "" H 4100 2200 50  0000 C CNN
F 3 "" H 4100 2200 50  0000 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 5918EC42
P 4800 4250
F 0 "#PWR03" H 4800 4100 50  0001 C CNN
F 1 "VDD" H 4800 4400 50  0000 C CNN
F 2 "" H 4800 4250 50  0000 C CNN
F 3 "" H 4800 4250 50  0000 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5918EC5C
P 6100 3700
F 0 "#PWR04" H 6100 3450 50  0001 C CNN
F 1 "GND" H 6100 3550 50  0000 C CNN
F 2 "" H 6100 3700 50  0000 C CNN
F 3 "" H 6100 3700 50  0000 C CNN
	1    6100 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5918EC76
P 4800 2750
F 0 "#PWR05" H 4800 2500 50  0001 C CNN
F 1 "GND" H 4800 2600 50  0000 C CNN
F 2 "" H 4800 2750 50  0000 C CNN
F 3 "" H 4800 2750 50  0000 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5918EC90
P 4100 4850
F 0 "#PWR06" H 4100 4600 50  0001 C CNN
F 1 "GND" H 4100 4700 50  0000 C CNN
F 2 "" H 4100 4850 50  0000 C CNN
F 3 "" H 4100 4850 50  0000 C CNN
	1    4100 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6100 3600 6100 3700
Wire Wire Line
	6100 3200 6100 3300
Wire Wire Line
	4200 2300 4100 2300
Wire Wire Line
	4100 2300 4100 2200
Wire Wire Line
	4700 2400 4800 2400
Wire Wire Line
	4800 2400 4800 2750
Text GLabel 4000 2400 0    60   Input ~ 0
MOSI
Text GLabel 4000 2500 0    60   Output ~ 0
MISO
Text GLabel 4000 2600 0    60   Input ~ 0
SCK
Wire Wire Line
	4200 2400 4000 2400
Wire Wire Line
	4000 2500 4200 2500
Wire Wire Line
	4000 2600 4200 2600
Text GLabel 4900 2600 2    60   Input ~ 0
~CSN
Text GLabel 4900 2300 2    60   Output ~ 0
~IRQ
Text GLabel 4900 2500 2    60   Output ~ 0
CE
Wire Wire Line
	4900 2500 4700 2500
Wire Wire Line
	4700 2600 4900 2600
Wire Wire Line
	4900 2300 4700 2300
Wire Wire Line
	4700 4350 4800 4350
Wire Wire Line
	4100 4850 4100 4350
Wire Wire Line
	4100 4350 4200 4350
Text GLabel 4000 4450 0    60   Output ~ 0
CE
Text GLabel 4000 4550 0    60   Input ~ 0
SCK
Text GLabel 4000 4650 0    60   Output ~ 0
MISO
Wire Wire Line
	4000 4650 4200 4650
Wire Wire Line
	4200 4550 4000 4550
Wire Wire Line
	4000 4450 4200 4450
Text GLabel 4900 4450 2    60   Input ~ 0
~CSN
Text GLabel 4900 4550 2    60   Input ~ 0
MOSI
Text GLabel 4900 4650 2    60   Output ~ 0
~IRQ
Wire Wire Line
	4900 4650 4700 4650
Wire Wire Line
	4700 4550 4900 4550
Wire Wire Line
	4900 4450 4700 4450
Text Notes 4150 1850 0    60   ~ 0
RASPBERRY PI
Text Notes 4000 3900 0    60   ~ 0
NRF24L01+ RADIO
Wire Wire Line
	4800 4350 4800 4250
$EndSCHEMATC
