#include "mbed.h"
#include "XL_320.h"
#include "Pap.h"
#include "capteur_distance.h"
#include "main.h"

#define timestop 85
#define timefa 90

#define VITESSE_SERVO 100
/*
void open_s(XL servo, XL sd){
  //ferme pince secondaire
  com(sg,GOAL_POSITION,512);
  com(sd,GOAL_POSITION,512);
}

void sortir_p(XL sg, XL sd){
  //ferme pince secondaire
  com(sg,GOAL_POSITION,307);
  com(sd,GOAL_POSITION,717);
}

void ranger_p(XL sg, XL sd){
  //ferme pince secondaire
  com(sg,GOAL_POSITION,512);
  com(sd,GOAL_POSITION,512);
}


void open_p(XL sg, XL sd){
  com(sg,GOAL_VELOCITY,VITESSE_SERVO);
  com(sd,GOAL_VELOCITY,VITESSE_SERVO);
  while(rcom(sg,MOVING,1)&&rcom(sd,MOVING,1));
  com(sg,GOAL_VELOCITY,0);
  com(sd,GOAL_VELOCITY,0);
}

void close_p(XL sg, XL sd){
  com(sg,GOAL_VELOCITY,-VITESSE_SERVO);
  com(sd,GOAL_VELOCITY,-VITESSE_SERVO);
  while(rcom(sg,MOVING,1)&&rcom(sd,MOVING,1));
  com(sg,GOAL_VELOCITY,0);
  com(sd,GOAL_VELOCITY,0);
}
*/

#define XL_FA 0x01


DigitalOut M2(PC_14);
DigitalOut M1(PC_15);
DigitalOut M0(PF_0);
SinglePap MD(PA_14, PA_15, PF_1);
SinglePap MG(PC_2, PC_3, PF_1);

DigitalOut e1(PF_1);//moteurs bas
DigitalOut e2(PC_0);//pince

XL servo = XL(PC_12, PD_2, V2, PA_13);

// Initialisations 
Ticker tEnd;
Ticker tHylariousFuckingAction;
Ticker tDistRefresh;

//Pap R(PA_14,PA_15,PC_2,PC_3,PF_1);


DigitalOut led(LED1);


void JustFreeTheDamnShuttleYouPervertXL320(){

	// Let it go
	servo.com(0x03, GOAL_POSITION, 5);
	wait(2);
	servo.com(0x03, LED_XL, LED_BLUE);
	wait_ms(100);
	
	// Try to get it back, but it's already gone, just like this night of sleep
	// Jokes on you, it's to allow your tiny hands to re-arm the funny two sticks fork
	servo.com(0x03, GOAL_POSITION, 1020);
	wait(1);
	servo.com(0x03, LED_XL, LED_GREEN);
	wait_ms(100);
}

void HangForTheEntireInfinityOfTime(){

	// Disable all interrupts, except the funy action ? 
	// Peut être pas nécessaire
	e1=1;//stop pap bas
	wait(timefa-timestop);
	JustFreeTheDamnShuttleYouPervertXL320();
	// Just wait for the Holy Homologation
	while(1);
}


void linear(int millims, float vitesse){
	if(millims>=0)
	{	MG.write((int)(millims*SPR/(3.14*2*Rroue)), vitesse);
		MD.write((int)(millims*SPR/(3.14*2*Rroue)), -vitesse);}
	else
	{	MG.write((int)(-millims*SPR/(3.14*2*Rroue)), -vitesse);
		MD.write((int)(-millims*SPR/(3.14*2*Rroue)), vitesse);}
}

void rotate(int milliRad, float vitesse){
	int balek=milliRad*1.177;
	if(milliRad>=0)
	{	MG.write((int)balek, -vitesse);	
		MD.write((int)balek, -vitesse);}
	else
	{	MG.write((int)(-balek), vitesse);	
		MD.write((int) (-balek), vitesse);}
}


int main() {
	int choix;
	M0=0;M1=0;M2=0;

	Cdist D1(PA_9);
	Cdist D2(PB_13);//seul qui marche
	Cdist D3(PA_8);

	DigitalIn jack(PC_9);
	DigitalIn selec(PB_8);
	
	e2=1;//on eteind la pince
	e1=0;


	servo.com(0x03, CONTROL_MODE, JOIN_MODE);
	wait_ms(1000);

	choix=selec;//1 pour bleu 0 pour jaune
	if(selec) servo.com(0x03, LED_XL, LED_BLUE);
	else servo.com(0x03, LED_XL, LED_YELLOW);
	wait_ms(100);

	//servo.com(0x03, LED_XL, LED_GREEN);
	//wait_ms(100);
	
	while(!jack) wait(0.00001);

	// Timer de fin de match et fa
	tEnd.attach(HangForTheEntireInfinityOfTime, timestop);

	// Timer de lancement de la fusée (Funny Action)
	//tHylariousFuckingAction.attach(JustFreeTheDamnShuttleYouPervertXL320, timefa);

	// Variables de suivi du mouvement
	int enCours = 0;
	float distanceMillim = 0;
	float angleMillirad = 0;

	/*led = 1;
	// Tests
	linear(5, 100);
	wait_ms(250);
	linear(5, 100);
	wait_ms(250);

	while(1){
		while(D2.getDist() < 200){}
	
		rotate(20, 100);
		wait_ms(250);

	}*/



	led = 0;
	// Boucle principale
	while(milestones[enCours].type != END){

		switch(milestones[enCours].type){
			case MV_FRWRD:
				while(D2.getDist() < 200 ){}

				if(milestones[enCours].arg >= 0){
					linear(5, 50);
				}
				else{
					linear(-5, 50);
				}

				distanceMillim += 5;
				while(MD.read()!=0 || MG.read()!=0){}
				break;
			case DO_THE_BOOGIE_BOOGIE:	
				
				if(milestones[enCours].arg >= 0){
					rotate(choix*45-45*(1-choix), 50);
				}
				else{
					rotate(-choix*45+45*(1-choix), 50);
				}

				angleMillirad += 45;
				while(MD.read()!=0 || MG.read()!=0){}
				break;
			default:
				break;
		}


		if((milestones[enCours].type == MV_FRWRD && distanceMillim >= fabs(milestones[enCours].arg/7))
			|| (milestones[enCours].type == DO_THE_BOOGIE_BOOGIE && angleMillirad >= fabs(milestones[enCours].arg)))
		{
			led = 1;
			enCours++;
			distanceMillim = 0;
			angleMillirad = 0;
		}
	}

	while(1){
	}

	// The Holy Land of the Remotly-Commented-But-Maybe-Very-Useful-Pile-of-Code 
	
	/*DigitalOut M2(PC_1 et directRage
4);
	DigitalOut M1(PC_15);
	DigitalOut M0(PF_0);
	M0=0;M1=0;M2=0;
	Pap R(PA_14,PA_15,PC_2,PC_3,PF_1);*/

	//Pap E(PA_1,PA_4,PB_0,PC_1,PC_0); //pensez à mettre a jour rageX et directRage

	//servo.com(0x01,CONTROL_MODE,JOIN_MODE);
	//servo.com(0x01,GOAL_POSITION,100);
	// wait(5);
	 //while(servo.rcom(0x01,MOVING,1));
	 //servo.com(0x01,GOAL_VELOCITY,0);
	//servo.com(0x01,LED_XL,LED_BLUE);
	// wait(5);
	//open_p();
	//R.rot(100,-42);
	//while(R.read()!=0) wait(0.0001);
}
