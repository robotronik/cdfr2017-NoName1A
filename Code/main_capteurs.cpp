#include "mbed.h"
//#include "XL_320.h"
#include "Pap.h"
#include "capteur_distance.h"

int main() {
	DigitalOut led(LED1);
	Cdist D1(PA_9);//ar
	Cdist D2(PB_13);//av gauche
	Cdist D3(PA_8);//av droite ne pas utiliser
	DigitalIn a(PC_9);
	DigitalIn b(PB_8);
	DigitalIn c(PB_9);
	
	Serial pc(USBTX,USBRX);

	while(1)	
	{
		pc.printf("%d %d %d\n\r",(int)D1.getDist(), (int)D2.getDist(), (int)D3.getDist());
		wait(0.1);
		if(D2.getDist()<300 || D1.getDist()<300) led=1;
		
		else led=0;
	}

}
