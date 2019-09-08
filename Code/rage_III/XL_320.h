#ifndef XL_320_H
#define	XL_320_H
#include "mbed.h"

#define BROADCAST 254

typedef enum {
	LED_OFF=0,
	LED_RED=0b001,
	LED_GREEN=0b010,
	LED_YELLOW=0b011,
	LED_BLUE=0b100,
	LED_PINK=0b101,
	LED_BLUE_GREEN=0b110,
	LED_WHITE=0b111,
} XL_320_led_color_t;

typedef enum{
	V0=9600,
	V1=57600,
	V2=115200,
	V3=1000000,
} XL_320_com_speed;

typedef enum {
	WHEEL_MODE=1,
	JOIN_MODE=2,
} XL_320_control_mode_t;

typedef enum {
	PING=0x01,
	READ=0x02,
	WRITE=0x03,
	REG_WRITE=0x04,
	ACTION=0x05,
	FACTORY_RESET=0x06,
	REBOOT=0x08,
	STATUS=0x55,
	SYNC_READ=0x82,
	SYNC_WRITE=0x83,
	BULK_READ=0x92,
	BULK_WRITE=0x93,
} XL_320_instruction_t;

typedef enum{
	MODEL_NUMBER=0,
	FIRMWARE_VERSION=2,
	ID=3,
	BAUDRATE=4,
	RETURN_DELAY_TIME=5,
	CW_ANGLE_LIMIT=6,
	CCW_ANGLE_LIMIT=8,
	CONTROL_MODE=11,
	LIMIT_TEMPERATURE=12,
	LOWER_LIMIT_VOLTAGE=13,
	UPPER_LIMIT_VOLTAGE=14,
	MAX_TORQUE=15,
	RETURN_LEVEL=17,
	ALARM_SHUTDOWN=18,
} XL_320_EEPROM;

typedef enum{
	TORQUE_ENABLE=24,
	LED_XL=25,
	D_GAIN=27,
	I_GAIN=28,
	P_GAIN=29,
	GOAL_POSITION=30,
	GOAL_VELOCITY=32,
	GOAL_TORQUE=35,
	PRESENT_POSITION=37,
	PRESENT_SPEED=39,
	PRESENT_LOAD=41,
	PRESENT_VOLTAGE=45,
	PRESENT_TEMPERATURE=46,
	REGISTERED_INSTRUCTION=47,
	MOVING=49,
	HDW_ERROR_STATUS=50,
	PUNCH=51,
}XL_320_RAM;





class XL{

public:

	XL(PinName pinTx, PinName pinRx, int vitesse, PinName pinsens);

	unsigned short calc_crc(unsigned char *data_blk_ptr, unsigned short data_blk_size);//calcul du crc avec comme parametre la trame à envoyer et sa longueur(celle envoyée)
	unsigned char envoi_trame(unsigned char *trame,unsigned short taille);
	unsigned char com(unsigned char id,unsigned short ad, unsigned short valeur);//changement immédiat de la valeur
	unsigned int rcom(unsigned char id,unsigned short ad, unsigned short longueur);//lecture immédiate de la valeur
	
protected:
	RawSerial _liaison;
	DigitalOut _dir;
	int _v;
};

#endif
