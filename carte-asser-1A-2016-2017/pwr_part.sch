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
LIBS:carte-asser-1A-2016-2017-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L B_Plug_5mm U5
U 1 1 5893DE77
P 1250 1050
F 0 "U5" H 1250 1450 60  0000 C CNN
F 1 "+5V" H 1250 1550 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 1250 1050 60  0001 C CNN
F 3 "" H 1250 1050 60  0000 C CNN
	1    1250 1050
	0    1    1    0   
$EndComp
$Comp
L D_Small D5
U 1 1 5893DF03
P 1300 1450
F 0 "D5" V 1250 1530 50  0000 L CNN
F 1 "D_Small" H 1150 1370 50  0000 L CNN
F 2 "Discret:R4-LARGE_PADS" V 1300 1450 50  0001 C CNN
F 3 "" V 1300 1450 50  0000 C CNN
	1    1300 1450
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR023
U 1 1 5893DFAA
P 1000 1850
F 0 "#PWR023" H 1000 1700 50  0001 C CNN
F 1 "+5V" H 1000 1990 50  0000 C CNN
F 2 "" H 1000 1850 50  0000 C CNN
F 3 "" H 1000 1850 50  0000 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5893DFDD
P 900 1350
F 0 "#PWR024" H 900 1100 50  0001 C CNN
F 1 "GND" H 900 1200 50  0000 C CNN
F 2 "" H 900 1350 50  0000 C CNN
F 3 "" H 900 1350 50  0000 C CNN
	1    900  1350
	1    0    0    -1  
$EndComp
$Comp
L MCP1702 U6
U 1 1 589C7316
P 2550 3700
F 0 "U6" H 2650 3450 50  0000 C CNN
F 1 "MCP1702" H 2550 3950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 2550 3700 50  0001 C CNN
F 3 "" H 2550 3700 50  0000 C CNN
	1    2550 3700
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 589C7354
P 1750 4150
F 0 "C6" H 1775 4250 50  0000 L CNN
F 1 "1µ" H 1775 4050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 1788 4000 50  0001 C CNN
F 3 "" H 1750 4150 50  0000 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 589C73E9
P 1300 4150
F 0 "C5" H 1325 4250 50  0000 L CNN
F 1 "100µ" H 1325 4050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 1338 4000 50  0001 C CNN
F 3 "" H 1300 4150 50  0000 C CNN
	1    1300 4150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 589C7408
P 1750 3400
F 0 "#PWR025" H 1750 3250 50  0001 C CNN
F 1 "+5V" H 1750 3540 50  0000 C CNN
F 2 "" H 1750 3400 50  0000 C CNN
F 3 "" H 1750 3400 50  0000 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 589C7453
P 3300 3400
F 0 "#PWR026" H 3300 3250 50  0001 C CNN
F 1 "+3.3V" H 3300 3540 50  0000 C CNN
F 2 "" H 3300 3400 50  0000 C CNN
F 3 "" H 3300 3400 50  0000 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 589C7471
P 3300 4150
F 0 "C7" H 3325 4250 50  0000 L CNN
F 1 "1µ" H 3325 4050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L7.0mm_W2.5mm_P5.00mm" H 3338 4000 50  0001 C CNN
F 3 "" H 3300 4150 50  0000 C CNN
	1    3300 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 589C760B
P 3300 4450
F 0 "#PWR027" H 3300 4200 50  0001 C CNN
F 1 "GND" H 3300 4300 50  0000 C CNN
F 2 "" H 3300 4450 50  0000 C CNN
F 3 "" H 3300 4450 50  0000 C CNN
	1    3300 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 589C762B
P 1750 4450
F 0 "#PWR028" H 1750 4200 50  0001 C CNN
F 1 "GND" H 1750 4300 50  0000 C CNN
F 2 "" H 1750 4450 50  0000 C CNN
F 3 "" H 1750 4450 50  0000 C CNN
	1    1750 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 589C764B
P 1300 4450
F 0 "#PWR029" H 1300 4200 50  0001 C CNN
F 1 "GND" H 1300 4300 50  0000 C CNN
F 2 "" H 1300 4450 50  0000 C CNN
F 3 "" H 1300 4450 50  0000 C CNN
	1    1300 4450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG030
U 1 1 589C91A5
P 1000 2100
F 0 "#FLG030" H 1000 2195 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 2280 50  0000 C CNN
F 2 "" H 1000 2100 50  0000 C CNN
F 3 "" H 1000 2100 50  0000 C CNN
	1    1000 2100
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 589C923B
P 1600 2050
F 0 "D6" H 1600 2150 50  0000 C CNN
F 1 "LED" H 1600 1950 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" H 1600 2050 50  0001 C CNN
F 3 "" H 1600 2050 50  0000 C CNN
	1    1600 2050
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 589C92BD
P 2150 2050
F 0 "R1" V 2230 2050 50  0000 C CNN
F 1 "300" V 2150 2050 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" V 2080 2050 50  0001 C CNN
F 3 "" H 2150 2050 50  0000 C CNN
	1    2150 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR031
