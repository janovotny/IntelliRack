/********************************************************************
 * COPYRIGHT --  
 ********************************************************************
 * Program: drvman
 * File: drvman.c
 * Author: florian
 * Created: February 05, 2013
 ********************************************************************
 * Implementation of program drvman
 ********************************************************************/

#include <bur/plctypes.h>
#include <AsDefault.h>
#include <AsIOAcc.h>


void _INIT _drvman(void){
	startref=0;
	ReferenceOk=0;
}

/****h* Drive/drvman
* NAME
* 	Drive -- Collection of functions for starting and configuring drives
* FUNCTION
* 	This module provides the state machine required to move the drives
*
*****/

enum Mode{
	POS_MODE=1, SPEED_MODE, NEG_HOMING=-128, POS_HOMING=-127, MOVE_SETPOS2,MOVE_SETPOS1, TWO_POS, MOVE_ON_TRIG, SET_ACT_POS, DIST_MODE,
};


#define SHUTDOWN(ctrl) (ctrl=((ctrl&(~0x81)))|0x6)
#define SWITCH_ON(ctrl) ((ctrl=((ctrl&(~0x88)))|0x7))
#define DSIABLE_VOLTAGE(ctrl) (ctrl=(ctrl&(~0x82)))
#define QUICKSTOP(ctrl) (ctrl=(ctrl&(~0x84))|0x2),
#define DISABLE_OP(ctrl) (ctrl=(ctrl&(~0x88))|0x7)
#define ENABLE_OP(ctrl) (ctrl=(ctrl&(~0x80))|0xF)
#define ERR_ACK(ctrl) (ctrl^=(0x80))
#define USE_ENC(ctrl) (ctrl|=(0x4000))

#define MM_POS_STEPPER_POS_FACTOR (256)

SW_ON_DISSABLED=0x2E0;
RDY_S_ON=0x221;
SW_ON=0x233;
OP_ENABLED=0x237;
QUICK_STOP=0x217;
FAULT_REACTION_ACTIVE=0x20F;
FAULT=0x8;

enum StateMachine{
	NotReadyToSwitchOn, SwitchOnDisabled, ReadyToSwitchOn, SwitchedOn, OperationEnabled, FauldReactionActive, Fault, QuickStopActive,
};

char GET_STATUS(UINT reg, UINT stat){
	UDINT tmp=reg;
	tmp&=0x1BFF;
	if(stat==SW_ON_DISSABLED){
		if(tmp==0x2E0||tmp==0x260||tmp==0x240)return 1;
		else return 0;
	}
	return(tmp^stat)?0:1;
}

/****f* Drive/drvref
* FUNCTION
* 	This function references the drive
* SOURCE
*/ 
int drvref(){
	if(!startref){
		if(RefPosV){
			Drive[0].SetPos=1500;
			Drive[0].Mode=2;
			return 0;
		}else if(RefPosH){
			Drive[2].SetPos=-1500;
			Drive[2].Mode=2;
			Drive[3].SetPos=-1500;
			Drive[3].Mode=2;
			return 0;
		} else {
			startref=1;
		}
	}else{
		Drive[0].Mode=0;
		Drive[2].Mode=0;
		Drive[3].Mode=0;

		if(!RefPosV){
			Drive[0].SetPos=-500;
			Drive[0].Mode=2;
			return 0;
		}else{
			Drive[0].Mode=0;
			Drive[0].ZeroOffset=Drive[0].GetPos;
		}

		if(!RefPosH){
			Drive[2].SetPos=500;
			Drive[2].Mode=2;
			Drive[3].SetPos=500;
			Drive[3].Mode=2;
		}else{
			Drive[2].Mode=0;
			Drive[2].ZeroOffset=Drive[2].GetPos;
			Drive[3].Mode=0;
			Drive[3].ZeroOffset=Drive[3].GetPos;
		}
		
		return RefPosH&RefPosV;
	}
	return 0;
}
/*****/


