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
LIBS:2
LIBS:mcp2562
LIBS:stm32f042k6tx
LIBS:Propulsion_control
LIBS:carte_moteurs-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L L6235D U?
U 1 1 59613948
P 4300 3700
F 0 "U?" H 4300 3700 60  0000 C CNN
F 1 "L6235D" H 4300 3900 60  0000 C CNN
F 2 "" H 4000 3950 60  0001 C CNN
F 3 "" H 4000 3950 60  0001 C CNN
	1    4300 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5961463B
P 5200 3650
F 0 "#PWR?" H 5200 3400 50  0001 C CNN
F 1 "GND" H 5200 3500 50  0000 C CNN
F 2 "" H 5200 3650 50  0001 C CNN
F 3 "" H 5200 3650 50  0001 C CNN
	1    5200 3650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59614675
P 3250 3650
F 0 "#PWR?" H 3250 3400 50  0001 C CNN
F 1 "GND" H 3250 3500 50  0000 C CNN
F 2 "" H 3250 3650 50  0001 C CNN
F 3 "" H 3250 3650 50  0001 C CNN
	1    3250 3650
	0    1    1    0   
$EndComp
$Comp
L Maxon-200142 K?
U 1 1 59614717
P 6900 3100
F 0 "K?" H 6800 3450 60  0000 C CNN
F 1 "Maxon-200142" H 6850 1850 60  0000 C CNN
F 2 "" H 6400 3200 60  0000 C CNN
F 3 "" H 6400 3200 60  0000 C CNN
	1    6900 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596149B6
P 6050 3300
F 0 "#PWR?" H 6050 3050 50  0001 C CNN
F 1 "GND" H 6050 3150 50  0000 C CNN
F 2 "" H 6050 3300 50  0001 C CNN
F 3 "" H 6050 3300 50  0001 C CNN
	1    6050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3300 6050 3300
Wire Wire Line
	6300 3000 5500 3000
Wire Wire Line
	5500 3000 5500 2900
Wire Wire Line
	5500 2900 5000 2900
Wire Wire Line
	6300 3100 5650 3100
Wire Wire Line
	5650 3100 5650 2700
Wire Wire Line
	5650 2700 3400 2700
Wire Wire Line
	3400 2700 3400 2900
Wire Wire Line
	3400 2900 3550 2900
Wire Wire Line
	6300 3200 5450 3200
Wire Wire Line
	5450 3200 5450 3050
Wire Wire Line
	5450 3050 5000 3050
Wire Wire Line
	6150 4100 5000 4100
Wire Wire Line
	6150 3500 6150 4100
Wire Wire Line
	6150 3600 6300 3600
Wire Wire Line
	6300 3500 6150 3500
Connection ~ 6150 3600
Wire Wire Line
	5000 3350 5750 3350
Wire Wire Line
	5750 3350 5750 3800
Wire Wire Line
	5750 3800 6300 3800
Wire Wire Line
	6300 3900 6200 3900
Wire Wire Line
	6200 3900 6200 3800
Connection ~ 6200 3800
Wire Wire Line
	3550 3650 3250 3650
Wire Wire Line
	5000 3650 5200 3650
Wire Wire Line
	3550 3800 3450 3800
Wire Wire Line
	3450 3800 3450 3650
Connection ~ 3450 3650
Wire Wire Line
	5000 3800 5100 3800
Wire Wire Line
	5100 3800 5100 3650
Connection ~ 5100 3650
Wire Wire Line
	6300 4100 6200 4100
Wire Wire Line
	6200 4100 6200 4800
Wire Wire Line
	6200 4200 6300 4200
Wire Wire Line
	3550 3500 2650 3500
Wire Wire Line
	2650 3500 2650 4800
Wire Wire Line
	2650 4800 6200 4800
Connection ~ 6200 4200
Wire Wire Line
	3550 4250 2800 4250
Wire Wire Line
	2800 4250 2800 3200
Wire Wire Line
	2500 3200 3550 3200
$Comp
L R Rsense?
U 1 1 59614D6A
P 2350 3200
F 0 "Rsense?" V 2430 3200 50  0000 C CNN
F 1 "0.03R" V 2350 3200 50  0000 C CNN
F 2 "" V 2280 3200 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 3200
	0    1    1    0   
