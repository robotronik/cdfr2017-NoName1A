#include "capteur_distance.h"
#include "mbed.h"

Cdist::Cdist(PinName pin) : distance_(20),t_monte_(0),pin_(pin)
{
  pin_.rise( this, &Cdist::monte);
  pin_.fall( this, &Cdist::descente);

}


double Cdist::getDist(){
  return this->distance_;
}

void Cdist::monte(){
  this->t_monte_=us_ticker_read();
}
void Cdist::descente(){
  double dt=us_ticker_read()-this->t_monte_;
  if(dt<38000){
    this->distance_=dt*0.17279;
  }
}
