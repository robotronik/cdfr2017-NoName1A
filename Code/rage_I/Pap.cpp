#include "mbed.h"
#include "Pap.h"

#include "XL_320.h"

#define StepPerRev 300


/*DoublePap::DoublePap(PinName SensG, PinName SensD, PinName PasG, PinName PasD, PinName en) : dirG(SensG), dirD(SensD), stepG(PasG), stepD(PasD), enable(en)
{return;}*/

/*void DoublePap::write(int nbr, float vitesse, float acc){
	_nbrPasD = nbr;
	_nbrPasG = nbr;

	_impPerS = vitesse;
	_accPerS = acc;

	enable = 0;

	
	if(_impPerS != 0)
	{
		actualiser.detach();
		actualiser.attach(callback(this,&Pap::actualisateur), 1/(2*fabs(_impPerS)));
	}
	else{
		// Go Fuck Yourself
	}
}*/

/*void DoublePap::actualisateur(){
	if(_nbrPasD !=0 || _nbrPasG != 0)
	{
		stepG = !stepG;
		stepD = !stepD;

		_nbrPasG -= !stepG;
		_nbrPasD -= !stepD;

		if(!stepG || !stepD) // le moteur G ou droit viens de faire un pas
		{
			if(_impPerS >= 0)
			{
				_inv = 0; // On inverse pas le sens des moteurs
			}
			else
			{
				_impPerS = -impPerS;
				_inv = 1;
			}

			
	
		_nbrpas=_nbrpas-(!steppin);
		if(_aimps!=0 && !steppin)//on vient de faire un pas
		{
			if(_imps>=0) 
			{
				_inv=0;
			}
			else 
			{
				_imps=-_imps;
				_aimps=-_aimps;
				_inv=1;
			}
	
			_imps_prec=_imps;
			
			if(_imps*_imps+2*_aimps>0)
			{
				_imps=sqrt(_imps*_imps+2*_aimps);
			}
			else
			{
				_imps=-sqrt(_imps*_imps-2*_aimps);
			}
		
			actualiser.detach();
			actualiser.attach(callback(this,&Pap::actualisateur), fabs((-_imps_prec+_imps)/(2*_aimps)));
	
			if(_inv)
			{
				_imps=-_imps;
				_aimps=-_aimps;
			}
			if(_imps>0)dirpin=1;
			else dirpin=0;
		}
	}
	else
	{actualiser.detach();}

}*/
 
Pap::Pap(PinName pinsens, PinName pinpas) : dirpin(pinsens),steppin(pinpas)
{return;}
 
/*void Pap::linear(int millis, float speed, float diam){
	int steps = (int)(millis*StepPerRev/(3.14*diam));
	Serial pc(USBTX,USBRX);
	pc.printf("%d\n\r", steps);
	
	write((int)(millis*StepPerRev/(3.14*diam)), speed, 0);
}*/

void Pap::write(int nbr, float vitesse){
	_nbrpas=nbr;
	_imps=vitesse;
	if(_imps<0) dirpin=0;
	else dirpin=1;
	actualiser.detach();
	actualiser.attach(callback(this,&Pap::actualisateur),fabs(1/(2*_imps)));
}

void Pap::actualisateur(){
		steppin=!steppin;
		_nbrpas=_nbrpas-(!steppin);

}

unsigned int Pap::read(){
	return _nbrpas;
}