$EndComp
Connection ~ 2800 3200
$Comp
L GND #PWR?
U 1 1 59614DFE
P 2100 3200
F 0 "#PWR?" H 2100 2950 50  0001 C CNN
F 1 "GND" H 2100 3050 50  0000 C CNN
F 2 "" H 2100 3200 50  0001 C CNN
F 3 "" H 2100 3200 50  0001 C CNN
	1    2100 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 3200 2200 3200
$Comp
L +5V #PWR?
U 1 1 59615067
P 6150 2800
F 0 "#PWR?" H 6150 2650 50  0001 C CNN
F 1 "+5V" H 6150 2940 50  0000 C CNN
F 2 "" H 6150 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0001 C CNN
	1    6150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2800 6150 2900
Wire Wire Line
	6150 2900 6300 2900
Wire Wire Line
	5000 3500 5550 3500
Wire Wire Line
	5550 3500 5550 3950
Wire Wire Line
	5000 3950 5650 3950
$Comp
L VCC #PWR?
U 1 1 5961531A
P 5650 3950
F 0 "#PWR?" H 5650 3800 50  0001 C CNN
F 1 "VCC" H 5650 4100 50  0000 C CNN
F 2 "" H 5650 3950 50  0001 C CNN
F 3 "" H 5650 3950 50  0001 C CNN
	1    5650 3950
	0    1    1    0   
$EndComp
Connection ~ 5550 3950
$Comp
L VCC #PWR?
U 1 1 59615522
P 2150 5350
F 0 "#PWR?" H 2150 5200 50  0001 C CNN
F 1 "VCC" H 2150 5500 50  0000 C CNN
F 2 "" H 2150 5350 50  0001 C CNN
F 3 "" H 2150 5350 50  0001 C CNN
	1    2150 5350
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D?
U 1 1 5961553C
P 2150 5650
F 0 "D?" H 2150 5750 50  0000 C CNN
F 1 "1N4148" H 2150 5550 50  0000 C CNN
F 2 "" H 2150 5650 50  0001 C CNN
F 3 "" H 2150 5650 50  0001 C CNN
	1    2150 5650
	0    -1   -1   0   
$EndComp
$Comp
L D_ALT D?
U 1 1 596155C9
P 2150 6100
F 0 "D?" H 2150 6200 50  0000 C CNN
F 1 "1N4148" H 2150 6000 50  0000 C CNN
F 2 "" H 2150 6100 50  0001 C CNN
F 3 "" H 2150 6100 50  0001 C CNN
	1    2150 6100
	0    -1   -1   0   
$EndComp
$Comp
L R Rp?
U 1 1 596155F3
P 2450 5900
F 0 "Rp?" V 2530 5900 50  0000 C CNN
F 1 "100R" V 2450 5900 50  0000 C CNN
F 2 "" V 2380 5900 50  0001 C CNN
F 3 "" H 2450 5900 50  0001 C CNN
	1    2450 5900
	0    1    1    0   
$EndComp
$Comp
L C Cp?
U 1 1 5961562C
P 2850 5900
F 0 "Cp?" H 2875 6000 50  0000 L CNN
F 1 "10nC" H 2875 5800 50  0000 L CNN
F 2 "" H 2888 5750 50  0001 C CNN
F 3 "" H 2850 5900 50  0001 C CNN
	1    2850 5900
	0    1    1    0   
$EndComp
$Comp
L C Cboot?
U 1 1 5961567C
P 1900 6450
F 0 "Cboot?" H 1925 6550 50  0000 L CNN
F 1 "220nC" H 1925 6350 50  0000 L CNN
F 2 "" H 1938 6300 50  0001 C CNN
F 3 "" H 1900 6450 50  0001 C CNN
	1    1900 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6450 1750 5450
Wire Wire Line
	2150 5800 2150 5950
Wire Wire Line
	2150 6250 2150 6450
Wire Wire Line
	2050 6450 2550 6450
Wire Wire Line
	2300 5900 2150 5900
Connection ~ 2150 5900
Wire Wire Line
	2600 5900 2700 5900
Wire Wire Line
	3000 5900 3300 5900
Connection ~ 2150 6450
Text Label 3300 5900 0    60   ~ 0
VCP1
Text Label 2550 6450 0    60   ~ 0
VBOOT1
Text Label 5200 3200 0    60   ~ 0
VCP1
Text Label 5300 4250 0    60   ~ 0
VBOOT1
Wire Wire Line
	5200 3200 5000 3200
Wire Wire Line
	5300 4250 5000 4250
