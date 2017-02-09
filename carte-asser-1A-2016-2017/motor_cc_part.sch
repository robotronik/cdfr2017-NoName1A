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
LIBS:robot_1A
LIBS:carte-asser-1A-cache
LIBS:carte-asser-1A-2016-2017-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
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
L H-bridge H?
U 1 1 58937B34
P 5800 4250
F 0 "H?" H 6950 4550 60  0000 C CNN
F 1 "H-bridge" H 7000 4950 60  0000 C CNN
F 2 "" H 8150 6350 60  0001 C CNN
F 3 "" H 8150 6350 60  0001 C CNN
	1    5800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3500 5800 3500
Wire Wire Line
	5800 3500 5800 3100
Wire Wire Line
	5950 3600 5450 3600
Wire Wire Line
	5450 3600 5450 3100
Wire Wire Line
	5950 3800 5750 3800
Wire Wire Line
	5750 3800 5750 3900
Wire Wire Line
	5750 3900 5950 3900
$Comp
L GND #PWR019
U 1 1 58937BDB
P 5750 3900
F 0 "#PWR019" H 5750 3650 50  0001 C CNN
F 1 "GND" H 5750 3750 50  0000 C CNN
F 2 "" H 5750 3900 50  0000 C CNN
F 3 "" H 5750 3900 50  0000 C CNN
	1    5750 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 4000 5950 4000
Wire Wire Line
	5950 4200 5600 4200
Wire Wire Line
	5600 4200 5600 4850
Text HLabel 5800 3100 1    60   Input ~ 0
active-cc
Text HLabel 5450 3100 1    60   Input ~ 0
speed-cc
Text HLabel 5500 4100 0    60   Input ~ 0
dir-cc
Wire Wire Line
	3050 3150 4600 3150
Wire Wire Line
	2850 3300 3200 3300
Connection ~ 3050 3300
Wire Wire Line
	2850 3850 3200 3850
Connection ~ 3050 3850
Wire Wire Line
	2550 3300 2550 4500
Wire Wire Line
	5500 4100 5950 4100
$Comp
L GND #PWR020
U 1 1 58937FA4
P 3600 3550
F 0 "#PWR020" H 3600 3300 50  0001 C CNN
F 1 "GND" H 3600 3400 50  0000 C CNN
F 2 "" H 3600 3550 50  0000 C CNN
F 3 "" H 3600 3550 50  0000 C CNN
	1    3600 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 3300 3600 3300
Wire Wire Line
	3600 3300 3600 3850
Wire Wire Line
	3600 3850 3500 3850
Connection ~ 3600 3550
Wire Wire Line
	5950 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3150
Wire Wire Line
	2550 4500 5600 4500
Connection ~ 5600 4500
Connection ~ 2550 3850
$Comp
L CONN_01X02 P?
U 1 1 589380DD
P 3250 3550
F 0 "P?" H 3250 3700 50  0000 C CNN
F 1 "CONN_01X02" V 3350 3550 50  0000 C CNN
F 2 "" H 3250 3550 50  0000 C CNN
F 3 "" H 3250 3550 50  0000 C CNN
	1    3250 3550
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5893F78D
P 3350 3300
F 0 "D?" H 3350 3400 50  0000 C CNN
F 1 "D_Schottky" H 3350 3200 50  0000 C CNN
F 2 "" H 3350 3300 50  0000 C CNN
F 3 "" H 3350 3300 50  0000 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5893F7B2
P 2700 3300
F 0 "D?" H 2700 3400 50  0000 C CNN
F 1 "D_Schottky" H 2700 3200 50  0000 C CNN
F 2 "" H 2700 3300 50  0000 C CNN
F 3 "" H 2700 3300 50  0000 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5893F7CF
P 2700 3850
F 0 "D?" H 2700 3950 50  0000 C CNN
F 1 "D_Schottky" H 2700 3750 50  0000 C CNN
F 2 "" H 2700 3850 50  0000 C CNN
F 3 "" H 2700 3850 50  0000 C CNN
	1    2700 3850
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D?
U 1 1 5893F7EE
P 3350 3850
F 0 "D?" H 3350 3950 50  0000 C CNN
F 1 "D_Schottky" H 3350 3750 50  0000 C CNN
F 2 "" H 3350 3850 50  0000 C CNN
F 3 "" H 3350 3850 50  0000 C CNN
	1    3350 3850
	1    0    0    -1  
$EndComp
$Comp
L D_Small D?
U 1 1 589CF9DB
P 3050 3400
F 0 "D?" H 3000 3480 50  0000 L CNN
F 1 "D_Small" H 2900 3320 50  0000 L CNN
F 2 "" V 3050 3400 50  0000 C CNN
F 3 "" V 3050 3400 50  0000 C CNN
	1    3050 3400
	0    -1   -1   0   
$EndComp
$Comp
L D_Small D?
U 1 1 589CFA04
P 3050 3700
F 0 "D?" H 3000 3780 50  0000 L CNN
F 1 "D_Small" H 2900 3620 50  0000 L CNN
F 2 "" V 3050 3700 50  0000 C CNN
F 3 "" V 3050 3700 50  0000 C CNN
	1    3050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3800 3050 4000
Wire Wire Line
	3050 3150 3050 3300
Wire Wire Line
	5600 4850 5950 4850
Wire Wire Line
	5950 4850 5950 4750
$Comp
L +8V #PWR021
U 1 1 589D6B4D
P 5950 4750
F 0 "#PWR021" H 5950 4600 50  0001 C CNN
F 1 "+8V" H 5950 4890 50  0000 C CNN
F 2 "" H 5950 4750 50  0000 C CNN
F 3 "" H 5950 4750 50  0000 C CNN
	1    5950 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
