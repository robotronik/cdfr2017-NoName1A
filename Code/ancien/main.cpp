#include "mbed.h"
#include "XL_320.h"

int main() {
	Serial XL(PC_12,PD_2,V3);
	DigitalOut led(LED1);
	DigitalOut dir(PA_13);
	unsigned short id1=0x01;
	int i, v[4]={9600,57600,115200,1000000};
	while(1)	
	{
		ecom(XL,dir,id1,GOAL_POSITION,250);
		ecom(XL,dir, BROADCAST,LED_XL,LED_RED);
		led=1;
		wait(1);
		ecom(XL,dir,id1,GOAL_POSITION,500);
		ecom(XL,dir, BROADCAST,LED_XL,LED_BLUE_GREEN);
		led=0;
		wait(1);
	}
	led=1;

}
