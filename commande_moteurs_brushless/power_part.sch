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
Sheet 4 5
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
L VCC #PWR?
U 1 1 5962E5D8
P 4650 2300
F 0 "#PWR?" H 4650 2150 50  0001 C CNN
F 1 "VCC" H 4650 2450 50  0000 C CNN
F 2 "" H 4650 2300 50  0001 C CNN
F 3 "" H 4650 2300 50  0001 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5962E5EC
P 10450 2450
F 0 "#PWR?" H 10450 2300 50  0001 C CNN
F 1 "+3.3V" H 10450 2590 50  0000 C CNN
F 2 "" H 10450 2450 50  0001 C CNN
F 3 "" H 10450 2450 50  0001 C CNN
	1    10450 2450
	1    0    0    -1  
$EndComp
$Comp
L B_Plug_5mm U?
U 1 1 5962E6CD
P 3400 2600
F 0 "U?" H 3400 3000 60  0000 C CNN
F 1 "B_Plug_5mm" H 3400 3100 60  0000 C CNN
F 2 "" H 3400 2600 60  0000 C CNN
F 3 "" H 3400 2600 60  0000 C CNN
	1    3400 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5962E732
P 3650 2900
F 0 "#PWR?" H 3650 2650 50  0001 C CNN
F 1 "GND" H 3650 2750 50  0000 C CNN
F 2 "" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	1    0    0    -1  
$EndComp
$Comp
L Fuse F?
U 1 1 5962E74B
P 3900 2550
F 0 "F?" V 3980 2550 50  0000 C CNN
F 1 "Fuse" V 3825 2550 50  0000 C CNN
F 2 "" V 3830 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	0    1    1    0   
$EndComp
$Comp
L D_ALT D?
U 1 1 5962E7D0
P 4250 2750
F 0 "D?" H 4250 2850 50  0000 C CNN
F 1 "D_ALT" H 4250 2650 50  0000 C CNN
F 2 "" H 4250 2750 50  0001 C CNN
F 3 "" H 4250 2750 50  0001 C CNN
	1    4250 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5962E829
P 4250 3000
F 0 "#PWR?" H 4250 2750 50  0001 C CNN
F 1 "GND" H 4250 2850 50  0000 C CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2550 3750 2550
Wire Wire Line
	4250 2550 4250 2600
Wire Wire Line
	4250 2900 4250 3000
Connection ~ 4250 2550
Wire Wire Line
	3500 2650 3650 2650
Wire Wire Line
	3650 2650 3650 2900
$Comp
L PWR_FLAG #FLG?
U 1 1 5962EB73
P 4500 2400
F 0 "#FLG?" H 4500 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 4500 2550 50  0000 C CNN
F 2 "" H 4500 2400 50  0001 C CNN
F 3 "" H 4500 2400 50  0001 C CNN
	1    4500 2400
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5962EBA1
P 3800 2850
F 0 "#FLG?" H 3800 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 3000 50  0000 C CNN
F 2 "" H 3800 2850 50  0001 C CNN
F 3 "" H 3800 2850 50  0001 C CNN
	1    3800 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2850 3650 2850
Connection ~ 3650 2850
$Comp
L +5V #PWR?
U 1 1 5962ECD4
P 7900 2450
F 0 "#PWR?" H 7900 2300 50  0001 C CNN
F 1 "+5V" H 7900 2590 50  0000 C CNN
F 2 "" H 7900 2450 50  0001 C CNN
F 3 "" H 7900 2450 50  0001 C CNN
	1    7900 2450
	1    0    0    -1  
$EndComp
$Comp
L LM317_SOT223 U?
U 1 1 5962EDF3
P 7000 2700
F 0 "U?" H 7000 3000 50  0000 C CNN
F 1 "LM317_SOT223" H 7050 2450 50  0000 L CNN
F 2 "" H 7000 2700 50  0001 C CNN
F 3 "" H 7000 2700 50  0001 C CNN
	1    7000 2700
	1    0    0    -1  
$EndComp
$Comp
L LM317_SOT223 U?
U 1 1 5962EF34
P 9650 2650
F 0 "U?" H 9650 2950 50  0000 C CNN
F 1 "LM317_SOT223" H 9700 2400 50  0000 L CNN
F 2 "" H 9650 2650 50  0001 C CNN
F 3 "" H 9650 2650 50  0001 C CNN
	1    9650 2650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5962F11A
P 6450 2450
F 0 "#PWR?" H 6450 2300 50  0001 C CNN
F 1 "VCC" H 6450 2600 50  0000 C CNN
F 2 "" H 6450 2450 50  0001 C CNN
F 3 "" H 6450 2450 50  0001 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5962F138
P 9050 2450
F 0 "#PWR?" H 9050 2300 50  0001 C CNN
F 1 "VCC" H 9050 2600 50  0000 C CNN
F 2 "" H 9050 2450 50  0001 C CNN
F 3 "" H 9050 2450 50  0001 C CNN
	1    9050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2450 6450 2550
