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
LIBS:carte_centrale-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Fuse F1
U 1 1 5916B3B4
P 3150 1600
F 0 "F1" V 3230 1600 50  0000 C CNN
F 1 "Fuse_BATT" V 3075 1600 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" V 3080 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
$Comp
L Fuse F2
U 1 1 5916B504
P 4350 1600
F 0 "F2" V 4430 1600 50  0000 C CNN
F 1 "Fuse_+7V4" V 4275 1600 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" V 4280 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L Fuse F3
U 1 1 5916B523
P 5800 1550
F 0 "F3" V 5880 1550 50  0000 C CNN
F 1 "Fuse_+5V" V 5725 1550 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" V 5730 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
$Comp
L LED D5
U 1 1 5916B53E
P 2400 1950
F 0 "D5" H 2400 2050 50  0000 C CNN
F 1 "LED" H 2400 1850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 2400 1950 50  0001 C CNN
F 3 "" H 2400 1950 50  0001 C CNN
	1    2400 1950
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 5916B5C7
P 3700 1950
F 0 "D7" H 3700 2050 50  0000 C CNN
F 1 "LED" H 3700 1850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 3700 1950 50  0001 C CNN
F 3 "" H 3700 1950 50  0001 C CNN
	1    3700 1950
	1    0    0    -1  
$EndComp
$Comp
L LED D10
U 1 1 5916B5F4
P 4900 1950
F 0 "D10" H 4900 2050 50  0000 C CNN
F 1 "LED" H 4900 1850 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5916B62D
P 2850 1950
F 0 "R1" V 2930 1950 50  0000 C CNN
F 1 "2,7kR" V 2850 1950 50  0000 C CNN
F 2 "Discret:R4" V 2780 1950 50  0001 C CNN
F 3 "" H 2850 1950 50  0001 C CNN
	1    2850 1950
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5916B6B0
P 4050 1950
F 0 "R2" V 4130 1950 50  0000 C CNN
F 1 "1,2kR" V 4050 1950 50  0000 C CNN
F 2 "Discret:R4" V 3980 1950 50  0001 C CNN
F 3 "" H 4050 1950 50  0001 C CNN
	1    4050 1950
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5916B715
P 5250 1950
F 0 "R3" V 5330 1950 50  0000 C CNN
F 1 "680R" V 5250 1950 50  0000 C CNN
F 2 "Discret:R4" V 5180 1950 50  0001 C CNN
F 3 "" H 5250 1950 50  0001 C CNN
	1    5250 1950
	0    1    1    0   
$EndComp
Text GLabel 3150 1100 1    60   Input ~ 0
BATT
Text GLabel 4350 1100 1    60   Input ~ 0
+7V4
Text GLabel 5800 1050 1    60   Input ~ 0
+5V
Text GLabel 1950 1950 0    60   Input ~ 0
GND
Text GLabel 3550 1750 1    60   Input ~ 0
GND
Text GLabel 4700 1600 1    60   Input ~ 0
GND
Text GLabel 3150 2200 3    60   Input ~ 0
BATT_P
Text GLabel 4350 2150 3    60   Input ~ 0
+7V4_P
Text GLabel 5800 2150 3    60   Input ~ 0
+5V_P
Wire Wire Line
	1950 1950 2250 1950
Wire Wire Line
	2550 1950 2700 1950
Wire Wire Line
	3000 1950 3150 1950
Wire Wire Line
	3150 1750 3150 2200
Wire Wire Line
	3150 1450 3150 1100
Connection ~ 3150 1950
Wire Wire Line
	3550 1750 3550 1950
Wire Wire Line
	3850 1950 3900 1950
Wire Wire Line
	4200 1950 4350 1950
Wire Wire Line
	4350 1750 4350 2150
Connection ~ 4350 1950
Wire Wire Line
	4350 1450 4350 1100
Wire Wire Line
	5400 1950 5800 1950
Wire Wire Line
	5800 1700 5800 2150
Connection ~ 5800 1950
Wire Wire Line
	5800 1400 5800 1050
$Comp
L D D6
U 1 1 5916B9FB
P 2600 2150
F 0 "D6" H 2600 2250 50  0000 C CNN
F 1 "D" H 2600 2050 50  0000 C CNN
F 2 "Discret:D4" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	-1   0    0    1   
$EndComp
$Comp
L D D8
U 1 1 5916BAA2
P 3900 2150
F 0 "D8" H 3900 2250 50  0000 C CNN
F 1 "D" H 3900 2050 50  0000 C CNN
F 2 "Discret:D4" H 3900 2150 50  0001 C CNN
F 3 "" H 3900 2150 50  0001 C CNN
	1    3900 2150
	-1   0    0    1   
$EndComp
$Comp
L D D9
U 1 1 5916BAE7
P 5300 2200
F 0 "D9" H 5300 2300 50  0000 C CNN
F 1 "D" H 5300 2100 50  0000 C CNN
F 2 "Discret:D4" H 5300 2200 50  0001 C CNN
F 3 "" H 5300 2200 50  0001 C CNN
	1    5300 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 2200 4600 2200
Wire Wire Line
	4600 2200 4600 1850
Wire Wire Line
	4600 1850 4700 1850
Connection ~ 4700 1850
Wire Wire Line
	5450 2200 5650 2200
Wire Wire Line
	5650 2200 5650 1950
Connection ~ 5650 1950
Wire Wire Line
	3750 2150 3350 2150
Wire Wire Line
	3350 2150 3350 1850
Wire Wire Line
	3350 1850 3550 1850
Connection ~ 3550 1850
Wire Wire Line
	4050 2150 4250 2150
Wire Wire Line
	4250 2150 4250 1950
Connection ~ 4250 1950
Wire Wire Line
	2100 1950 2100 2150
Wire Wire Line
	2100 2150 2450 2150
Connection ~ 2100 1950
Wire Wire Line
	2750 2150 3050 2150
Wire Wire Line
	3050 2150 3050 1950
Connection ~ 3050 1950
$Comp
L PWR_FLAG #FLG06
U 1 1 591A32A2
P 3450 2450
F 0 "#FLG06" H 3450 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 3450 2600 50  0000 C CNN
F 2 "" H 3450 2450 50  0001 C CNN
F 3 "" H 3450 2450 50  0001 C CNN
	1    3450 2450
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 591A3428
P 4600 2450
F 0 "#FLG07" H 4600 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 2600 50  0000 C CNN
F 2 "" H 4600 2450 50  0001 C CNN
F 3 "" H 4600 2450 50  0001 C CNN
	1    4600 2450
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 591A3454
P 6100 2100
F 0 "#FLG08" H 6100 2175 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 2250 50  0000 C CNN
F 2 "" H 6100 2100 50  0001 C CNN
F 3 "" H 6100 2100 50  0001 C CNN
	1    6100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2050 3300 2050
Wire Wire Line
	3300 2050 3300 2450
Wire Wire Line
	3300 2450 3450 2450
Connection ~ 3150 2050
Wire Wire Line
	4350 2000 4450 2000
Wire Wire Line
	4450 2000 4450 2450
Wire Wire Line
	4450 2450 4600 2450
Connection ~ 4350 2000
Wire Wire Line
	5800 2000 6100 2000
Wire Wire Line
	6100 2000 6100 2100
Connection ~ 5800 2000
Wire Wire Line
	4700 1600 4700 1950
Wire Wire Line
	4700 1950 4750 1950
Wire Wire Line
	5050 1950 5100 1950
$EndSCHEMATC
