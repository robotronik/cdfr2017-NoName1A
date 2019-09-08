#ifndef MBED_PAP_H
#define MBED_PAP_H

#include "mbed.h"

/*class DoublePap {

public:
	DoublePap();
	
	void write();
	void linear();

	void actualisateur();

	unsigned int lecture();

protected:
	DigitalOut dirG, dirD;
	DigitalOut stepG, stepD;
	DigitalOut enable;

	float _impPerS;
	float _impPerS_prec;
	float _accImpPerS;

	unsigned int _nbrPasG, _nbrPasD;
	char _inv;
	
	Ticker actualiser;

};*/

class Pap {
 
public:

    Pap(PinName pinsens, PinName pinpas);

    void write(int nbr,float vitesse);//nbr de pas>0 , vitesse en pas par secondes>0, accélération en pas par seconde >0 ou <0

//	void linear(int millis, float speed, float diam);

	void actualisateur();
	
	unsigned int read();//dit si le moteur est en mouvement ou non

protected:
    DigitalOut dirpin;
	DigitalOut steppin;
    float _imps;
    unsigned int _nbrpas;
	Ticker actualiser;
	
};

 
#endif