Wire Wire Line
	6450 2550 6600 2550
Wire Wire Line
	7400 2550 8000 2550
Wire Wire Line
	7900 2450 7900 2800
Wire Wire Line
	9050 2450 9050 2500
Wire Wire Line
	9050 2500 9250 2500
Wire Wire Line
	10050 2500 10500 2500
Wire Wire Line
	10450 2450 10450 2700
$Comp
L R R?
U 1 1 5962F28F
P 7000 3350
F 0 "R?" V 7080 3350 50  0000 C CNN
F 1 "3.3kR" V 7000 3350 50  0000 C CNN
F 2 "" V 6930 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    7000 3350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5962F2E4
P 7350 3150
F 0 "R?" V 7430 3150 50  0000 C CNN
F 1 "10kR" V 7350 3150 50  0000 C CNN
F 2 "" V 7280 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5962F32D
P 9650 3350
F 0 "R?" V 9730 3350 50  0000 C CNN
F 1 "33kR" V 9650 3350 50  0000 C CNN
F 2 "" V 9580 3350 50  0001 C CNN
F 3 "" H 9650 3350 50  0001 C CNN
	1    9650 3350
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5962F372
P 10000 3150
F 0 "R?" V 10080 3150 50  0000 C CNN
F 1 "56kR" V 10000 3150 50  0000 C CNN
F 2 "" V 9930 3150 50  0001 C CNN
F 3 "" H 10000 3150 50  0001 C CNN
	1    10000 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5962F3CB
P 7000 3600
F 0 "#PWR?" H 7000 3350 50  0001 C CNN
F 1 "GND" H 7000 3450 50  0000 C CNN
F 2 "" H 7000 3600 50  0001 C CNN
F 3 "" H 7000 3600 50  0001 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5962F3F1
P 9650 3600
F 0 "#PWR?" H 9650 3350 50  0001 C CNN
F 1 "GND" H 9650 3450 50  0000 C CNN
F 2 "" H 9650 3600 50  0001 C CNN
F 3 "" H 9650 3600 50  0001 C CNN
	1    9650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3600 7000 3500
Wire Wire Line
	7000 3200 7000 3050
Wire Wire Line
	7200 3150 7000 3150
Connection ~ 7000 3150
Wire Wire Line
	7500 3150 7650 3150
Wire Wire Line
	7650 3150 7650 2550
Connection ~ 7650 2550
Wire Wire Line
	9650 3200 9650 3000
Wire Wire Line
	9650 3600 9650 3500
Wire Wire Line
	9850 3150 9650 3150
Connection ~ 9650 3150
Wire Wire Line
	10150 3150 10300 3150
Wire Wire Line
	10300 3150 10300 2500
Connection ~ 10300 2500
$Comp
L PWR_FLAG #FLG?
U 1 1 5962F976
P 7500 2450
F 0 "#FLG?" H 7500 2525 50  0001 C CNN
F 1 "PWR_FLAG" H 7500 2600 50  0000 C CNN
F 2 "" H 7500 2450 50  0001 C CNN
F 3 "" H 7500 2450 50  0001 C CNN
	1    7500 2450
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 5962F99C
P 10100 2400
F 0 "#FLG?" H 10100 2475 50  0001 C CNN
F 1 "PWR_FLAG" H 10100 2550 50  0000 C CNN
F 2 "" H 10100 2400 50  0001 C CNN
F 3 "" H 10100 2400 50  0001 C CNN
	1    10100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2450 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	10100 2400 10100 2500
Connection ~ 10100 2500
$Comp
L R R?
U 1 1 59630075
P 5200 2550
F 0 "R?" V 5280 2550 50  0000 C CNN
F 1 "R" V 5200 2550 50  0000 C CNN
F 2 "" V 5130 2550 50  0001 C CNN
F 3 "" H 5200 2550 50  0001 C CNN
	1    5200 2550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5963017A
P 8150 2550
F 0 "R?" V 8230 2550 50  0000 C CNN
F 1 "R" V 8150 2550 50  0000 C CNN
F 2 "" V 8080 2550 50  0001 C CNN
F 3 "" H 8150 2550 50  0001 C CNN
	1    8150 2550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 596302DA
P 10650 2500
F 0 "R?" V 10730 2500 50  0000 C CNN
F 1 "R" V 10650 2500 50  0000 C CNN
F 2 "" V 10580 2500 50  0001 C CNN
F 3 "" H 10650 2500 50  0001 C CNN
	1    10650 2500
	0    1    1    0   
