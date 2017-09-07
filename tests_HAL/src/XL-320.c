#include "XL-320.h"

uint16_t XL_320_calc_crc(uint8_t *data,uint8_t size)
{
	uint16_t crc_table[256] = {

        0x0000, 0x8005, 0x800F, 0x000A, 0x801B, 0x001E, 0x0014, 0x8011,

        0x8033, 0x0036, 0x003C, 0x8039, 0x0028, 0x802D, 0x8027, 0x0022,

        0x8063, 0x0066, 0x006C, 0x8069, 0x0078, 0x807D, 0x8077, 0x0072,

        0x0050, 0x8055, 0x805F, 0x005A, 0x804B, 0x004E, 0x0044, 0x8041,

        0x80C3, 0x00C6, 0x00CC, 0x80C9, 0x00D8, 0x80DD, 0x80D7, 0x00D2,

        0x00F0, 0x80F5, 0x80FF, 0x00FA, 0x80EB, 0x00EE, 0x00E4, 0x80E1,

        0x00A0, 0x80A5, 0x80AF, 0x00AA, 0x80BB, 0x00BE, 0x00B4, 0x80B1,

        0x8093, 0x0096, 0x009C, 0x8099, 0x0088, 0x808D, 0x8087, 0x0082,

        0x8183, 0x0186, 0x018C, 0x8189, 0x0198, 0x819D, 0x8197, 0x0192,

        0x01B0, 0x81B5, 0x81BF, 0x01BA, 0x81AB, 0x01AE, 0x01A4, 0x81A1,

        0x01E0, 0x81E5, 0x81EF, 0x01EA, 0x81FB, 0x01FE, 0x01F4, 0x81F1,

        0x81D3, 0x01D6, 0x01DC, 0x81D9, 0x01C8, 0x81CD, 0x81C7, 0x01C2,

        0x0140, 0x8145, 0x814F, 0x014A, 0x815B, 0x015E, 0x0154, 0x8151,

        0x8173, 0x0176, 0x017C, 0x8179, 0x0168, 0x816D, 0x8167, 0x0162,

        0x8123, 0x0126, 0x012C, 0x8129, 0x0138, 0x813D, 0x8137, 0x0132,

        0x0110, 0x8115, 0x811F, 0x011A, 0x810B, 0x010E, 0x0104, 0x8101,

        0x8303, 0x0306, 0x030C, 0x8309, 0x0318, 0x831D, 0x8317, 0x0312,

        0x0330, 0x8335, 0x833F, 0x033A, 0x832B, 0x032E, 0x0324, 0x8321,

        0x0360, 0x8365, 0x836F, 0x036A, 0x837B, 0x037E, 0x0374, 0x8371,

        0x8353, 0x0356, 0x035C, 0x8359, 0x0348, 0x834D, 0x8347, 0x0342,

        0x03C0, 0x83C5, 0x83CF, 0x03CA, 0x83DB, 0x03DE, 0x03D4, 0x83D1,

        0x83F3, 0x03F6, 0x03FC, 0x83F9, 0x03E8, 0x83ED, 0x83E7, 0x03E2,

        0x83A3, 0x03A6, 0x03AC, 0x83A9, 0x03B8, 0x83BD, 0x83B7, 0x03B2,

        0x0390, 0x8395, 0x839F, 0x039A, 0x838B, 0x038E, 0x0384, 0x8381,

        0x0280, 0x8285, 0x828F, 0x028A, 0x829B, 0x029E, 0x0294, 0x8291,

        0x82B3, 0x02B6, 0x02BC, 0x82B9, 0x02A8, 0x82AD, 0x82A7, 0x02A2,

        0x82E3, 0x02E6, 0x02EC, 0x82E9, 0x02F8, 0x82FD, 0x82F7, 0x02F2,

        0x02D0, 0x82D5, 0x82DF, 0x02DA, 0x82CB, 0x02CE, 0x02C4, 0x82C1,

        0x8243, 0x0246, 0x024C, 0x8249, 0x0258, 0x825D, 0x8257, 0x0252,

        0x0270, 0x8275, 0x827F, 0x027A, 0x826B, 0x026E, 0x0264, 0x8261,

        0x0220, 0x8225, 0x822F, 0x022A, 0x823B, 0x023E, 0x0234, 0x8231,

        0x8213, 0x0216, 0x021C, 0x8219, 0x0208, 0x820D, 0x8207, 0x0202

    };

	uint16_t crc=0,i;
	uint8_t j;
	for(j = 0; j < size; j++)
    {

        i = ((uint16_t)(crc >> 8) ^ data[j]) & 0xFF;
        crc = (crc << 8) ^ crc_table[i];

    }
	return crc;
}

