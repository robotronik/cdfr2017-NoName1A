#include "mbed.h"
 
//Serial pc(USBTX, USBRX,9600);
Serial XL(D1, D0,1000000);

DigitalOut led(D9);


int main() {
	char i=0;
	unsigned char id=254,instruction=6,parametre1,parametre2,checksum,longe=2;//on envoi à tous
	unsigned int check;
	int v[4]={9600,57600,115200,1000000};
	
	id=254;instruction=6;longe=2;//on envoi à tous

	
	//calcul du checksum
	check=id+longe+instruction;
	checksum=(unsigned char)check;
	checksum=~checksum;
	

	XL.putc(255);//2 bits de bébut
	XL.putc(255);
	XL.putc(id);
	XL.putc(longe);
	XL.putc(instruction);
	XL.putc(checksum);
	
	//calcul du checksum
	instruction=3;
	longe=4;
	parametre1=37;
	parametre2=1;
	id=254;

	check=id+longe+instruction+parametre1+parametre2;
	checksum=(unsigned char)check;
	checksum=~checksum;
	
	

	XL.putc(255);//2 bits de bébut
	XL.putc(255);
	XL.putc(id);
	XL.putc(longe);
	XL.putc(instruction);
	XL.putc(parametre1);
	XL.putc(parametre2);
	XL.putc(checksum);

	led=!led;
	wait(1);

}
}
