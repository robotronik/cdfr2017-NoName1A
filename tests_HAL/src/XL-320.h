#ifndef __XL_320_H
#define __XL_320_H
//ajouter tableau mode de controle chaque servo
//arrondir
//gerer w1 w2 et r1 r2 en fonction de la configuration
//ajouter time out
//delai entre 2 envois

#include "stm32f4xx_hal.h"

typedef enum {
	XL_320_LED_OFF=0,
	XL_320_LED_RED=0b001,
	XL_320_LED_GREEN=0b010,
	XL_320_LED_YELLOW=0b011,
	XL_320_LED_BLUE=0b100,
	XL_320_LED_PINK=0b101,
	XL_320_LED_BLUE_GREEN=0b110,
	XL_320_LED_WHITE=0b111,
} XL_320_led_color_t;

typedef enum{
	XL_320_V0=9600,
	XL_320_V1=57600,
	XL_320_V2=115200,
	XL_320_V3=1000000,
} XL_320_com_speed;

typedef enum {
	XL_320_WHEEL_MODE=1,
	XL_320_JOIN_MODE=2,
} XL_320_control_mode_t;

typedef enum {
	XL_320_PING=0x01,
	XL_320_READ=0x02,
	XL_320_WRITE=0x03,
	XL_320_REG_WRITE=0x04,
	XL_320_ACTION=0x05,
	XL_320_FACTORY_RESET=0x06,
	XL_320_REBOOT=0x08,
	XL_320_STATUS=0x55,
	XL_320_SYNC_READ=0x82,
	XL_320_SYNC_WRITE=0x83,
	XL_320_BULK_READ=0x92,
	XL_320_BULK_WRITE=0x93,
} XL_320_instruction_t;

typedef enum{
	XL_320_MODEL_NUMBER=0,
	XL_320_FIRMWARE_VERSION=2,
	XL_320_ID=3,
	XL_320_BAUDRATE=4,
	XL_320_RETURN_DELAY_TIME=5,
	XL_320_CW_ANGLE_LIMIT=6,
	XL_320_CCW_ANGLE_LIMIT=8,
	XL_320_CONTROL_MODE=11,
	XL_320_LIMIT_TEMPERATURE=12,
	XL_320_LOWER_LIMIT_VOLTAGE=13,
	XL_320_UPPER_LIMIT_VOLTAGE=14,
	XL_320_MAX_TORQUE=15,
	XL_320_RETURN_LEVEL=17,
	XL_320_ALARM_SHUTDOWN=18,
} XL_320_EEPROM;

typedef enum{
	XL_320_TORQUE_ENABLE=24,
	XL_320_LED_XL=25,
	XL_320_D_GAIN=27,
	XL_320_I_GAIN=28,
	XL_320_P_GAIN=29,
	XL_320_GOAL_POSITION=30,
	XL_320_GOAL_VELOCITY=32,
	XL_320_GOAL_TORQUE=35,
	XL_320_PRESENT_POSITION=37,
	XL_320_PRESENT_SPEED=39,
	XL_320_PRESENT_LOAD=41,
	XL_320_PRESENT_VOLTAGE=45,
	XL_320_PRESENT_TEMPERATURE=46,
	XL_320_REGISTERED_INSTRUCTION=47,
	XL_320_MOVING=49,
	XL_320_HDW_ERROR_STATUS=50,
	XL_320_PUNCH=51,
}XL_320_RAM;

#define _XL_320_RX_TIME_OUT 100
#define _XL_320_DATA_SIZE 20
#define _XL_320_OUT_OF_RANGE 2
#define _XL_320_N_SERVO 1

typedef struct PARAM_SERVO_S{
	uint8_t id;
	uint8_t control_mode;
	uint8_t torque_enable;
	uint8_t p_gain;
	uint8_t i_gain;
	uint8_t d_gain;
	float goal_velocity;//only for join mode, -1 if nothing
	uint8_t punch;
}PARAM_SERVO;

