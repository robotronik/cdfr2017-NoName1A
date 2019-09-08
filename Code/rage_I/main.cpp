#include "mbed.h"
#include "XL_320.h"
#include "Pap.h"

#define V_PAP          45
#define SPACING_WHEELS 155

#define WHEELS         71.2
#define POULIE         25


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
	//Serial s(PC_10,PC_11,V3);
	//XL servo=XL(PC_10,PC_11,V3,PC_12);

	DigitalOut e1(PF_1);
	DigitalOut e2(PC_0);

	Pap R1(PA_14,PA_15);//roue droite PF_1
	Pap R2(PC_2,PC_3);//roue gauche

	Pap P1(PA_1,PA_4); //PC_0
	Pap P2(PB_0,PC_1); //
 
	DigitalOut led(LED1);

	e1=0;
	e2=0;

	//while(1)	
	//{
		//servo.ecom(BROADCAST,LED_XL,LED_RED);
		//R2.write(100,30,0);
		//while(R2.lecture()!=0) ;
		
		//servo.ecom(BROADCAST,LED_XL,LED_BLUE_GREEN);
	//}

// Test des fonctions de déplacement
	//dist(50, R2, R1, WHEELS);

	//angle(2*3.14*1000, R2, R1, WHEELS);
	//angle(-2*3.14*1000, R2, R1, WHEELS);
	
	//dist(-50, R2, R1, WHEELS);

	// Test des Pap des poulies
	//dist(10, P1, P2, POULIE);

//	dist(-10, P1, P2, POULIE);

	R1.write(1000,10);
	R2.write(1000,-10);
	while(R1.read()!=0 || R2.read()!=0) wait(0.0001);
}