Text HLabel 5250 4400 2    60   Input ~ 0
BRAKE_1
Wire Wire Line
	5000 4400 5250 4400
Text Notes 3150 1050 0    60   ~ 0
26
Text Label 3100 3350 0    60   ~ 0
RCOFF1
Wire Wire Line
	3100 3350 3550 3350
Text Label 4900 5300 0    60   ~ 0
RCOFF1
$Comp
L C Coff?
U 1 1 59618797
P 4550 5300
F 0 "Coff?" H 4575 5400 50  0000 L CNN
F 1 "1nC" H 4575 5200 50  0000 L CNN
F 2 "" H 4588 5150 50  0001 C CNN
F 3 "" H 4550 5300 50  0001 C CNN
	1    4550 5300
	0    1    1    0   
$EndComp
$Comp
L R Roff?
U 1 1 59618982
P 4550 5550
F 0 "Roff?" V 4630 5550 50  0000 C CNN
F 1 "33kR" V 4550 5550 50  0000 C CNN
F 2 "" V 4480 5550 50  0001 C CNN
F 3 "" H 4550 5550 50  0001 C CNN
	1    4550 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 596189C5
P 4200 5650
F 0 "#PWR?" H 4200 5400 50  0001 C CNN
F 1 "GND" H 4200 5500 50  0000 C CNN
F 2 "" H 4200 5650 50  0001 C CNN
F 3 "" H 4200 5650 50  0001 C CNN
	1    4200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5300 4900 5300
Wire Wire Line
	4700 5550 4800 5550
Wire Wire Line
	4800 5550 4800 5300
Connection ~ 4800 5300
Wire Wire Line
	4400 5300 4200 5300
Wire Wire Line
	4200 5300 4200 5650
Wire Wire Line
	4400 5550 4200 5550
Connection ~ 4200 5550
Text Label 3050 4100 0    60   ~ 0
RCPULSE1
Text Label 6400 5300 0    60   ~ 0
RCPULSE1
Wire Wire Line
	3050 4100 3550 4100
$Comp
L C Cpul?
U 1 1 59619FC3
P 5950 5300
F 0 "Cpul?" H 5975 5400 50  0000 L CNN
F 1 "10nC" H 5975 5200 50  0000 L CNN
F 2 "" H 5988 5150 50  0001 C CNN
F 3 "" H 5950 5300 50  0001 C CNN
	1    5950 5300
	0    1    1    0   
$EndComp
$Comp
L R Rpul?
U 1 1 5961A03C
P 5950 5550
F 0 "Rpul?" V 6030 5550 50  0000 C CNN
F 1 "47kR" V 5950 5550 50  0000 C CNN
F 2 "" V 5880 5550 50  0001 C CNN
F 3 "" H 5950 5550 50  0001 C CNN
	1    5950 5550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5961A08D
P 5600 5650
F 0 "#PWR?" H 5600 5400 50  0001 C CNN
F 1 "GND" H 5600 5500 50  0000 C CNN
F 2 "" H 5600 5650 50  0001 C CNN
F 3 "" H 5600 5650 50  0001 C CNN
	1    5600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5650 5600 5300
Wire Wire Line
	5600 5300 5800 5300
Wire Wire Line
	6100 5300 6400 5300
Wire Wire Line
	5800 5550 5600 5550
Connection ~ 5600 5550
Wire Wire Line
	6100 5550 6250 5550
Wire Wire Line
	6250 5550 6250 5300
Connection ~ 6250 5300
Text HLabel 3200 3950 0    60   Input ~ 0
TACHO_1
Wire Wire Line
	3200 3950 3550 3950
Text HLabel 3250 3050 0    60   Input ~ 0
DIAG_1
Wire Wire Line
	3250 3050 3550 3050
Text HLabel 3150 4400 0    60   Input ~ 0
DIR_1
Wire Wire Line
	3150 4400 3550 4400
Text Label 5300 4550 0    60   ~ 0
Vref
Wire Wire Line
	5000 4550 5300 4550
Text Label 5000 6150 0    60   ~ 0
Vref
$Comp
L R R?
U 1 1 5961BC60
P 4550 6150
F 0 "R?" V 4630 6150 50  0000 C CNN
F 1 "R" V 4550 6150 50  0000 C CNN
F 2 "" V 4480 6150 50  0001 C CNN
F 3 "" H 4550 6150 50  0001 C CNN
	1    4550 6150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5961BC99