uint8_t XL_320_send(uint8_t size,PXL_320 pxl_320)
{
	uint16_t crc=XL_320_calc_crc(pxl_320->data,size);
	pxl_320->data[size]=(uint8_t)crc & 0x00FF;
	pxl_320->data[size+1]=(uint8_t) (crc>>8) & 0x00FF;
	HAL_GPIO_WritePin(pxl_320->dir_GPIOx,pxl_320->dir_GPIO_Pin,1);
	HAL_UART_Transmit(pxl_320->phuart, pxl_320->data, size+2,1000);
	HAL_GPIO_WritePin(pxl_320->dir_GPIOx,pxl_320->dir_GPIO_Pin,0);
	return 1;
}

void XL_320_prep(uint8_t id,uint16_t nparam,uint8_t inst,PXL_320 pxl_320)
{
	nparam+=3;
	pxl_320->data[0]=0xFF;
	pxl_320->data[1]=0xFF;
	pxl_320->data[2]=0xFD;
	pxl_320->data[3]=0;
	pxl_320->data[4]=id;
	pxl_320->data[5]=(uint8_t)nparam & 0x00FF;
	pxl_320->data[6]=(uint8_t) (nparam>>8) & 0x00FF;
	pxl_320->data[7]=inst;
	pxl_320->data[9]=0;//always at 0
}

uint8_t XL_320_send_w1(uint8_t id,uint8_t ad,uint8_t val,PXL_320 pxl_320)
{
	XL_320_prep(id,3,XL_320_WRITE,pxl_320);
	pxl_320->data[8]=ad;
	pxl_320->data[10]=val;
	return XL_320_send(11,pxl_320);
}

uint8_t XL_320_send_w2(uint8_t id,uint8_t ad,uint16_t val,PXL_320 pxl_320)
{
	XL_320_prep(id,4,XL_320_WRITE,pxl_320);
	pxl_320->data[8]=ad;
	pxl_320->data[10]=(uint8_t) val & 0x00FF;
	pxl_320->data[11]=(uint8_t) (val>>8) & 0x00FF;
	return XL_320_send(12,pxl_320);
}

uint8_t XL_320_send_r1(uint8_t id,uint8_t ad, uint8_t *val,PXL_320 pxl_320)
{
	XL_320_prep(id,4,XL_320_READ,pxl_320);
	pxl_320->data[8]=ad;
	pxl_320->data[10]=1;
	pxl_320->data[11]=0;
	XL_320_send(12,pxl_320);
	XL_320_rx(1,pxl_320);
	*val=pxl_320->data[5];
	return 1;
}

uint8_t XL_320_send_r2(uint8_t id,uint8_t ad, uint16_t *val,PXL_320 pxl_320)
{
	XL_320_prep(id,4,XL_320_READ,pxl_320);
	pxl_320->data[8]=ad;
	pxl_320->data[10]=2;
	pxl_320->data[11]=0;
	XL_320_send(12,pxl_320);
	XL_320_rx(2,pxl_320);
	*val=(uint16_t) pxl_320->data[5]+((pxl_320->data[6])<<8);
	return 1;
}

uint8_t XL_320_rx(uint16_t len,PXL_320 pxl_320)//penser a mettre time out verifier crc et erreur
{
	uint8_t i=0,tab[4]={0xFF,0xFF,0xFD,0x00},rx;
	while(i<4)
	{
		HAL_UART_Receive(pxl_320->phuart, &rx, 1,_XL_320_RX_TIME_OUT);
		if(rx==tab[i])
		{
			i++;
		}
	}
	HAL_UART_Receive(pxl_320->phuart, pxl_320->data, 7+len,_XL_320_RX_TIME_OUT);
	return 1;
}

uint8_t XL_320_set_control_mode(uint8_t id, uint8_t control_mode, PXL_320 pxl_320)
{
	if(control_mode>2 || control_mode<1) return _XL_320_OUT_OF_RANGE;
	return XL_320_send_w1(id,XL_320_CONTROL_MODE,control_mode,pxl_320);
}

uint8_t XL_320_set_goal_position_raw(uint8_t id, uint16_t goal, PXL_320 pxl_320)
{
	if(goal>1023) goal=1023;
	return XL_320_send_w2(id,XL_320_GOAL_POSITION,goal,pxl_320);
}

uint8_t XL_320_set_goal_position(uint8_t id, float goal, PXL_320 pxl_320)
{
	return XL_320_set_goal_position_raw(id, (uint16_t) goal*1023.0/300.0, pxl_320);
}

