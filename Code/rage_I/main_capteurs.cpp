#include "mbed.h"
//#include "XL_320.h"
#include "Pap.h"
#include "capteur_distance.h"

int main() {
	DigitalOut led(LED1);
	Cdist D1(PB_10);
	Cdist D2(PA_8);
	Cdist D3(PB_13);
	DigitalIn a(PC_9);
	DigitalIn b(PB_8);
	DigitalIn c(PB_9);
	
	Serial pc(USBTX,USBRX);

	while(1)	
	{
		/*pc.printf("%d\n\r",(int)D1.getDist());
		wait(0.1);*/
		//if(D1.getDist()<300 || D2.getDist()<300 || D3.getDist()<300) led=1;
		if(a || b|| c ) led=1;		
		else led=0;
	}

}
