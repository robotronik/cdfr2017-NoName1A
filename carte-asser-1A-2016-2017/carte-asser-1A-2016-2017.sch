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
$Descr A2 23386 16535
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 13850 3800 1100 4700
U 58920823
F0 "stepstick_part" 60
F1 "stepstick_part.sch" 60
F2 "enable-p1" I L 13850 4250 60 
F3 "enable-p2" I L 13850 4400 60 
F4 "dir-p1" I L 13850 4550 60 
F5 "dir-p2" I L 13850 4700 60 
F6 "step-p1" I L 13850 4850 60 
F7 "step-p2" I L 13850 5000 60 
F8 "pince-M0" I L 13850 5150 60 
F9 "pince-M1" I L 13850 5300 60 
F10 "pince-M2" I L 13850 5450 60 
F11 "enable-r1" I L 13850 5850 60 
F12 "enable-r2" I L 13850 6000 60 
F13 "dir-r1" I L 13850 6150 60 
F14 "dir-r2" I L 13850 6300 60 
F15 "step-r2" I L 13850 6650 60 
F16 "step-r1" I L 13850 6500 60 
F17 "roue-M0" I L 13850 6900 60 
F18 "roue-M1" I L 13850 7100 60 
F19 "roue-M2" I L 13850 7300 60 
$EndSheet
$Sheet
S 13900 9150 950  1200
U 589368F1
F0 "motor_cc_part" 60
F1 "motor_cc_part.sch" 60
F2 "active-cc" I L 13900 9300 60 
F3 "speed-cc" I L 13900 9600 60 
F4 "dir-cc" I L 13900 9900 60 
$EndSheet
$Sheet
S 8150 1950 5200 950 
U 5893DCAB
F0 "pwr_part" 60
F1 "pwr_part.sch" 60
$EndSheet
$Sheet
S 7100 3650 6200 9800
U 5893E375
F0 "command_part" 60
F1 "command_part.sch" 60
F2 "enable-p1" O R 13300 4250 60 
F3 "enable-p2" O R 13300 4400 60 
F4 "dir-p1" O R 13300 4550 60 
F5 "dir-p2" O R 13300 4700 60 
F6 "step-p1" O R 13300 4850 60 
F7 "step-p2" O R 13300 5000 60 
F8 "pinceM0" O R 13300 5150 60 
F9 "pince-M1" O R 13300 5300 60 
F10 "pince-M2" O R 13300 5450 60 
F11 "enable-r1" O R 13300 5850 60 
F12 "enable-r2" O R 13300 6000 60 
F13 "dir-r1" O R 13300 6150 60 
F14 "dir-r2" O R 13300 6300 60 
F15 "step-r1" O R 13300 6500 60 
F16 "step-r2" O R 13300 6650 60 
F17 "roue-M0" O R 13300 6900 60 
F18 "roue-M1" O R 13300 7100 60 
F19 "roue-M2" O R 13300 7300 60 
F20 "TX-Pi" O L 7100 3900 60 
F21 "RX-Pi" I L 7100 4000 60 
F22 "TX-cervo" O L 7100 4750 60 
F23 "RX-cervo" I L 7100 4850 60 
F24 "Tx-balise" O L 7100 5850 60 
F25 "Rx-balise" I L 7100 5950 60 
F26 "c-distance1" I L 7100 6600 60 
F27 "c-distance2" I L 7100 6750 60 
F28 "c-distance3" I L 7100 6900 60 
F29 "c-distance4" I L 7100 7050 60 
F30 "c-distance5" I L 7100 7200 60 
F31 "c-distance6" I L 7100 7350 60 
F32 "cfc1" I L 7100 8450 60 
F33 "cfc2" I L 7100 8600 60 
F34 "cfc3" I L 7100 8800 60 
F35 "cfc4" I L 7100 9000 60 
F36 "cfc5" I L 7100 9200 60 
F37 "cfc6" I L 7100 9400 60 
$EndSheet
Text HLabel 13300 9300 0    60   Input ~ 0
active-cc
Text HLabel 13300 9600 0    60   Input ~ 0
speed-cc
Text HLabel 13300 9900 0    60   Input ~ 0
dir-cc
$Comp
L CONN_01X02 P?
U 1 1 589450AF
P 6400 3950
F 0 "P?" H 6400 4100 50  0000 C CNN
F 1 "CONN_01X02" V 6500 3950 50  0000 C CNN
F 2 "" H 6400 3950 50  0000 C CNN
F 3 "" H 6400 3950 50  0000 C CNN
	1    6400 3950
	-1   0    0    1   