P 5000 6450
F 0 "R?" V 5080 6450 50  0000 C CNN
F 1 "R" V 5000 6450 50  0000 C CNN
F 2 "" V 4930 6450 50  0001 C CNN
F 3 "" H 5000 6450 50  0001 C CNN
	1    5000 6450
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 5961BF92
P 5250 6450
F 0 "C?" H 5275 6550 50  0000 L CNN
F 1 "C" H 5275 6350 50  0000 L CNN
F 2 "" H 5288 6300 50  0001 C CNN
F 3 "" H 5250 6450 50  0001 C CNN
	1    5250 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5961BFD9
P 5000 6700
F 0 "#PWR?" H 5000 6450 50  0001 C CNN
F 1 "GND" H 5000 6550 50  0000 C CNN
F 2 "" H 5000 6700 50  0001 C CNN
F 3 "" H 5000 6700 50  0001 C CNN
	1    5000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6150 5000 6150
Wire Wire Line
	5000 6150 5000 6300
Wire Wire Line
	5000 6700 5000 6600
Wire Wire Line
	5250 6300 5250 6200
Wire Wire Line
	5250 6200 5000 6200
Connection ~ 5000 6200
Wire Wire Line
	5250 6600 5250 6650
Wire Wire Line
	5250 6650 5000 6650
Connection ~ 5000 6650
$Comp
L R Ren?
U 1 1 59624BB3
P 2650 4550
F 0 "Ren?" V 2730 4550 50  0000 C CNN
F 1 "100kR" V 2650 4550 50  0000 C CNN
F 2 "" V 2580 4550 50  0001 C CNN
F 3 "" H 2650 4550 50  0001 C CNN
	1    2650 4550
	0    1    1    0   
$EndComp
$Comp
L C Cen?
U 1 1 59624D3C
P 3050 4750
F 0 "Cen?" H 3075 4850 50  0000 L CNN
F 1 "5,6nC" H 3075 4650 50  0000 L CNN
F 2 "" H 3088 4600 50  0001 C CNN
F 3 "" H 3050 4750 50  0001 C CNN
	1    3050 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4550 3550 4550
Text Label 3350 3050 0    60   ~ 0
DIAG1
Text Label 3150 4550 0    60   ~ 0
DIAG1
Text HLabel 2200 4550 0    60   Input ~ 0
EN_1
Wire Wire Line
	2200 4550 2500 4550
Wire Wire Line
	1750 5450 2150 5450
Wire Wire Line
	2150 5350 2150 5500
Connection ~ 2150 5450
$Comp
L GND #PWR?
U 1 1 596275DF
P 3050 5050
F 0 "#PWR?" H 3050 4800 50  0001 C CNN
F 1 "GND" H 3050 4900 50  0000 C CNN
F 2 "" H 3050 5050 50  0001 C CNN
F 3 "" H 3050 5050 50  0001 C CNN
	1    3050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 4550 3050 4600
Connection ~ 3050 4550
Wire Wire Line
	3050 4900 3050 5050
Text Label 3300 3950 0    60   ~ 0
TACHO1
Text Label 3850 6550 0    60   ~ 0
TACHO1
$Comp
L R Rdd?
U 1 1 5962811E
P 3850 6800
F 0 "Rdd?" V 3930 6800 50  0000 C CNN
F 1 "1kR" V 3850 6800 50  0000 C CNN
F 2 "" V 3780 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0001 C CNN
	1    3850 6800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 59629D17
P 3850 7100
F 0 "#PWR?" H 3850 6950 50  0001 C CNN
F 1 "+3.3V" H 3850 7240 50  0000 C CNN
F 2 "" H 3850 7100 50  0001 C CNN
F 3 "" H 3850 7100 50  0001 C CNN
	1    3850 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 6550 3850 6650
Wire Wire Line
	3850 6950 3850 7100
Text Notes 1600 2500 0    60   ~ 0
régler vref et rsense
$Comp
L +3.3V #PWR?
U 1 1 5962BA47
P 4200 6150
F 0 "#PWR?" H 4200 6000 50  0001 C CNN
F 1 "+3.3V" H 4200 6290 50  0000 C CNN
F 2 "" H 4200 6150 50  0001 C CNN
F 3 "" H 4200 6150 50  0001 C CNN
	1    4200 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 6150 4400 6150
$EndSCHEMATC