typedef struct PARAM_GLOBAL_S{
	uint8_t speed;
	uint8_t return_delay_time;
	uint16_t cw_angle_limit;
	uint16_t ccw_angle_limit;
	uint8_t limit_temperature;
	uint8_t lower_limit_voltage;
	uint8_t upper_limit_voltage;
	uint16_t max_torque;
	uint16_t return_level;
}PARAM_GLOBAL;

typedef struct XL_320_struct{
	UART_HandleTypeDef *phuart;
	GPIO_TypeDef * dir_GPIOx;
	uint16_t dir_GPIO_Pin;
	uint8_t data[_XL_320_DATA_SIZE];
	PARAM_GLOBAL pg;
	PARAM_SERVO ps[_XL_320_N_SERVO];
}XL_320;

typedef XL_320 *PXL_320;

uint16_t XL_320_calc_crc(uint8_t *data,uint8_t size);//return the crc of data
uint8_t XL_320_send(uint8_t size,PXL_320 pxl_320);//sends data and adds crc on uart, size to send nparameters+8,return 1 ok, 0 pb
void XL_320_prep(uint8_t id,uint16_t nparam,uint8_t inst,PXL_320 pxl_320);//parameters starts at data[8], let param data[9]
uint8_t XL_320_send_w1(uint8_t id,uint8_t ad,uint8_t val,PXL_320 pxl_320);
uint8_t XL_320_send_w2(uint8_t id,uint8_t ad,uint16_t val,PXL_320 pxl_320);
uint8_t XL_320_send_r1(uint8_t id,uint8_t ad,uint8_t *val,PXL_320 pxl_320);
uint8_t XL_320_send_r2(uint8_t id,uint8_t ad,uint16_t *val,PXL_320 pxl_320);
uint8_t XL_320_rx(uint16_t len,PXL_320 pxl_320);

//setup
uint8_t XL_320_setup(PXL_320 pxl_320);
//end setup

//rw in write only in EEPROM use as less as possible
uint8_t XL_320_set_id(uint8_t id,uint8_t newid, PXL_320 pxl_320);
uint8_t XL_320_set_baudrate(uint8_t id,uint8_t baudrate, PXL_320 pxl_320);
uint8_t XL_320_set_return(uint8_t id,uint8_t mode,PXL_320 pxl_320);
uint8_t XL_320_set_control_mode(uint8_t id, uint8_t control_mode, PXL_320 pxl_320);
uint8_t XL_320_reset_alarm(uint8_t id,uint8_t *error,PXL_320 pxl_320);//have to restore torque
//end write in EEPROM

//rw in write only in ram
uint8_t XL_320_set_goal_position_raw(uint8_t id, uint16_t goal, PXL_320 pxl_320);
uint8_t XL_320_set_goal_position(uint8_t id, float goal, PXL_320 pxl_320);//angle max 300°

uint8_t XL_320_set_goal_velocity_raw(uint8_t id, uint8_t control_mode,uint16_t goal, PXL_320 pxl_320);
uint8_t XL_320_set_goal_velocity(uint8_t id,uint8_t control_mode,float goal, PXL_320 pxl_320);//join mode max 114rpm, wheel +-114rpm

uint8_t XL_320_set_P_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320);
uint8_t XL_320_set_I_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320);
uint8_t XL_320_set_D_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320);

uint8_t XL_320_set_torque_limit_raw(uint8_t id,uint16_t limit, PXL_320 pxl_320);//0 if alarm on
uint8_t XL_320_set_torque_limit(uint8_t id,float limit, PXL_320 pxl_320);//torque in percent

uint8_t XL_320_set_punch_raw(uint8_t id, uint16_t value,PXL_320 pxl_320);//max curent to motor
uint8_t XL_320_set_punch(uint8_t id, float value,PXL_320 pxl_320);//0% min 100% max

uint8_t XL_320_set_torque_enable(uint8_t id,uint8_t value,PXL_320 pxl_320);//0 or 1

uint8_t XL_320_led(uint8_t id,uint8_t color,PXL_320 pxl_320);//return send, or 2 if param out of range
//end write ram

//read in ram
uint8_t XL_320_get_position_raw(uint8_t id, uint16_t *position,PXL_320 pxl_320);

//end read in ram

#endif