$EndComp
$Comp
L D_Small D?
U 1 1 589C7F14
P 6800 3750
F 0 "D?" H 6750 3830 50  0000 L CNN
F 1 "D_Small" H 6650 3670 50  0000 L CNN
F 2 "" V 6800 3750 50  0000 C CNN
F 3 "" V 6800 3750 50  0000 C CNN
	1    6800 3750
	1    0    0    -1  
$EndComp
$Comp
L D_Small D?
U 1 1 589C8045
P 6800 4150
F 0 "D?" H 6750 4230 50  0000 L CNN
F 1 "D_Small" H 6650 4070 50  0000 L CNN
F 2 "" V 6800 4150 50  0000 C CNN
F 3 "" V 6800 4150 50  0000 C CNN
	1    6800 4150
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 589C954C
P 6400 4800
F 0 "P?" H 6400 4950 50  0000 C CNN
F 1 "CONN_01X02" V 6500 4800 50  0000 C CNN
F 2 "" H 6400 4800 50  0000 C CNN
F 3 "" H 6400 4800 50  0000 C CNN
	1    6400 4800
	-1   0    0    1   
$EndComp
$Comp
L D_Small D?
U 1 1 589C9554
P 6800 4600
F 0 "D?" H 6750 4680 50  0000 L CNN
F 1 "D_Small" H 6650 4520 50  0000 L CNN
F 2 "" V 6800 4600 50  0000 C CNN
F 3 "" V 6800 4600 50  0000 C CNN
	1    6800 4600
	1    0    0    -1  
$EndComp
$Comp
L D_Small D?
U 1 1 589C955A
P 6800 5000
F 0 "D?" H 6750 5080 50  0000 L CNN
F 1 "D_Small" H 6650 4920 50  0000 L CNN
F 2 "" V 6800 5000 50  0000 C CNN
F 3 "" V 6800 5000 50  0000 C CNN
	1    6800 5000
	-1   0    0    1   
$EndComp
$Comp
L D_Small D?
U 1 1 589CE35D
P 6750 5700
F 0 "D?" H 6700 5780 50  0000 L CNN
F 1 "D_Small" H 6600 5620 50  0000 L CNN
F 2 "" V 6750 5700 50  0000 C CNN
F 3 "" V 6750 5700 50  0000 C CNN
	1    6750 5700
	1    0    0    -1  
$EndComp
$Comp
L D_Small D?
U 1 1 589CE363
P 6750 6100
F 0 "D?" H 6700 6180 50  0000 L CNN
F 1 "D_Small" H 6600 6020 50  0000 L CNN
F 2 "" V 6750 6100 50  0000 C CNN
F 3 "" V 6750 6100 50  0000 C CNN
	1    6750 6100
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 589D4125
P 5800 5850
F 0 "P?" H 5800 6050 50  0000 C CNN
F 1 "CONN_01X03" V 5900 5850 50  0000 C CNN
F 2 "" H 5800 5850 50  0000 C CNN
F 3 "" H 5800 5850 50  0000 C CNN
	1    5800 5850
	-1   0    0    1   
$EndComp
$Comp
L +15V #PWR01
U 1 1 589D46CA
P 6250 5650
F 0 "#PWR01" H 6250 5500 50  0001 C CNN
F 1 "+15V" H 6250 5790 50  0000 C CNN
F 2 "" H 6250 5650 50  0000 C CNN
F 3 "" H 6250 5650 50  0000 C CNN
	1    6250 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X07 P?
U 1 1 589DB597
P 4250 3800
F 0 "P?" H 4250 4200 50  0000 C CNN
F 1 "CONN_01X07" V 4350 3800 50  0000 C CNN
F 2 "" H 4250 3800 50  0000 C CNN
F 3 "" H 4250 3800 50  0000 C CNN
	1    4250 3800
	-1   0    0    1   
$EndComp
$Comp
L +8V #PWR02
U 1 1 589DBCE6
P 4450 2950
F 0 "#PWR02" H 4450 2800 50  0001 C CNN
F 1 "+8V" H 4450 3090 50  0000 C CNN
F 2 "" H 4450 2950 50  0000 C CNN
F 3 "" H 4450 2950 50  0000 C CNN
	1    4450 2950
	1    0    0    -1  
$EndComp
$Comp
L D_Small D?
U 1 1 589E9604
P 4450 3250
F 0 "D?" H 4400 3330 50  0000 L CNN
F 1 "D_Small" H 4300 3170 50  0000 L CNN
F 2 "" V 4450 3250 50  0000 C CNN
F 3 "" V 4450 3250 50  0000 C CNN
	1    4450 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13300 4250 13850 4250
Wire Wire Line
	13300 4400 13850 4400
