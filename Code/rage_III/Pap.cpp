#include "mbed.h"
#include "Pap.h"

#include "XL_320.h"

#define SPR 1200
#define pi 3.141592654
#define Rroue 37.5

Pap::Pap(PinName pinsens1, PinName pinpas1,PinName pinsens2, PinName pinpas2,PinName e) : dirpin1(pinsens1),steppin1(pinpas1),dirpin2(pinsens2),steppin2(pinpas2),_e(e)
{_e=0;}
 

void Pap::write(int nbr, float vitesse){
	_nbrpas=nbr;
	_imps=vitesse;
	if(_imps<0) {dirpin1=1;dirpin2=0;}
	else {dirpin1=0;dirpin2=1;}
	actualiser.detach();
	actualiser.attach(callback(this,&Pap::actualisateur),fabs(1/(2*_imps)));
}

void Pap::actualisateur(){
		steppin1=!steppin1;
		steppin2=steppin1;
		_nbrpas=_nbrpas-(!steppin1);

}

void Pap::write_r(int nbr,float vitesse)
{
	_nbrpas=nbr;
	_imps=vitesse;
	if(_imps<0) {dirpin1=0;dirpin2=0;}
	else {dirpin1=1;dirpin2=1;}
	actualiser.detach();
	actualiser.attach(callback(this,&Pap::actualisateur),fabs(1/(2*_imps)));
}


void Pap::avancer(float distance,float vitesse)//en mm et mm/s
{
	return;
}
	
void Pap::tourner(float angle,float vitesse)
{
	return;
}

unsigned int Pap::read(){
	return _nbrpas;
}
