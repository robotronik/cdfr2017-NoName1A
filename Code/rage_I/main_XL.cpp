#include "mbed.h"
#include "XL_320.h"

//inverser 3 et 5
//tous a V2

int main() {
	//Serial s(PC_10,PC_11,V3);
	XL servo(PC_12,PD_2,V2,PA_13);
	//Pap R1(PA_14,PA_15,PF_1);
	//Pap R2(PC_2,PC_3,PF_1);
	//Pap P1(PA_1,PA_4,PC_0); 
	//Pap P2(PB_0,PC_1,PC_0); 
	DigitalOut led(LED1);
	//DigitalOut test(PA_13);

	//servo.com(BROADCAST,ID,7);
	//servo.com(0x07,BAUDRATE,2);
	//servo.com(0x07,LED_XL,LED_BLUE);
	servo.com(BROADCAST,LED_XL,LED_YELLOW);
	wait(1.0);

       	servo.com(0x02,LED_XL,LED_GREEN);
	wait(0.01);
	servo.com(0x07,LED_XL,LED_BLUE);
	
	/*while(1)	
	{
	        servo.com(BROADCAST, LED_XL,LED_BLUE);
		wait(1.0);

		servo.com(BROADCAST, LED_XL,LED_RED);
		wait(1.0);
		}*/

}
