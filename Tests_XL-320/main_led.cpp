#include "mbed.h"
 
Serial pc(USBTX, USBRX,9600);
//Serial stm(D13, D12,9600);

DigitalOut led(LED1);
char buffer[8];

int main() {
	int i=0;
    while (true) 
	{
		led=1;
		if(pc.readable())
		{
			led=0;
			pc.scanf("%s", &buffer);//attend un \n
			pc.printf("%s", buffer);
		}
    }
}
