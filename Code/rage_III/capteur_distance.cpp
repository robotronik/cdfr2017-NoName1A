#include "capteur_distance.h"
#include "mbed.h"

Cdist::Cdist(PinName pin) : pin_(pin)
{
  pin_.rise( callback(this, &Cdist::monte));
  pin_.fall( callback(this, &Cdist::descente));

}


double Cdist::getDist(){
  return distance_;
}

void Cdist::monte(){
  t_monte_=us_ticker_read();
}
void Cdist::descente(){
  double dt=us_ticker_read()-t_monte_;
  if(dt<38000){
    distance_=dt*0.17279;
  }
}
