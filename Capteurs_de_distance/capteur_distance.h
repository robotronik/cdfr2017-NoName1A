#include "mbed.h"
#ifndef C_DIST
#define C_DIST

class Cdist{
 public:
  // Constructeurs
  Cdist(PinName pin);
  //Accesseurs et mutateurs
  void monte();
  void descente();
  double getDist();
;

 private: 
  InterruptIn pin_;
  double distance_;//distace capteur objet en mm
  double t_monte_;//temps ecoule entre le dernier front montant et la mise sous tension du circuit en us
};

#endif