uint8_t XL_320_set_goal_velocity_raw(uint8_t id, uint8_t control_mode,uint16_t goal, PXL_320 pxl_320)
{
	if(control_mode==XL_320_JOIN_MODE && goal>1023) goal=1023;
	else if(control_mode==XL_320_WHEEL_MODE && goal>2047) goal=2047;
	else if (control_mode<1 || control_mode>2) return _XL_320_OUT_OF_RANGE;
	return XL_320_send_w2(id,XL_320_GOAL_VELOCITY,goal,pxl_320);
}

uint8_t XL_320_set_goal_velocity(uint8_t id,uint8_t control_mode,float goal, PXL_320 pxl_320)
{
	if(goal>=0) return XL_320_set_goal_velocity_raw(id, control_mode,(uint16_t) goal*1023.0/114.0, pxl_320);
	return XL_320_set_goal_velocity_raw(id, control_mode,(uint16_t) 1024.0-(goal*1023.0/114.0), pxl_320);
}

uint8_t XL_320_set_P_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320)
{
	if(gain>254) gain=254;
	return XL_320_send_w1(id,XL_320_P_GAIN,gain,pxl_320);
}

uint8_t XL_320_set_I_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320)
{
	if(gain>254) gain=254;
	return XL_320_send_w1(id,XL_320_I_GAIN,gain,pxl_320);
}

uint8_t XL_320_set_D_GAIN(uint8_t id,uint8_t gain, PXL_320 pxl_320)
{
	if(gain>254) gain=254;
	return XL_320_send_w1(id,XL_320_D_GAIN,gain,pxl_320);
}

uint8_t XL_320_set_torque_limit_raw(uint8_t id,uint16_t limit, PXL_320 pxl_320)
{
	if(limit>1023) limit=1023;
	return XL_320_send_w2(id,XL_320_GOAL_TORQUE,limit,pxl_320);
}

uint8_t XL_320_set_torque_limit(uint8_t id,float limit, PXL_320 pxl_320)
{
 return XL_320_set_torque_limit_raw(id,(uint16_t) limit*1023.0/100.0,pxl_320);
}

uint8_t XL_320_set_punch_raw(uint8_t id, uint16_t value,PXL_320 pxl_320)
{
	if(value<32) value=32;
	else if(value>1023) value=1023;
	return XL_320_send_w2(id,XL_320_PUNCH,value,pxl_320);
}

uint8_t XL_320_set_punch(uint8_t id, float value,PXL_320 pxl_320)
{
	return XL_320_set_punch_raw(id,(uint16_t) 32.0+(value*(1023.0-32.0)/100.0),pxl_320);
}

uint8_t XL_320_set_torque_enable(uint8_t id,uint8_t value,PXL_320 pxl_320)//0 or 1
{
	if(value>1) value=1;
	return XL_320_send_w1(id,XL_320_TORQUE_ENABLE,value,pxl_320);
}

uint8_t XL_320_led(uint8_t id,uint8_t color,PXL_320 pxl_320)
{
	if(color>7) return _XL_320_OUT_OF_RANGE;
	return XL_320_send_w1(id,XL_320_LED_XL,color,pxl_320);
}

uint8_t XL_320_reset_alarm(uint8_t id,uint8_t *error,PXL_320 pxl_320)
{
	return XL_320_send_w1(id,XL_320_ALARM_SHUTDOWN,0,pxl_320);
}

uint8_t XL_320_set_id(uint8_t id,uint8_t newid, PXL_320 pxl_320)
{
	return XL_320_send_w1(id,XL_320_ID,newid,pxl_320);
}

uint8_t XL_320_set_baudrate(uint8_t id,uint8_t baudrate, PXL_320 pxl_320)
{
	return XL_320_send_w1(id,XL_320_BAUDRATE,baudrate,pxl_320);
}

uint8_t XL_320_set_return(uint8_t id,uint8_t mode,PXL_320 pxl_320)
{
	return XL_320_send_w1(id, XL_320_RETURN_LEVEL,mode,pxl_320);
}

uint8_t XL_320_setup(PXL_320 pxl_320)
{
	HAL_GPIO_WritePin(pxl_320->dir_GPIOx,pxl_320->dir_GPIO_Pin,0);
	return 1;
}



uint8_t XL_320_get_position_raw(uint8_t id, uint16_t *position,PXL_320 pxl_320)
{
	XL_320_send_r2(id,XL_320_PRESENT_POSITION,position,pxl_320);
	return 1;
}
