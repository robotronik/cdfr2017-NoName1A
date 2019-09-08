#include "mbed.h"
#include "Pap.h"


SinglePap::SinglePap(PinName pinSens, PinName pinPas, PinName en) : dirPin(pinSens), stepPin(pinPas), _e(en)
{return;}

void SinglePap::write(int nbr, float vitesse){
	_nbrpas=nbr;
	_imps=vitesse;

	_e=0;

	if(_imps<0){
		dirPin=1;
	}
	else{
		dirPin=0;
	}

	actualiser.detach();
	actualiser.attach(callback(this,&SinglePap::actualisateur),fabs(1/(2*_imps)));
}

void SinglePap::actualisateur(){
	if(_nbrpas != 0)
	{
		stepPin=!stepPin;
		_nbrpas=_nbrpas-(!stepPin);
	}
	else
	{
		actualiser.detach();
	}
}

unsigned int SinglePap::read(){
	return _nbrpas;
}



Pap::Pap(PinName pinsens1, PinName pinpas1,PinName pinsens2, PinName pinpas2,PinName e) : dirpin1(pinsens1),steppin1(pinpas1),dirpin2(pinsens2),steppin2(pinpas2),_e(e)
{
	_nbrpas = 0;
	return;
}
 

void Pap::write(int nbr, float vitesse){
	_nbrpas=nbr;
	_imps=vitesse;

	_e=0;

	if(_imps<0) {dirpin1=0;dirpin2=1;}
	else {dirpin1=1;dirpin2=0;}

	actualiser.detach();
	actualiser.attach(callback(this,&Pap::actualisateur),fabs(1/(2*_imps)));
}

void Pap::actualisateur(){
	if(_nbrpas != 0)
	{
		steppin1=!steppin1;
		steppin2=steppin1;
		_nbrpas=_nbrpas-(!steppin1);
	}
	else
	{
		actualiser.detach();
	}
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
	write((int)(distance*SPR/(3.14*2*Rroue)), vitesse);
	return;
}
	
void Pap::tourner(float angle,float vitesse)
{
	write((int)(angle*SPR*2*Rroue), vitesse);
	return;
}

unsigned int Pap::read(){
	return _nbrpas;
}
