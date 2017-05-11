#include "mbed.h"
#include "capteur_distance.h"
int main(){
  Cdist capt1(D4);
  Serial device(USBTX, USBRX);
  while (true) {
    device.printf("%d \n\r",(int)capt1.getDist());
  }
}



