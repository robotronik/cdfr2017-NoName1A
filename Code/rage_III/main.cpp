#include "mbed.h"
#include "XL_320.h"
#include "Pap.h"

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


int main() {
	//Stop stepsticks
	DigitalOut e1(PF_1);
	DigitalOut e2(PC_0);
	e1 = e2 = 1;

	/*XL servo=XL(PC_12,PD_2,V2,PA_13);
	servo.com(XL_FA, TORQUE_ENABLE, 0x01);
	wait(100);
	servo.com(XL_FA, MAX_TORQUE, 1023);
	wait(100);
	servo.com(XL_FA, CW_ANGLE_LIMIT, 0);
	wait(100);
	servo.com(XL_FA, CCW_ANGLE_LIMIT, 1023);
	wait(100);
	servo.com(XL_FA, CONTROL_MODE, JOIN_MODE);
	wait(100);
	servo.com(XL_FA, GOAL_POSITION, 500);*/

	XL servo = XL(PC_12, PD_2, V0, PA_13);

	servo.com(0x03, BAUDRATE, 0x02);
	


	
	/*DigitalOut M2(PC_1 et directRage
4);
	DigitalOut M1(PC_15);
	DigitalOut M0(PF_0);
	M0=0;M1=0;M2=0;
	Pap R(PA_14,PA_15,PC_2,PC_3,PF_1);*/

	//Pap E(PA_1,PA_4,PB_0,PC_1,PC_0); //pensez à mettre a jour rageX et directRage

	DigitalOut led(LED1);
	
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
