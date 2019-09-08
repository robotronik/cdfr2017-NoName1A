#ifndef MBED_PAP_H
#define MBED_PAP_H

#include "mbed.h"

#define SPR 1200
#define pi 3.141592654
#define Rroue 37.5

class SinglePap {
 
public:

    SinglePap(PinName pinSens, PinName pinPas, PinName en);

    void write(int nbr,float vitesse);

	void actualisateur();
	
	unsigned int read();

protected:
    DigitalOut dirPin;
	DigitalOut stepPin;
	DigitalOut _e;
    float _imps;
    unsigned int _nbrpas;
	Ticker actualiser;	
};



class Pap {
 
public:

    Pap(PinName pinsens1, PinName pinpas1,PinName pinsens2, PinName pinpas2, PinName e);

    void write(int nbr,float vitesse);

	void write_r(int nbr,float vitesse);

	void avancer(float distance,float vitesse);
	
	void tourner(float angle,float vitesse);

	void actualisateur();
	
	unsigned int read();

protected:
    DigitalOut dirpin1;
	DigitalOut steppin1;
	DigitalOut dirpin2;
	DigitalOut steppin2;
	DigitalOut _e;
    float _imps;
    unsigned int _nbrpas;
	Ticker actualiser;
	
};

 
#endif
