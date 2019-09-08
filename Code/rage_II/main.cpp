#include "mbed.h"
#include "XL_320.h"
#include "Pap.h"



// Déplacement algébrique en millimètres
/*void dist(int millis, Pap MG, Pap MD, float diam){
	MG.linear(millis, V_PAP, diam);
	MD.linear(millis, -V_PAP, diam);

	while(MG.lecture() != 0){} 
	while(MD.lecture() != 0){}
}

// Sens trigonométrique en milliradians
void angle(int milliRad, Pap MG, Pap MD, float diam){
	MD.linear(milliRad/(2*3.14*1000)*SPACING_WHEELS, V_PAP, diam);
	MG.linear(milliRad/(2*3.14*1000)*SPACING_WHEELS, V_PAP, diam);

	while(MG.lecture() != 0 || MD.lecture() != 0){}	
}*/	



int main() {
	XL servo=XL(PC_10,PC_11,V2,PC_12);

	//DigitalOut e2(PC_0);

	DigitalOut M2(PC_14);
	DigitalOut M1(PC_15);
	DigitalOut M0(PF_0);
	M0=0;M1=0;M2=0;
	Pap R(PA_14,PA_15,PC_2,PC_3,PF_1);

	DigitalOut led(LED1);

	

	R.write(50,-5);
	while(R.read()!=0) wait(0.0001);
	//R.rot(100,-42);
	//while(R.read()!=0) wait(0.0001);
}