$EndComp
$Comp
L LED_ALT D?
U 1 1 59630349
P 8400 2750
F 0 "D?" H 8400 2850 50  0000 C CNN
F 1 "LED_5V" H 8400 2650 50  0000 C CNN
F 2 "" H 8400 2750 50  0001 C CNN
F 3 "" H 8400 2750 50  0001 C CNN
	1    8400 2750
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D?
U 1 1 59630393
P 10850 2750
F 0 "D?" H 10850 2850 50  0000 C CNN
F 1 "LED_3.3V" H 10850 2650 50  0000 C CNN
F 2 "" H 10850 2750 50  0001 C CNN
F 3 "" H 10850 2750 50  0001 C CNN
	1    10850 2750
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D?
U 1 1 59630415
P 5450 2750
F 0 "D?" H 5450 2850 50  0000 C CNN
F 1 "LED_VCC" H 5450 2650 50  0000 C CNN
F 2 "" H 5450 2750 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 2750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5963063C
P 5450 3000
F 0 "#PWR?" H 5450 2750 50  0001 C CNN
F 1 "GND" H 5450 2850 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5963066E
P 8400 3100
F 0 "#PWR?" H 8400 2850 50  0001 C CNN
F 1 "GND" H 8400 2950 50  0000 C CNN
F 2 "" H 8400 3100 50  0001 C CNN
F 3 "" H 8400 3100 50  0001 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596306A0
P 10850 3100
F 0 "#PWR?" H 10850 2850 50  0001 C CNN
F 1 "GND" H 10850 2950 50  0000 C CNN
F 2 "" H 10850 3100 50  0001 C CNN
F 3 "" H 10850 3100 50  0001 C CNN
	1    10850 3100
	1    0    0    -1  
$EndComp
Connection ~ 10450 2500
Wire Wire Line
	10800 2500 10850 2500
Wire Wire Line
	10850 2500 10850 2600
Wire Wire Line
	10850 2900 10850 3100
Connection ~ 7900 2550
Wire Wire Line
	8300 2550 8400 2550
Wire Wire Line
	8400 2550 8400 2600
Wire Wire Line
	8400 2900 8400 3100
Wire Wire Line
	5350 2550 5450 2550
Wire Wire Line
	5450 2550 5450 2600
Wire Wire Line
	5450 2900 5450 3000
$Comp
L C C?
U 1 1 5962615B
P 7900 2950
F 0 "C?" H 7925 3050 50  0000 L CNN
F 1 "10uC" H 7925 2850 50  0000 L CNN
F 2 "" H 7938 2800 50  0001 C CNN
F 3 "" H 7900 2950 50  0001 C CNN
	1    7900 2950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5962624A
P 10450 2850
F 0 "C?" H 10475 2950 50  0000 L CNN
F 1 "10uC" H 10475 2750 50  0000 L CNN
F 2 "" H 10488 2700 50  0001 C CNN
F 3 "" H 10450 2850 50  0001 C CNN
	1    10450 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596262B8
P 7900 3300
F 0 "#PWR?" H 7900 3050 50  0001 C CNN
F 1 "GND" H 7900 3150 50  0000 C CNN
F 2 "" H 7900 3300 50  0001 C CNN
F 3 "" H 7900 3300 50  0001 C CNN
	1    7900 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5962633A
P 10450 3350
F 0 "#PWR?" H 10450 3100 50  0001 C CNN
F 1 "GND" H 10450 3200 50  0000 C CNN
F 2 "" H 10450 3350 50  0001 C CNN
F 3 "" H 10450 3350 50  0001 C CNN
	1    10450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3300 7900 3100
Wire Wire Line
	10450 3000 10450 3350
$Comp
L C C?
U 1 1 596270DD
P 4800 2750
F 0 "C?" H 4825 2850 50  0000 L CNN
F 1 "100nC" H 4825 2650 50  0000 L CNN
F 2 "" H 4838 2600 50  0001 C CNN
F 3 "" H 4800 2750 50  0001 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 59627130
P 4550 2750
F 0 "C?" H 4575 2850 50  0000 L CNN
F 1 "100uCP" H 4450 2650 50  0000 L CNN
F 2 "" H 4588 2600 50  0001 C CNN
F 3 "" H 4550 2750 50  0001 C CNN
	1    4550 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2550 5050 2550
Wire Wire Line
	4550 2550 4550 2600
Wire Wire Line
	4800 2550 4800 2600
Connection ~ 4550 2550
Wire Wire Line
	4250 2950 4800 2950
Wire Wire Line
	4550 2950 4550 2900
Connection ~ 4250 2950
Wire Wire Line
	4800 2950 4800 2900
Connection ~ 4550 2950
Wire Wire Line
	4500 2400 4650 2400
Connection ~ 4650 2550
Connection ~ 4650 2400
Wire Wire Line
	4650 2300 4650 2550
Connection ~ 4800 2550
$EndSCHEMATC
