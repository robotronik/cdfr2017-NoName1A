#include "mbed.h"
#include "XL_320.h"

int main() {
	Serial XL(D1, D0,V3);
	DigitalOut led(LED1);
	DigitalOut dir(D9);
	unsigned short id1=0x01;
	int i, v[4]={9600,57600,115200,1000000};
	while(1)	
	{
		ecom(XL,dir,id1,GOAL_POSITION,250);
		ecom(XL,dir, BROADCAST,LED_XL,LED_RED);
		wait(5);
		ecom(XL,dir,id1,GOAL_POSITION,500);
		ecom(XL,dir, BROADCAST,LED_XL,LED_BLUE_GREEN);
		wait(5);
	}
	led=1;

}
