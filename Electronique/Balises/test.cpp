#include "mbed.h"
 
Serial pc(USBTX, USBRX,9600);

DigitalOut sel0(D9), sel1(D10), sel2(D11), led(D13);
AnalogIn   a0(A0),a1(A1),a2(A2),a3(A3),a4(A4),a5(A5);


int main() {
	int i=0;
	float lecture;
    while (true) 
	{
		wait(0.5);
		lecture=a0.read();
		pc.printf("lecture=%f\n",lecture);
		i=(i+1)%2;
		led=i;
    }
}

