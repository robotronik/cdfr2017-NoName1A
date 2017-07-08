EESchema Schematic File Version 2
LIBS:carte-asser-1A-2016-2017-rescue
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
LIBS:robot_1A
LIBS:carte-asser-1A-2016-2017-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR072
U 1 1 589FE6A9
P 2400 1250
F 0 "#PWR072" H 2400 1100 50  0001 C CNN
F 1 "+5V" H 2400 1390 50  0000 C CNN
F 2 "" H 2400 1250 50  0000 C CNN
F 3 "" H 2400 1250 50  0000 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1800 3000 1800
Wire Wire Line
	3000 2000 2400 2000
Wire Wire Line
	2400 2000 2400 2700
$Comp
L GND #PWR073
U 1 1 589FE6CC
P 2400 2700
F 0 "#PWR073" H 2400 2450 50  0001 C CNN
F 1 "GND" H 2400 2550 50  0000 C CNN
F 2 "" H 2400 2700 50  0000 C CNN
F 3 "" H 2400 2700 50  0000 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1900 3000 1900
Wire Wire Line
	1500 1200 1500 1900
Wire Wire Line
	2400 1250 2400 1800
Wire Wire Line
	1500 1200 1200 1200
Text HLabel 1200 1200 0    60   Output ~ 0
c-distance1
Text HLabel 4650 1200 0    60   Output ~ 0
c-distance2
Text HLabel 7950 1150 0    60   Output ~ 0
c-distance3
Text HLabel 1400 4200 0    60   Output ~ 0
c-distance4
Text HLabel 4600 4000 0    60   Output ~ 0
c-distance5
Text HLabel 7950 3900 0    60   Output ~ 0
c-distance6
$Comp
L +5V #PWR074
U 1 1 58A0A933
P 5850 1250
F 0 "#PWR074" H 5850 1100 50  0001 C CNN
F 1 "+5V" H 5850 1390 50  0000 C CNN
F 2 "" H 5850 1250 50  0000 C CNN
F 3 "" H 5850 1250 50  0000 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1800 6450 1800
Wire Wire Line
	6450 2000 5850 2000
Wire Wire Line
	5850 2000 5850 2700
$Comp
L GND #PWR075
U 1 1 58A0A93C
P 5850 2700
F 0 "#PWR075" H 5850 2450 50  0001 C CNN
F 1 "GND" H 5850 2550 50  0000 C CNN
F 2 "" H 5850 2700 50  0000 C CNN
F 3 "" H 5850 2700 50  0000 C CNN
	1    5850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1900 6450 1900
Wire Wire Line
	4950 1200 4950 1900
Wire Wire Line
	5850 1250 5850 1800
Wire Wire Line
	4950 1200 4650 1200
$Comp
L CONN_01X03 P22
U 1 1 58A0A954
P 6650 1900
F 0 "P22" H 6650 2100 50  0000 C CNN
F 1 "dist-capt2" V 6750 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6650 1900 50  0001 C CNN
F 3 "" H 6650 1900 50  0000 C CNN
	1    6650 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR076
U 1 1 58A0AA92
P 9150 1200
F 0 "#PWR076" H 9150 1050 50  0001 C CNN
F 1 "+5V" H 9150 1340 50  0000 C CNN
F 2 "" H 9150 1200 50  0000 C CNN
F 3 "" H 9150 1200 50  0000 C CNN
	1    9150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1750 9750 1750
Wire Wire Line
	9750 1950 9150 1950
Wire Wire Line
	9150 1950 9150 2650
$Comp
L GND #PWR077
U 1 1 58A0AA9B
P 9150 2650
F 0 "#PWR077" H 9150 2400 50  0001 C CNN
F 1 "GND" H 9150 2500 50  0000 C CNN
F 2 "" H 9150 2650 50  0000 C CNN
F 3 "" H 9150 2650 50  0000 C CNN
	1    9150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1850 9750 1850
Wire Wire Line
	8250 1150 8250 1850
Wire Wire Line
	9150 1200 9150 1750
Wire Wire Line
	8250 1150 7950 1150
$Comp
L CONN_01X03 P23
U 1 1 58A0AAB3
P 9950 1850
F 0 "P23" H 9950 2050 50  0000 C CNN
F 1 "dist-capt3" V 10050 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9950 1850 50  0001 C CNN
F 3 "" H 9950 1850 50  0000 C CNN
	1    9950 1850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR078
