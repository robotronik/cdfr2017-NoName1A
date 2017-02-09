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
L Nucleo-64 U?
U 1 1 5893E3C6
P 7600 14450
F 0 "U?" H 7650 14500 60  0000 C CNN
F 1 "Nucleo-64" H 11950 23450 100 0000 C CNN
F 2 "" H 11850 25900 60  0001 C CNN
F 3 "" H 11850 25900 60  0001 C CNN
	1    7600 14450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5250 7950 5250
Wire Wire Line
	7950 5450 8650 5450
Text HLabel 7950 5250 0    60   Output ~ 0
TX-Pi
Text HLabel 7950 5450 0    60   Input ~ 0
RX-Pi
Wire Wire Line
	15750 9850 16350 9850
Text HLabel 16350 9850 2    60   Input ~ 0
speed-cc
Wire Wire Line
	15750 10050 16350 10050
Text HLabel 16350 10050 2    60   Input ~ 0
enable-cc
Wire Wire Line
	15750 9650 16350 9650
Text HLabel 16350 9650 2    60   Input ~ 0
dir-cc
Text HLabel 16350 3850 2    60   Input ~ 0
enable-p1
Wire Wire Line
	15750 3850 16350 3850
Wire Wire Line
	15750 4050 16350 4050
Text HLabel 16350 4050 2    60   Input ~ 0
enable-p2
Wire Wire Line
	15750 4250 16350 4250
Text HLabel 16350 4250 2    60   Input ~ 0
step-p1
Text HLabel 16350 4850 2    60   Input ~ 0
step-p2
Text HLabel 16350 5050 2    60   Input ~ 0
dir-p1
Text HLabel 16350 5250 2    60   Input ~ 0
dir-p2
Text HLabel 16350 5450 2    60   Input ~ 0
pince-M0
Text HLabel 16350 5850 2    60   Input ~ 0
pince-M1
Text HLabel 16350 6050 2    60   Input ~ 0
pince-M2
Wire Wire Line
	15750 4850 16350 4850
Wire Wire Line
	15750 5050 16350 5050
Wire Wire Line
	15750 5250 16350 5250
Wire Wire Line
	15750 5450 16350 5450
Wire Wire Line
	15750 5850 16350 5850
Wire Wire Line
	15750 6050 16350 6050
Wire Wire Line
	15750 5650 17350 5650
Wire Wire Line
	17350 5650 17350 5900
$Comp
L GND #PWR044
U 1 1 589476FA
P 17350 5900
F 0 "#PWR044" H 17350 5650 50  0001 C CNN
F 1 "GND" H 17350 5750 50  0000 C CNN
F 2 "" H 17350 5900 50  0000 C CNN
F 3 "" H 17350 5900 50  0000 C CNN
	1    17350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	15750 8850 17100 8850
Wire Wire Line
	17100 8850 17100 9050
$Comp
L GND #PWR045
U 1 1 5894773B
P 17100 9050
F 0 "#PWR045" H 17100 8800 50  0001 C CNN
F 1 "GND" H 17100 8900 50  0000 C CNN
F 2 "" H 17100 9050 50  0000 C CNN
F 3 "" H 17100 9050 50  0000 C CNN
	1    17100 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5650 6850 5650
Wire Wire Line
	6850 5650 6850 5950
$Comp
L GND #PWR046
U 1 1 5894779E
P 6850 5950
F 0 "#PWR046" H 6850 5700 50  0001 C CNN
F 1 "GND" H 6850 5800 50  0000 C CNN
F 2 "" H 6850 5950 50  0000 C CNN
F 3 "" H 6850 5950 50  0000 C CNN
	1    6850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 8850 8250 8850
Wire Wire Line
	8250 8850 8250 8650
Wire Wire Line
	8450 10250 8650 10250
$Comp
L GND #PWR047
U 1 1 58947867
P 8250 8850
F 0 "#PWR047" H 8250 8600 50  0001 C CNN
F 1 "GND" H 8250 8700 50  0000 C CNN
F 2 "" H 8250 8850 50  0000 C CNN
F 3 "" H 8250 8850 50  0000 C CNN
	1    8250 8850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR048