U 1 1 589C94A5
P 2500 2150
F 0 "#PWR031" H 2500 1900 50  0001 C CNN
F 1 "GND" H 2500 2000 50  0000 C CNN
F 2 "" H 2500 2150 50  0000 C CNN
F 3 "" H 2500 2150 50  0000 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG032
U 1 1 589C9645
P 900 1150
F 0 "#FLG032" H 900 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 900 1330 50  0000 C CNN
F 2 "" H 900 1150 50  0000 C CNN
F 3 "" H 900 1150 50  0000 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L B_Plug_5mm U7
U 1 1 589CBE81
P 4000 1150
F 0 "U7" H 3900 1000 60  0000 C CNN
F 1 "+15V" V 3650 1150 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 4000 1150 60  0001 C CNN
F 3 "" H 4000 1150 60  0000 C CNN
	1    4000 1150
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG033
U 1 1 589CBE99
P 3750 2550
F 0 "#FLG033" H 3750 2645 50  0001 C CNN
F 1 "PWR_FLAG" H 3750 2730 50  0000 C CNN
F 2 "" H 3750 2550 50  0000 C CNN
F 3 "" H 3750 2550 50  0000 C CNN
	1    3750 2550
	-1   0    0    1   
$EndComp
$Comp
L LED D8
U 1 1 589CBE9F
P 4250 2400
F 0 "D8" H 4250 2500 50  0000 C CNN
F 1 "LED" H 4250 2300 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" H 4250 2400 50  0001 C CNN
F 3 "" H 4250 2400 50  0000 C CNN
	1    4250 2400
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 589CBEA5
P 4800 2400
F 0 "R2" V 4880 2400 50  0000 C CNN
F 1 "1.3k" V 4800 2400 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" V 4730 2400 50  0001 C CNN
F 3 "" H 4800 2400 50  0000 C CNN
	1    4800 2400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR034
U 1 1 589CBEAB
P 5150 2500
F 0 "#PWR034" H 5150 2250 50  0001 C CNN
F 1 "GND" H 5150 2350 50  0000 C CNN
F 2 "" H 5150 2500 50  0000 C CNN
F 3 "" H 5150 2500 50  0000 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L B_Plug_5mm U8
U 1 1 589CBFF5
P 6900 1200
F 0 "U8" H 6900 1600 60  0000 C CNN
F 1 "+7.3V" H 6900 1700 60  0000 C CNN
F 2 "B plug:B plug 5mm" H 6900 1200 60  0001 C CNN
F 3 "" H 6900 1200 60  0000 C CNN
	1    6900 1200
	0    1    1    0   
$EndComp
$Comp
L D_Small D9
U 1 1 589CBFFB
P 6950 1600
F 0 "D9" V 6900 1680 50  0000 L CNN
F 1 "D_Small" H 6800 1520 50  0000 L CNN
F 2 "Discret:R4-LARGE_PADS" V 6950 1600 50  0001 C CNN
F 3 "" V 6950 1600 50  0000 C CNN
	1    6950 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR035
U 1 1 589CC007
P 6550 1500
F 0 "#PWR035" H 6550 1250 50  0001 C CNN
F 1 "GND" H 6550 1350 50  0000 C CNN
F 2 "" H 6550 1500 50  0000 C CNN
F 3 "" H 6550 1500 50  0000 C CNN
	1    6550 1500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG036
U 1 1 589CC00D
P 6650 2250
F 0 "#FLG036" H 6650 2345 50  0001 C CNN
F 1 "PWR_FLAG" H 6650 2430 50  0000 C CNN
F 2 "" H 6650 2250 50  0000 C CNN
F 3 "" H 6650 2250 50  0000 C CNN
	1    6650 2250
	-1   0    0    1   
$EndComp
$Comp
L LED D10
U 1 1 589CC013
P 7250 2200
F 0 "D10" H 7250 2300 50  0000 C CNN
F 1 "LED" H 7250 2100 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" H 7250 2200 50  0001 C CNN
F 3 "" H 7250 2200 50  0000 C CNN
	1    7250 2200
	-1   0    0    1   
$EndComp
$Comp
L R R3
U 1 1 589CC019
P 7800 2200
F 0 "R3" V 7880 2200 50  0000 C CNN
F 1 "500" V 7800 2200 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" V 7730 2200 50  0001 C CNN
F 3 "" H 7800 2200 50  0000 C CNN
	1    7800 2200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR037
U 1 1 589CC01F
P 8150 2300
F 0 "#PWR037" H 8150 2050 50  0001 C CNN
F 1 "GND" H 8150 2150 50  0000 C CNN
F 2 "" H 8150 2300 50  0000 C CNN
F 3 "" H 8150 2300 50  0000 C CNN
	1    8150 2300
	1    0    0    -1  
$EndComp
$Comp
L +15V #PWR038
U 1 1 589CC0EC
P 3750 2300
F 0 "#PWR038" H 3750 2150 50  0001 C CNN
F 1 "+15V" H 3750 2440 50  0000 C CNN
F 2 "" H 3750 2300 50  0000 C CNN
F 3 "" H 3750 2300 50  0000 C CNN
	1    3750 2300
	1    0    0    -1  
