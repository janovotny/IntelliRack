TYPE
	color : STRUCT
		fore	:USINT;	
		back	:USINT;	
	END_STRUCT;
			ctrlPassword : STRUCT
		levelDatapoint	:UINT;	
	END_STRUCT;
			ctrlStatusDatapoint : STRUCT
		ctrlHide	:BOOL;	
		ctrlLock	:BOOL;	
		ctrlFocus	:BOOL;	
		ctrlTouchpad	:BOOL;	
		statTouchpad	:BOOL;	
		statPressLocked	:BOOL;	
		statFocus	:BOOL;	
		statEdit	:BOOL;	
	END_STRUCT;
			greiferParameter : STRUCT
		pulseWidth	:INT;	
		periodDuration	:UINT;	
		pulseWidthCurrent	:INT;	
		periodDurationCurrent	:UINT;	
	END_STRUCT;
			tInp : STRUCT
		overloadDC	:BOOL;	
		liftHighLim	:BOOL;	
		liftLowLim	:BOOL;	
		liftPositionClock	:BOOL;	
		wireCoilStrtRight	:BOOL;	
		wireCoilStrtLeft	:BOOL;	
		wireCoilStpRight	:BOOL;	
		wireCoilStpLeft	:BOOL;	
		wireCoilEmptyRight	:BOOL;	
		wireCoilEmptyLeft	:BOOL;	
		sthInPos	:BOOL;	
		porStopPos	:BOOL;	
		clewJam	:BOOL;	
		airPresureOk	:BOOL;	
		oilLevelLow	:BOOL;	
		oilPresureOk	:BOOL;	
		zPosStepper	:BOOL;	
		supLeftOff	:BOOL;	
		supRightOff	:BOOL;	
		supLeftOn	:BOOL;	
		supRightOn	:BOOL;	
		emgCtrl	:BOOL;	
		emgBtn	:BOOL;	
		strtBtn	:BOOL;	
		stpBtn	:BOOL;	
		potiClock	:BOOL;	
		potiDirection	:BOOL;	
		safetySwitch	:BOOL;	
		benderNbr1	:BOOL;	
		greaseMainGearOk	:BOOL;	
		greaseMainGearErr	:BOOL;	
		greaseStepWheelOk	:BOOL;	
		greaseStepWheelErr	:BOOL;	
	END_STRUCT;
			tStepperControl : STRUCT
		switchOn	:BOOL;	
		enbleVoltage	:BOOL;	
		quickStop	:BOOL;	
		enableOperation	:BOOL;	
		faultReset	:BOOL;	
		rMotorIdent	:BOOL;	
		rResetWarning	:BOOL;	
	END_STRUCT;
			tStepperIfIn : STRUCT
		absPosActVal	:DINT;	
		status	:UINT;	
		inputStatus	:USINT;	
	END_STRUCT;
			tStepperIfOut : STRUCT
		absPosSetVal	:DINT;	
		control	:UINT;	
		mode	:SINT;	
	END_STRUCT;
			tStepperStatus : STRUCT
		readyToSwitchOn	:BOOL;	
		switchedOn	:BOOL;	
		operationEnabled	:BOOL;	
		fault	:BOOL;	
		voltageEnabled	:BOOL;	
		quickStop	:BOOL;	
		switchOnDisabeld	:BOOL;	
		warning	:BOOL;	
		targetReached	:BOOL;	
	END_STRUCT;
END_TYPE