/****f* Drive/drvman
* FUNCTION
* 	This cyclicaly called function provides the state machine
* SOURCE
*/ 
void _CYCLIC drvman(void)
{
	int i;
	
	EnableACP1=1;
	EnableACP2=1;
	EnableCDRom=1;
	
	
	//Use no-op mode when not set later
	Drive[0].Mode=0;
	Drive[2].Mode=0;
	Drive[3].Mode=0;

	
	if(!ReferenceOk){
		ReferenceOk=drvref();
	}else{

		if(((Drive[0].ZeroOffset+vPOSmm*MM_POS_STEPPER_POS_FACTOR)-Drive[0].GetPos)!=0)
			Drive[0].Mode=SPEED_MODE;
		else
			Drive[0].Mode=0;
		
		if(((Drive[2].ZeroOffset+((-hPOSmm)*MM_POS_STEPPER_POS_FACTOR))-Drive[2].GetPos)!=0)
			Drive[2].Mode=SPEED_MODE;
		else
			Drive[2].Mode=0;

		if(((Drive[3].ZeroOffset+((-hPOSmm)*MM_POS_STEPPER_POS_FACTOR))-Drive[3].GetPos)!=0)
			Drive[3].Mode=SPEED_MODE;
		else
			Drive[3].Mode=0;
		
		//Adjust speed depending on distance to move
		Drive[0].SetPos=((((Drive[0].ZeroOffset+vPOSmm*MM_POS_STEPPER_POS_FACTOR)-Drive[0].GetPos)>=0)?10:-10)+((Drive[0].ZeroOffset+vPOSmm*MM_POS_STEPPER_POS_FACTOR)-Drive[0].GetPos);
		Drive[3].SetPos=Drive[2].SetPos=((((Drive[2].ZeroOffset+((-hPOSmm)*MM_POS_STEPPER_POS_FACTOR))-Drive[2].GetPos)>=0)?10:-10)+(((Drive[2].ZeroOffset+((-hPOSmm)*MM_POS_STEPPER_POS_FACTOR))-Drive[2].GetPos)/2);

	}
	
	if(Drive[2].Status&FAULT||Drive[3].Status&FAULT){
		Drive[2].Case=Fault;		
		Drive[2].Case= NotReadyToSwitchOn;
		Drive[3].Case=Fault;		
		Drive[3].Case= NotReadyToSwitchOn;
	}
	
	
	Drive[3].SetPos=Drive[2].SetPos;
	if(Drive[2].Mode!=0){
		if(!(Drive[2].Status&0x4)||!(Drive[3].Status&0x4)){
			Drive[2].Mode=0;
			Drive[2].Case=Fault;
			Drive[2].Case= NotReadyToSwitchOn;
			Drive[3].Case=Fault;		
			Drive[3].Case= NotReadyToSwitchOn;
		}	
	}
	Drive[3].Mode=Drive[2].Mode;
	
	
	
	for(i=0;i<4;i++){

		if(Drive[i].Status&FAULT){
			Drive[i].Case=Fault;
		}

		switch(Drive[i].Case){
			default:
			case Fault:
				if(!(Drive[i].Status&FAULT)){
					Drive[i].Case= NotReadyToSwitchOn;
					break;
				}
				ERR_ACK(Drive[i].Ctrl);
				break;				

			case NotReadyToSwitchOn:
				DSIABLE_VOLTAGE(Drive[i].Ctrl);
				if(GET_STATUS(Drive[i].Status, SW_ON_DISSABLED)){
					Drive[i].Case= SwitchOnDisabled;
				}
				break;

			case SwitchOnDisabled:
				SHUTDOWN(Drive[i].Ctrl);
				if(GET_STATUS(Drive[i].Status, RDY_S_ON)){
					Drive[i].Case= ReadyToSwitchOn;
				}
				break;

			case ReadyToSwitchOn:
				SWITCH_ON(Drive[i].Ctrl);
				if(GET_STATUS(Drive[i].Status, SW_ON)){
					Drive[i].Case= SwitchedOn;
				}
				break;

			case SwitchedOn:
				ENABLE_OP(Drive[i].Ctrl);
				if(GET_STATUS(Drive[i].Status, OP_ENABLED)){
					Drive[i].Case= SwitchedOn;
				}
				break;
		}
		USE_ENC(Drive[i].Ctrl);
	}
		
	//Speedlimit
	for(i=0;i<4;i++){
		if(Drive[i].SetPos>1500){
			Drive[i].SetPos=1500;
		}
		if(Drive[i].SetPos<-1500){
			Drive[i].SetPos=-1500;
		}
	}
}
/*****/





/*
PROGRAM _INIT
(* init program *)

;Prozent von 3A

valueHaltestrom[1] 		:= 70
valueNennstrom[1]			:= 90
valueMaximalstrom[1]	:= 100

;Prozent von 6A
valueHaltestrom[2]		:= 50
valueNennstrom[2]			:= 50
valueMaximalstrom[2]	:= 50

valueHaltestrom[3]		:= 50
valueNennstrom[3]			:= 50
valueMaximalstrom[3]	:= 50

;Beschleunigung
valueAcc[1]						:= 3
valueAcc[2]						:= 1
valueAcc[3]						:= 1

;Bremsen
valueDec[1]						:= 3
valueDec[2]						:= 1
valueDec[3]						:= 1

valueMaxSpeed					:= 700
END_PROGRAM

PROGRAM _CYCLIC
(* cyclic program *)


	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("ConfigOutput03a")), valueHaltestrom[1], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("ConfigOutput04a")), valueNennstrom[1], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("ConfigOutput05a")), valueMaximalstrom[1], status)

	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput03")), valueHaltestrom[2], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput04")), valueNennstrom[2], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput05")), valueMaximalstrom[2], status)

	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput06")), valueHaltestrom[3], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput07")), valueNennstrom[3], status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput08")), valueMaximalstrom[3], status)

	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("MaxAcc01")), (valueAcc[1]*5), status)
	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("MaxDec01")), (valueDec[1]*5), status)

	AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("MaxSpeed01pos")), (valueMaxSpeed), status)

	AsIOAccRead(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST3")), UDINT(ADR("AbsPos1ActValAcyclic")), status, valueasyncpos)


	;AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput08")), valueMaximalstrom[3], status)
	;AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput08")), valueMaximalstrom[3], status)

	;AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput08")), valueMaximalstrom[3], status)
	;AsIOAccWrite(1, UDINT(ADR("SL1.SS1.IF2.ST16.IF1.ST6")), UDINT(ADR("ConfigOutput08")), valueMaximalstrom[3], status)
END_PROGRAM

*/