$EndComp
$Comp
L +8V #PWR039
U 1 1 589CC1A1
P 6650 2000
F 0 "#PWR039" H 6650 1850 50  0001 C CNN
F 1 "+8V" H 6650 2140 50  0000 C CNN
F 2 "" H 6650 2000 50  0000 C CNN
F 3 "" H 6650 2000 50  0000 C CNN
	1    6650 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 58A70768
P 2550 4200
F 0 "#PWR040" H 2550 3950 50  0001 C CNN
F 1 "GND" H 2550 4050 50  0000 C CNN
F 2 "" H 2550 4200 50  0000 C CNN
F 3 "" H 2550 4200 50  0000 C CNN
	1    2550 4200
	1    0    0    -1  
$EndComp
$Comp
L FUSE F1
U 1 1 58AB2024
P 4050 1600
F 0 "F1" H 4150 1650 50  0000 C CNN
F 1 "FUSE" H 3950 1550 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0000 C CNN
	1    4050 1600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR041
U 1 1 58AB25F6
P 3300 1450
F 0 "#PWR041" H 3300 1200 50  0001 C CNN
F 1 "GND" H 3300 1300 50  0000 C CNN
F 2 "" H 3300 1450 50  0000 C CNN
F 3 "" H 3300 1450 50  0000 C CNN
	1    3300 1450
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D7
U 1 1 58AB26E6
P 3850 1950
F 0 "D7" H 3850 2050 50  0000 C CNN
F 1 "D_Schottky" H 3850 1850 50  0000 C CNN
F 2 "Discret:R4-LARGE_PADS" H 3850 1950 50  0001 C CNN
F 3 "" H 3850 1950 50  0000 C CNN
	1    3850 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3650 1300 3650
Wire Wire Line
	1300 3650 1300 4000
Wire Wire Line
	1750 3400 1750 4000
Connection ~ 1750 3650
Wire Wire Line
	2900 3650 3300 3650
Wire Wire Line
	3300 3400 3300 4000
Connection ~ 3300 3650
Wire Wire Line
	3300 4300 3300 4450
Wire Wire Line
	1750 4300 1750 4450
Wire Wire Line
	1300 4300 1300 4450
Wire Wire Line
	1200 1150 1200 1250
Wire Wire Line
	1200 1250 900  1250
Wire Wire Line
	900  1150 900  1350
Connection ~ 900  1250
Wire Wire Line
	1300 1550 1300 2050
Wire Wire Line
	1300 1950 1000 1950
Wire Wire Line
	1300 2050 1400 2050
Connection ~ 1300 1950
Wire Wire Line
	1300 1150 1300 1350
Wire Wire Line
	1000 1850 1000 2100
Connection ~ 1000 1950
Wire Wire Line
	1800 2050 2000 2050
Wire Wire Line
	2300 2050 2500 2050
Wire Wire Line
	2500 2050 2500 2150
Wire Wire Line
	3950 1350 3950 1250
Wire Wire Line
	3300 1350 3950 1350
Connection ~ 3650 1350
Wire Wire Line
	4050 2400 3750 2400
Wire Wire Line
	3750 2300 3750 2550
Connection ~ 3750 2400
Wire Wire Line
	4450 2400 4650 2400
Wire Wire Line
	4950 2400 5150 2400
Wire Wire Line
	5150 2400 5150 2500
Wire Wire Line
	6850 1300 6850 1400
Wire Wire Line
	6850 1400 6550 1400
Wire Wire Line
	6950 1700 6950 2200
Wire Wire Line
	6950 2100 6650 2100
Wire Wire Line
	6950 2200 7050 2200
Connection ~ 6950 2100
Wire Wire Line
	6950 1300 6950 1500
Wire Wire Line
	6650 2000 6650 2250
Connection ~ 6650 2100
Wire Wire Line
	7450 2200 7650 2200
Wire Wire Line
	7950 2200 8150 2200
Wire Wire Line
	8150 2200 8150 2300
Connection ~ 3300 4400
Wire Wire Line
	2550 4000 2550 4200
Wire Wire Line
	4050 1250 4050 1350
Wire Wire Line
	4050 1850 4050 2400
Connection ~ 4050 1950
Connection ~ 4050 2400
Wire Wire Line
	3300 1350 3300 1450
Wire Wire Line
	3650 1950 3700 1950
Wire Wire Line
	4000 1950 4050 1950
Wire Wire Line
	3650 1950 3650 1350
Wire Wire Line
	6550 1400 6550 1500
Wire Wire Line
	4050 1300 4400 1300
Connection ~ 4050 1300
$Comp
L PWR_FLAG #FLG042
U 1 1 58AFD01A
P 4400 1150
F 0 "#FLG042" H 4400 1245 50  0001 C CNN
F 1 "PWR_FLAG" H 4400 1330 50  0000 C CNN
F 2 "" H 4400 1150 50  0000 C CNN
F 3 "" H 4400 1150 50  0000 C CNN
	1    4400 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1300 4400 1150
$EndSCHEMATC