U 1 1 5894787D
P 8450 10250
F 0 "#PWR048" H 8450 10000 50  0001 C CNN
F 1 "GND" H 8450 10100 50  0000 C CNN
F 2 "" H 8450 10250 50  0000 C CNN
F 3 "" H 8450 10250 50  0000 C CNN
	1    8450 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	15750 6250 16400 6250
Wire Wire Line
	15750 6450 16400 6450
Wire Wire Line
	15750 6650 16400 6650
Wire Wire Line
	15750 7050 16400 7050
Wire Wire Line
	15750 8050 16400 8050
Wire Wire Line
	15750 8250 16400 8250
Wire Wire Line
	15750 8450 16400 8450
Wire Wire Line
	15750 9250 16400 9250
Wire Wire Line
	15750 9450 16400 9450
Text HLabel 16400 6250 2    60   Input ~ 0
enable-r1
Text HLabel 16400 6450 2    60   Input ~ 0
enable-r2
Text HLabel 16400 6650 2    60   Input ~ 0
step-r1
Text HLabel 16400 7050 2    60   Input ~ 0
step-r2
Text HLabel 16400 8050 2    60   Input ~ 0
dir-r1
Text HLabel 16400 8250 2    60   Input ~ 0
dir-r2
Text HLabel 16400 8450 2    60   Input ~ 0
roue-M0
Text HLabel 16400 9250 2    60   Input ~ 0
roue-M1
Text HLabel 16400 9450 2    60   Input ~ 0
roue-M2
Wire Wire Line
	8650 3850 8250 3850
Wire Wire Line
	8650 5050 8200 5050
Text HLabel 8250 4050 0    60   Output ~ 0
TX-cervo
Text HLabel 8150 8250 0    60   Input ~ 0
RX-cervo
Text HLabel 8250 3850 0    60   Output ~ 0
Tx-balise
Wire Wire Line
	8650 8050 8150 8050
Text HLabel 8150 8050 0    60   Input ~ 0
Rx-balise
Wire Wire Line
	8450 10250 8450 10050
Wire Wire Line
	8450 10050 8650 10050
Wire Wire Line
	7200 8450 8650 8450
Wire Wire Line
	7200 8450 7200 8200
$Comp
L +5V #PWR?
U 1 1 589E3F8C
P 7200 8200
F 0 "#PWR?" H 7200 8050 50  0001 C CNN
F 1 "+5V" H 7200 8340 50  0000 C CNN
F 2 "" H 7200 8200 50  0000 C CNN
F 3 "" H 7200 8200 50  0000 C CNN
	1    7200 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 8650 8650 8650
Wire Wire Line
	7900 8450 7900 9250
Connection ~ 7900 8450
Wire Wire Line
	7900 9250 8650 9250
Wire Wire Line
	8650 4050 8250 4050
Wire Wire Line
	8650 8250 8150 8250
Wire Wire Line
	7950 6050 8650 6050
Wire Wire Line
	8650 6250 7900 6250
Wire Wire Line
	8650 6450 7850 6450
Wire Wire Line
	8650 6650 7800 6650
Wire Wire Line
	8650 6850 7750 6850
Wire Wire Line
	8650 5850 8000 5850
Text HLabel 8000 5850 0    60   Input ~ 0
c-distance1
Text HLabel 7950 6050 0    60   Input ~ 0
c-distance2
Text HLabel 7900 6250 0    60   Input ~ 0
c-distance3
Text HLabel 7850 6450 0    60   Input ~ 0
c-distance4
Text HLabel 7800 6650 0    60   Input ~ 0
c-distance5
Text HLabel 7750 6850 0    60   Input ~ 0
c-distance6
Text HLabel 16400 10250 2    60   Input ~ 0
cfc1
Text HLabel 16400 10450 2    60   Input ~ 0
cfc2
Text HLabel 16400 10650 2    60   Input ~ 0
cfc3
Text HLabel 16400 10850 2    60   Input ~ 0
cfc4
Text HLabel 16400 11050 2    60   Input ~ 0
cfc5
Text HLabel 16400 11250 2    60   Input ~ 0
cfc6
Wire Wire Line
	15750 10250 16400 10250
Wire Wire Line
	15750 10450 16400 10450
Wire Wire Line
	16400 10650 15750 10650
Wire Wire Line
	15750 10850 16400 10850
Wire Wire Line
	16400 11050 15750 11050
Wire Wire Line
	15750 11250 16400 11250
$EndSCHEMATC