U 1 1 58A0AD2F
P 9150 3950
F 0 "#PWR078" H 9150 3800 50  0001 C CNN
F 1 "+5V" H 9150 4090 50  0000 C CNN
F 2 "" H 9150 3950 50  0000 C CNN
F 3 "" H 9150 3950 50  0000 C CNN
	1    9150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4500 9750 4500
Wire Wire Line
	9750 4700 9150 4700
Wire Wire Line
	9150 4700 9150 5400
$Comp
L GND #PWR079
U 1 1 58A0AD38
P 9150 5400
F 0 "#PWR079" H 9150 5150 50  0001 C CNN
F 1 "GND" H 9150 5250 50  0000 C CNN
F 2 "" H 9150 5400 50  0000 C CNN
F 3 "" H 9150 5400 50  0000 C CNN
	1    9150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4600 9750 4600
Wire Wire Line
	8250 3900 8250 4600
Wire Wire Line
	9150 3950 9150 4500
Wire Wire Line
	8250 3900 7950 3900
$Comp
L CONN_01X03 P24
U 1 1 58A0AD50
P 9950 4600
F 0 "P24" H 9950 4800 50  0000 C CNN
F 1 "dist-capt6" V 10050 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 9950 4600 50  0001 C CNN
F 3 "" H 9950 4600 50  0000 C CNN
	1    9950 4600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR080
U 1 1 58A0AEEE
P 5800 4050
F 0 "#PWR080" H 5800 3900 50  0001 C CNN
F 1 "+5V" H 5800 4190 50  0000 C CNN
F 2 "" H 5800 4050 50  0000 C CNN
F 3 "" H 5800 4050 50  0000 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 6400 4600
Wire Wire Line
	6400 4800 5800 4800
Wire Wire Line
	5800 4800 5800 5500
$Comp
L GND #PWR081
U 1 1 58A0AEF7
P 5800 5500
F 0 "#PWR081" H 5800 5250 50  0001 C CNN
F 1 "GND" H 5800 5350 50  0000 C CNN
F 2 "" H 5800 5500 50  0000 C CNN
F 3 "" H 5800 5500 50  0000 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4700 6400 4700
Wire Wire Line
	4900 4000 4900 4700
Wire Wire Line
	5800 4050 5800 4600
Wire Wire Line
	4900 4000 4600 4000
$Comp
L CONN_01X03 P21
U 1 1 58A0AF0F
P 6600 4700
F 0 "P21" H 6600 4900 50  0000 C CNN
F 1 "dist-capt5" V 6700 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6600 4700 50  0001 C CNN
F 3 "" H 6600 4700 50  0000 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR082
U 1 1 58A0B0DD
P 2600 4250
F 0 "#PWR082" H 2600 4100 50  0001 C CNN
F 1 "+5V" H 2600 4390 50  0000 C CNN
F 2 "" H 2600 4250 50  0000 C CNN
F 3 "" H 2600 4250 50  0000 C CNN
	1    2600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 3200 4800
Wire Wire Line
	3200 5000 2600 5000
Wire Wire Line
	2600 5000 2600 5700
$Comp
L GND #PWR083
U 1 1 58A0B0E6
P 2600 5700
F 0 "#PWR083" H 2600 5450 50  0001 C CNN
F 1 "GND" H 2600 5550 50  0000 C CNN
F 2 "" H 2600 5700 50  0000 C CNN
F 3 "" H 2600 5700 50  0000 C CNN
	1    2600 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4900 3200 4900
Wire Wire Line
	1700 4200 1700 4900
Wire Wire Line
	2600 4250 2600 4800
Wire Wire Line
	1700 4200 1400 4200
$Comp
L CONN_01X03 P20
U 1 1 58A0B0FE
P 3400 4900
F 0 "P20" H 3400 5100 50  0000 C CNN
F 1 "dist-capt4" V 3500 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3400 4900 50  0001 C CNN
F 3 "" H 3400 4900 50  0000 C CNN
	1    3400 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P19
U 1 1 58A09E89
P 3200 1900
F 0 "P19" H 3200 2100 50  0000 C CNN
F 1 "dist-capt1" V 3300 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3200 1900 50  0001 C CNN
F 3 "" H 3200 1900 50  0000 C CNN
	1    3200 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
