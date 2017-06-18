EESchema Schematic File Version 2
LIBS:Robot_sumo-rescue
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
LIBS:arduino-nano
LIBS:l293
LIBS:Robot_sumo-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L NE555 U3
U 1 1 5942F5E4
P 5350 2550
F 0 "U3" H 4950 2900 50  0000 L CNN
F 1 "NE555" H 4950 2200 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket_LongPads" H 5350 2550 50  0001 C CNN
F 3 "" H 5350 2550 50  0001 C CNN
	1    5350 2550
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5942F769
P 6550 2300
F 0 "R14" V 6630 2300 50  0000 C CNN
F 1 "60kR" V 6550 2300 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" V 6480 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5942F7A9
P 6550 2800
F 0 "R15" V 6630 2800 50  0000 C CNN
F 1 "120kR" V 6550 2800 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" V 6480 2800 50  0001 C CNN
F 3 "" H 6550 2800 50  0001 C CNN
	1    6550 2800
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5942F7DB
P 6550 3200
F 0 "C10" H 6575 3300 50  0000 L CNN
F 1 "4,8nC" H 6575 3100 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 6588 3050 50  0001 C CNN
F 3 "" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5942F888
P 4450 2750
F 0 "C9" H 4475 2850 50  0000 L CNN
F 1 "10nC" H 4475 2650 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 4488 2600 50  0001 C CNN
F 3 "" H 4450 2750 50  0001 C CNN
	1    4450 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR039
U 1 1 5943EC1D
P 5350 2000
F 0 "#PWR039" H 5350 1850 50  0001 C CNN
F 1 "+5V" H 5350 2140 50  0000 C CNN
F 2 "" H 5350 2000 50  0001 C CNN
F 3 "" H 5350 2000 50  0001 C CNN
	1    5350 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5943EC43
P 5350 3100
F 0 "#PWR040" H 5350 2850 50  0001 C CNN
F 1 "GND" H 5350 2950 50  0000 C CNN
F 2 "" H 5350 3100 50  0001 C CNN
F 3 "" H 5350 3100 50  0001 C CNN
	1    5350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2000 5350 2150
Wire Wire Line
	5350 2950 5350 3100
$Comp
L +5V #PWR041
U 1 1 5943EF6D
P 4700 2750
F 0 "#PWR041" H 4700 2600 50  0001 C CNN
F 1 "+5V" H 4700 2890 50  0000 C CNN
F 2 "" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 50  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR042
U 1 1 5943EF93
P 6550 1950
F 0 "#PWR042" H 6550 1800 50  0001 C CNN
F 1 "+5V" H 6550 2090 50  0000 C CNN
F 2 "" H 6550 1950 50  0001 C CNN
F 3 "" H 6550 1950 50  0001 C CNN
	1    6550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2750 4850 2750
Wire Wire Line
	6550 1950 6550 2150
Wire Wire Line
	6550 2450 6550 2650
Wire Wire Line
	6550 2950 6550 3050
$Comp
L GND #PWR043
U 1 1 5943EFF3
P 6550 3500
F 0 "#PWR043" H 6550 3250 50  0001 C CNN
F 1 "GND" H 6550 3350 50  0000 C CNN
F 2 "" H 6550 3500 50  0001 C CNN
F 3 "" H 6550 3500 50  0001 C CNN
	1    6550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3500 6550 3350
Wire Wire Line
	4850 2350 4150 2350
Wire Wire Line
	4150 2350 4150 3350
Wire Wire Line
	4150 3350 6100 3350
Wire Wire Line
	6100 3350 6100 2750
Wire Wire Line
	6100 3000 6550 3000
Connection ~ 6550 3000
Wire Wire Line
	6100 2750 5850 2750
Connection ~ 6100 3000
Wire Wire Line
	5850 2550 6550 2550
Connection ~ 6550 2550
Wire Wire Line
	4850 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2600
Wire Wire Line
	4450 2900 4450 3050
Wire Wire Line
	4450 3050 5350 3050
Connection ~ 5350 3050
Text HLabel 6550 1650 2    60   Input ~ 0
Signal-e
Wire Wire Line
	5850 2350 6250 2350
Wire Wire Line
	6250 2350 6250 1650
Wire Wire Line
	6250 1650 6550 1650
$EndSCHEMATC
