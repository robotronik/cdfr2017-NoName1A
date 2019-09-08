#include "mbed.h"
#include "XL_320.h"
#include "Pap.h"
#include "capteur_distance.h"

int main()
{
	Serial pc(USBTX,USBRX);

	XL servo(PC_12,PD_2,V2,PA_13);

	Cdist D1(PB_10);
	Cdist D2(PA_8);
	Cdist D3(PB_13);
	
	DigitalIn jack(PC_9);
	DigitalIn selec(PB_8);
	DigitalIn fc_pap(PB_9);

	DigitalOut ep(PC_0);
	DigitalOut er(PF_1);
	Pap R1(PA_14,PA_15);//roue droite
	Pap R2(PC_2,PC_3);//roue gauche
	Pap P1(PA_1,PA_4); //pince
	Pap P2(PB_0,PC_1); //pince
	
	ep=0;er=0;

	while(jack) wait(0.00001);
	R1.write(100,10,0);
	R2.write(100,10,0);

	while(1) wait(0.0001);
}