Wire Wire Line
	13300 4550 13850 4550
Wire Wire Line
	13850 4700 13300 4700
Wire Wire Line
	13300 4850 13850 4850
Wire Wire Line
	13850 5000 13300 5000
Wire Wire Line
	13300 5150 13850 5150
Wire Wire Line
	13850 5300 13300 5300
Wire Wire Line
	13300 5450 13850 5450
Wire Wire Line
	13300 7300 13850 7300
Wire Wire Line
	13850 7100 13300 7100
Wire Wire Line
	13300 6900 13850 6900
Wire Wire Line
	13850 6650 13300 6650
Wire Wire Line
	13300 5850 13850 5850
Wire Wire Line
	13300 6000 13850 6000
Wire Wire Line
	13850 6150 13300 6150
Wire Wire Line
	13300 6300 13850 6300
Wire Wire Line
	13850 6500 13300 6500
Wire Wire Line
	13300 9300 13900 9300
Wire Wire Line
	13300 9600 13900 9600
Wire Wire Line
	13300 9900 13900 9900
Wire Wire Line
	6900 3900 7100 3900
Wire Wire Line
	7100 4000 6900 4000
Wire Wire Line
	6600 4000 6700 4000
Wire Wire Line
	6700 4000 6700 4150
Wire Wire Line
	6900 4000 6900 4150
Wire Wire Line
	6900 3750 6900 3900
Wire Wire Line
	6600 3900 6700 3900
Wire Wire Line
	6700 3900 6700 3750
Wire Wire Line
	6900 4750 7100 4750
Wire Wire Line
	7100 4850 6900 4850
Wire Wire Line
	6600 4850 6700 4850
Wire Wire Line
	6700 4850 6700 5000
Wire Wire Line
	6900 4850 6900 5000
Wire Wire Line
	6900 4600 6900 4750
Wire Wire Line
	6600 4750 6700 4750
Wire Wire Line
	6700 4750 6700 4600
Wire Wire Line
	6850 5850 7100 5850
Wire Wire Line
	6850 5950 7100 5950
Wire Wire Line
	6000 5950 6650 5950
Wire Wire Line
	6650 5950 6650 6100
Wire Wire Line
	6850 5950 6850 6100
Wire Wire Line
	6850 5700 6850 5850
Wire Wire Line
	6000 5850 6650 5850
Wire Wire Line
	6650 5850 6650 5700
Wire Wire Line
	6000 5750 6250 5750
Wire Wire Line
	6250 5750 6250 5650
Wire Wire Line
	4450 3350 4450 4100
Connection ~ 4450 4000
Connection ~ 4450 3900
Connection ~ 4450 3800
Connection ~ 4450 3600
Connection ~ 4450 3700
Connection ~ 4450 3500
Wire Wire Line
	4450 2950 4450 3150
$Sheet
S 5250 6450 1400 1250
U 589FC31D
F0 "distance_captor_part" 60
F1 "distance_captor_part.sch" 60
$EndSheet
Text HLabel 6650 6600 0    60   Input ~ 0
c-distance1
Text HLabel 6650 6750 0    60   Input ~ 0
c-distance2
Text HLabel 6650 6900 0    60   Input ~ 0
c-distance3
Text HLabel 6650 7050 0    60   Input ~ 0
c-distance4
Text HLabel 6650 7200 0    60   Input ~ 0
c-distance5
Text HLabel 6650 7350 0    60   Input ~ 0
c-distance6
Wire Wire Line
	6650 6600 7100 6600
Wire Wire Line
	6650 6750 7100 6750
Wire Wire Line
	6650 6900 7100 6900
Wire Wire Line
	7100 7050 6650 7050
Wire Wire Line
	6650 7200 7100 7200
Wire Wire Line
	7100 7350 6650 7350
$Sheet
S 5200 8300 1450 1900
U 58A040B6
F0 "cfc_part" 60
F1 "cfc_part.sch" 60
F2 "cfc1" O R 6650 8450 60 
F3 "cfc2" O R 6650 8600 60 
F4 "cfc3" O R 6650 8800 60 
F5 "cfc4" O R 6650 9000 60 
F6 "cfc5" O R 6650 9200 60 
F7 "cfc6" O R 6650 9400 60 
$EndSheet
Wire Wire Line
	6650 8450 7100 8450
Wire Wire Line
	7100 8600 6650 8600
Wire Wire Line
	6650 8800 7100 8800
Wire Wire Line
	7100 9000 6650 9000
Wire Wire Line
	6650 9200 7100 9200
Wire Wire Line
	7100 9400 6650 9400
$EndSCHEMATC
