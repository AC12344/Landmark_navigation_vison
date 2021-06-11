  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 17;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc paramMap
    ;%
    paramMap.nSections           = nTotSects;
    paramMap.sectIdxOffset       = sectIdxOffset;
      paramMap.sections(nTotSects) = dumSection; %prealloc
    paramMap.nTotData            = -1;
    
    ;%
    ;% Auto data (kyiul2biku)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.Sensors
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.Vehicle
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.Controller
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% kyiul2biku.Constant1_Value
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.Constant2_Value
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
	  ;% kyiul2biku.Constant3_Value
	  section.data(3).logicalSrcIdx = 5;
	  section.data(3).dtTransOffset = 2;
	
	  ;% kyiul2biku.Threshold_Value
	  section.data(4).logicalSrcIdx = 6;
	  section.data(4).dtTransOffset = 3;
	
	  ;% kyiul2biku.Threshold1_Value
	  section.data(5).logicalSrcIdx = 7;
	  section.data(5).dtTransOffset = 4;
	
	  ;% kyiul2biku.Threshold2_Value
	  section.data(6).logicalSrcIdx = 8;
	  section.data(6).dtTransOffset = 5;
	
	  ;% kyiul2biku.RateTransition_InitialCondition
	  section.data(7).logicalSrcIdx = 9;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.outlierBelowFloor_const
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.iaerhrjrgiy.outlierJump_const
	  section.data(2).logicalSrcIdx = 11;
	  section.data(2).dtTransOffset = 1;
	
	  ;% kyiul2biku.iaerhrjrgiy.currentEstimateVeryOffFromPress
	  section.data(3).logicalSrcIdx = 12;
	  section.data(3).dtTransOffset = 2;
	
	  ;% kyiul2biku.iaerhrjrgiy.currentStateVeryOffsonarflt_con
	  section.data(4).logicalSrcIdx = 13;
	  section.data(4).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 28;
      section.data(28)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.DiscreteDerivative_ICPrevScaled
	  section.data(1).logicalSrcIdx = 14;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.iaerhrjrgiy.checkifPosavailable_const
	  section.data(2).logicalSrcIdx = 15;
	  section.data(2).dtTransOffset = 1;
	
	  ;% kyiul2biku.iaerhrjrgiy.Checkifvalidvisualpositionestim
	  section.data(3).logicalSrcIdx = 16;
	  section.data(3).dtTransOffset = 2;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant_const
	  section.data(4).logicalSrcIdx = 17;
	  section.data(4).dtTransOffset = 3;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant1_const
	  section.data(5).logicalSrcIdx = 18;
	  section.data(5).dtTransOffset = 4;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxp3_const
	  section.data(6).logicalSrcIdx = 19;
	  section.data(6).dtTransOffset = 5;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxq3_const
	  section.data(7).logicalSrcIdx = 20;
	  section.data(7).dtTransOffset = 6;
	
	  ;% kyiul2biku.iaerhrjrgiy.planarjumpsVISPOS_const
	  section.data(8).logicalSrcIdx = 21;
	  section.data(8).dtTransOffset = 7;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxp_const
	  section.data(9).logicalSrcIdx = 22;
	  section.data(9).dtTransOffset = 8;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxq_const
	  section.data(10).logicalSrcIdx = 23;
	  section.data(10).dtTransOffset = 9;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxw1_const
	  section.data(11).logicalSrcIdx = 24;
	  section.data(11).dtTransOffset = 10;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxw2_const
	  section.data(12).logicalSrcIdx = 25;
	  section.data(12).dtTransOffset = 11;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxdw1_const
	  section.data(13).logicalSrcIdx = 26;
	  section.data(13).dtTransOffset = 12;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxdw2_const
	  section.data(14).logicalSrcIdx = 27;
	  section.data(14).dtTransOffset = 13;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxp2_const
	  section.data(15).logicalSrcIdx = 28;
	  section.data(15).dtTransOffset = 14;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxq2_const
	  section.data(16).logicalSrcIdx = 29;
	  section.data(16).dtTransOffset = 15;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxw3_const
	  section.data(17).logicalSrcIdx = 30;
	  section.data(17).dtTransOffset = 16;
	
	  ;% kyiul2biku.iaerhrjrgiy.maxw4_const
	  section.data(18).logicalSrcIdx = 31;
	  section.data(18).dtTransOffset = 17;
	
	  ;% kyiul2biku.iaerhrjrgiy.minHeightforOF_const
	  section.data(19).logicalSrcIdx = 32;
	  section.data(19).dtTransOffset = 18;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant_co_eu425cjavj
	  section.data(20).logicalSrcIdx = 33;
	  section.data(20).dtTransOffset = 19;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant1_c_gx51wbxqvn
	  section.data(21).logicalSrcIdx = 34;
	  section.data(21).dtTransOffset = 20;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant2_const
	  section.data(22).logicalSrcIdx = 35;
	  section.data(22).dtTransOffset = 21;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant3_const
	  section.data(23).logicalSrcIdx = 36;
	  section.data(23).dtTransOffset = 22;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant4_const
	  section.data(24).logicalSrcIdx = 37;
	  section.data(24).dtTransOffset = 23;
	
	  ;% kyiul2biku.iaerhrjrgiy.CompareToConstant5_const
	  section.data(25).logicalSrcIdx = 38;
	  section.data(25).dtTransOffset = 24;
	
	  ;% kyiul2biku.iaerhrjrgiy.DeactivateAccelerationIfOFisnot
	  section.data(26).logicalSrcIdx = 39;
	  section.data(26).dtTransOffset = 25;
	
	  ;% kyiul2biku.iaerhrjrgiy.donotuseaccifopticalflowneverav
	  section.data(27).logicalSrcIdx = 40;
	  section.data(27).dtTransOffset = 26;
	
	  ;% kyiul2biku.iaerhrjrgiy.donotuseaccifoptical_keipynvlk2
	  section.data(28).logicalSrcIdx = 41;
	  section.data(28).dtTransOffset = 27;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 27;
      section.data(27)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 42;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.iaerhrjrgiy.deltax_Y0
	  section.data(2).logicalSrcIdx = 43;
	  section.data(2).dtTransOffset = 1;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant_Value
	  section.data(3).logicalSrcIdx = 44;
	  section.data(3).dtTransOffset = 2;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainM_Value
	  section.data(4).logicalSrcIdx = 45;
	  section.data(4).dtTransOffset = 6;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainM_Value_pav5kgcfh5
	  section.data(5).logicalSrcIdx = 46;
	  section.data(5).dtTransOffset = 10;
	
	  ;% kyiul2biku.iaerhrjrgiy.C_Value
	  section.data(6).logicalSrcIdx = 47;
	  section.data(6).dtTransOffset = 12;
	
	  ;% kyiul2biku.iaerhrjrgiy.Delay2_InitialCondition
	  section.data(7).logicalSrcIdx = 48;
	  section.data(7).dtTransOffset = 14;
	
	  ;% kyiul2biku.iaerhrjrgiy.X0_Value
	  section.data(8).logicalSrcIdx = 49;
	  section.data(8).dtTransOffset = 15;
	
	  ;% kyiul2biku.iaerhrjrgiy.SaturationSonar_LowerSat
	  section.data(9).logicalSrcIdx = 50;
	  section.data(9).dtTransOffset = 17;
	
	  ;% kyiul2biku.iaerhrjrgiy.soonarFilter_IIR_NumCoef
	  section.data(10).logicalSrcIdx = 51;
	  section.data(10).dtTransOffset = 18;
	
	  ;% kyiul2biku.iaerhrjrgiy.soonarFilter_IIR_DenCoef
	  section.data(11).logicalSrcIdx = 52;
	  section.data(11).dtTransOffset = 22;
	
	  ;% kyiul2biku.iaerhrjrgiy.soonarFilter_IIR_InitialStates
	  section.data(12).logicalSrcIdx = 53;
	  section.data(12).dtTransOffset = 26;
	
	  ;% kyiul2biku.iaerhrjrgiy.Traveldistance_Value
	  section.data(13).logicalSrcIdx = 54;
	  section.data(13).dtTransOffset = 27;
	
	  ;% kyiul2biku.iaerhrjrgiy.UnitDelay1_InitialCondition
	  section.data(14).logicalSrcIdx = 55;
	  section.data(14).dtTransOffset = 28;
	
	  ;% kyiul2biku.iaerhrjrgiy.UnitDelay2_InitialCondition
	  section.data(15).logicalSrcIdx = 56;
	  section.data(15).dtTransOffset = 29;
	
	  ;% kyiul2biku.iaerhrjrgiy.TakeoffOrControl_Switch_Thresho
	  section.data(16).logicalSrcIdx = 57;
	  section.data(16).dtTransOffset = 32;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainM_Value_fdcniibyy0
	  section.data(17).logicalSrcIdx = 58;
	  section.data(17).dtTransOffset = 33;
	
	  ;% kyiul2biku.iaerhrjrgiy.MotorDirections_Gain
	  section.data(18).logicalSrcIdx = 59;
	  section.data(18).dtTransOffset = 37;
	
	  ;% kyiul2biku.iaerhrjrgiy.A_Value
	  section.data(19).logicalSrcIdx = 60;
	  section.data(19).dtTransOffset = 41;
	
	  ;% kyiul2biku.iaerhrjrgiy.B_Value
	  section.data(20).logicalSrcIdx = 61;
	  section.data(20).dtTransOffset = 45;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainL_Value
	  section.data(21).logicalSrcIdx = 62;
	  section.data(21).dtTransOffset = 47;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_Value
	  section.data(22).logicalSrcIdx = 63;
	  section.data(22).dtTransOffset = 49;
	
	  ;% kyiul2biku.iaerhrjrgiy.gravity_Value
	  section.data(23).logicalSrcIdx = 64;
	  section.data(23).dtTransOffset = 50;
	
	  ;% kyiul2biku.iaerhrjrgiy.gravity_Value_griqbewjps
	  section.data(24).logicalSrcIdx = 65;
	  section.data(24).dtTransOffset = 53;
	
	  ;% kyiul2biku.iaerhrjrgiy.gainaccinput_Gain
	  section.data(25).logicalSrcIdx = 66;
	  section.data(25).dtTransOffset = 56;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainL_Value_gv2jihbc5y
	  section.data(26).logicalSrcIdx = 67;
	  section.data(26).dtTransOffset = 57;
	
	  ;% kyiul2biku.iaerhrjrgiy.KalmanGainL_Value_ia2smwvp3j
	  section.data(27).logicalSrcIdx = 68;
	  section.data(27).dtTransOffset = 61;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 72;
      section.data(72)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain
	  section.data(1).logicalSrcIdx = 69;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain1_Gain
	  section.data(2).logicalSrcIdx = 70;
	  section.data(2).dtTransOffset = 1;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain2_Gain
	  section.data(3).logicalSrcIdx = 71;
	  section.data(3).dtTransOffset = 2;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain3_Gain
	  section.data(4).logicalSrcIdx = 72;
	  section.data(4).dtTransOffset = 3;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain4_Gain
	  section.data(5).logicalSrcIdx = 73;
	  section.data(5).dtTransOffset = 4;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain_a0dbhqrvit
	  section.data(6).logicalSrcIdx = 74;
	  section.data(6).dtTransOffset = 5;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain1_Gain_nl5j5r3cbr
	  section.data(7).logicalSrcIdx = 75;
	  section.data(7).dtTransOffset = 6;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_xy_Gain
	  section.data(8).logicalSrcIdx = 76;
	  section.data(8).dtTransOffset = 7;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain_lxpdh1mi0w
	  section.data(9).logicalSrcIdx = 77;
	  section.data(9).dtTransOffset = 9;
	
	  ;% kyiul2biku.iaerhrjrgiy.Saturation_UpperSat
	  section.data(10).logicalSrcIdx = 78;
	  section.data(10).dtTransOffset = 10;
	
	  ;% kyiul2biku.iaerhrjrgiy.Saturation_LowerSat
	  section.data(11).logicalSrcIdx = 79;
	  section.data(11).dtTransOffset = 11;
	
	  ;% kyiul2biku.iaerhrjrgiy.P_xy_Gain
	  section.data(12).logicalSrcIdx = 80;
	  section.data(12).dtTransOffset = 12;
	
	  ;% kyiul2biku.iaerhrjrgiy.takeoff_gain_Gain
	  section.data(13).logicalSrcIdx = 81;
	  section.data(13).dtTransOffset = 14;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_z1_Gain
	  section.data(14).logicalSrcIdx = 82;
	  section.data(14).dtTransOffset = 15;
	
	  ;% kyiul2biku.iaerhrjrgiy.P_z1_Gain
	  section.data(15).logicalSrcIdx = 83;
	  section.data(15).dtTransOffset = 16;
	
	  ;% kyiul2biku.iaerhrjrgiy.TorqueTotalThrustToThrustPerMot
	  section.data(16).logicalSrcIdx = 84;
	  section.data(16).dtTransOffset = 17;
	
	  ;% kyiul2biku.iaerhrjrgiy.w0_Value
	  section.data(17).logicalSrcIdx = 85;
	  section.data(17).dtTransOffset = 33;
	
	  ;% kyiul2biku.iaerhrjrgiy.C_Value_p0zcfp4lic
	  section.data(18).logicalSrcIdx = 86;
	  section.data(18).dtTransOffset = 34;
	
	  ;% kyiul2biku.iaerhrjrgiy.X0_Value_agut5ogvzt
	  section.data(19).logicalSrcIdx = 87;
	  section.data(19).dtTransOffset = 38;
	
	  ;% kyiul2biku.iaerhrjrgiy.Memory_InitialCondition
	  section.data(20).logicalSrcIdx = 88;
	  section.data(20).dtTransOffset = 40;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant_Value_ei4qxougxr
	  section.data(21).logicalSrcIdx = 89;
	  section.data(21).dtTransOffset = 43;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain_luyjdxo1kl
	  section.data(22).logicalSrcIdx = 90;
	  section.data(22).dtTransOffset = 44;
	
	  ;% kyiul2biku.iaerhrjrgiy.Assumingthatcalibwasdonelevel_B
	  section.data(23).logicalSrcIdx = 91;
	  section.data(23).dtTransOffset = 45;
	
	  ;% kyiul2biku.iaerhrjrgiy.inverseIMU_gain_Gain
	  section.data(24).logicalSrcIdx = 92;
	  section.data(24).dtTransOffset = 51;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIR_IMUgyro_r_NumCoef
	  section.data(25).logicalSrcIdx = 93;
	  section.data(25).dtTransOffset = 57;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIR_IMUgyro_r_DenCoef
	  section.data(26).logicalSrcIdx = 94;
	  section.data(26).dtTransOffset = 63;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIR_IMUgyro_r_InitialStates
	  section.data(27).logicalSrcIdx = 95;
	  section.data(27).dtTransOffset = 69;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain_jxnpdqq1lw
	  section.data(28).logicalSrcIdx = 96;
	  section.data(28).dtTransOffset = 70;
	
	  ;% kyiul2biku.iaerhrjrgiy.FIR_IMUaccel_InitialStates
	  section.data(29).logicalSrcIdx = 97;
	  section.data(29).dtTransOffset = 71;
	
	  ;% kyiul2biku.iaerhrjrgiy.FIR_IMUaccel_Coefficients
	  section.data(30).logicalSrcIdx = 98;
	  section.data(30).dtTransOffset = 72;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant_Value_kygtztlw3p
	  section.data(31).logicalSrcIdx = 99;
	  section.data(31).dtTransOffset = 78;
	
	  ;% kyiul2biku.iaerhrjrgiy.Merge_InitialOutput
	  section.data(32).logicalSrcIdx = 100;
	  section.data(32).dtTransOffset = 79;
	
	  ;% kyiul2biku.iaerhrjrgiy.Delay_InitialCondition
	  section.data(33).logicalSrcIdx = 101;
	  section.data(33).dtTransOffset = 80;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant_Value_oevylean3w
	  section.data(34).logicalSrcIdx = 102;
	  section.data(34).dtTransOffset = 81;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant4_Value
	  section.data(35).logicalSrcIdx = 103;
	  section.data(35).dtTransOffset = 82;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant3_Value
	  section.data(36).logicalSrcIdx = 104;
	  section.data(36).dtTransOffset = 85;
	
	  ;% kyiul2biku.iaerhrjrgiy.SimplyIntegrateVelocity_gainval
	  section.data(37).logicalSrcIdx = 105;
	  section.data(37).dtTransOffset = 88;
	
	  ;% kyiul2biku.iaerhrjrgiy.SimplyIntegrateVelocity_IC
	  section.data(38).logicalSrcIdx = 106;
	  section.data(38).dtTransOffset = 89;
	
	  ;% kyiul2biku.iaerhrjrgiy.UseIPPosSwitch_Threshold
	  section.data(39).logicalSrcIdx = 107;
	  section.data(39).dtTransOffset = 90;
	
	  ;% kyiul2biku.iaerhrjrgiy.invertzaxisGain_Gain
	  section.data(40).logicalSrcIdx = 108;
	  section.data(40).dtTransOffset = 91;
	
	  ;% kyiul2biku.iaerhrjrgiy.prsToAltGain_Gain
	  section.data(41).logicalSrcIdx = 109;
	  section.data(41).dtTransOffset = 92;
	
	  ;% kyiul2biku.iaerhrjrgiy.pressureFilter_IIR_NumCoef
	  section.data(42).logicalSrcIdx = 110;
	  section.data(42).dtTransOffset = 93;
	
	  ;% kyiul2biku.iaerhrjrgiy.pressureFilter_IIR_DenCoef
	  section.data(43).logicalSrcIdx = 111;
	  section.data(43).dtTransOffset = 97;
	
	  ;% kyiul2biku.iaerhrjrgiy.pressureFilter_IIR_InitialState
	  section.data(44).logicalSrcIdx = 112;
	  section.data(44).dtTransOffset = 101;
	
	  ;% kyiul2biku.iaerhrjrgiy.Delay1_InitialCondition
	  section.data(45).logicalSrcIdx = 113;
	  section.data(45).dtTransOffset = 102;
	
	  ;% kyiul2biku.iaerhrjrgiy.P_yaw_Gain
	  section.data(46).logicalSrcIdx = 114;
	  section.data(46).dtTransOffset = 103;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_yaw_Gain
	  section.data(47).logicalSrcIdx = 115;
	  section.data(47).dtTransOffset = 104;
	
	  ;% kyiul2biku.iaerhrjrgiy.C_Value_ebuuvpz4it
	  section.data(48).logicalSrcIdx = 116;
	  section.data(48).dtTransOffset = 105;
	
	  ;% kyiul2biku.iaerhrjrgiy.opticalFlowToVelocity_gain_Gain
	  section.data(49).logicalSrcIdx = 117;
	  section.data(49).dtTransOffset = 109;
	
	  ;% kyiul2biku.iaerhrjrgiy.X0_Value_jx3thl4zsx
	  section.data(50).logicalSrcIdx = 118;
	  section.data(50).dtTransOffset = 110;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIRgyroz_NumCoef
	  section.data(51).logicalSrcIdx = 119;
	  section.data(51).dtTransOffset = 112;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIRgyroz_DenCoef
	  section.data(52).logicalSrcIdx = 120;
	  section.data(52).dtTransOffset = 118;
	
	  ;% kyiul2biku.iaerhrjrgiy.IIRgyroz_InitialStates
	  section.data(53).logicalSrcIdx = 121;
	  section.data(53).dtTransOffset = 124;
	
	  ;% kyiul2biku.iaerhrjrgiy.TSamp_WtEt
	  section.data(54).logicalSrcIdx = 122;
	  section.data(54).dtTransOffset = 125;
	
	  ;% kyiul2biku.iaerhrjrgiy.Delay_InitialConditi_hgeibxjl0k
	  section.data(55).logicalSrcIdx = 123;
	  section.data(55).dtTransOffset = 126;
	
	  ;% kyiul2biku.iaerhrjrgiy.P_pr_Gain
	  section.data(56).logicalSrcIdx = 124;
	  section.data(56).dtTransOffset = 127;
	
	  ;% kyiul2biku.iaerhrjrgiy.DiscreteTimeIntegrator_gainval
	  section.data(57).logicalSrcIdx = 125;
	  section.data(57).dtTransOffset = 129;
	
	  ;% kyiul2biku.iaerhrjrgiy.DiscreteTimeIntegrator_IC
	  section.data(58).logicalSrcIdx = 126;
	  section.data(58).dtTransOffset = 130;
	
	  ;% kyiul2biku.iaerhrjrgiy.DiscreteTimeIntegrator_UpperSat
	  section.data(59).logicalSrcIdx = 127;
	  section.data(59).dtTransOffset = 131;
	
	  ;% kyiul2biku.iaerhrjrgiy.DiscreteTimeIntegrator_LowerSat
	  section.data(60).logicalSrcIdx = 128;
	  section.data(60).dtTransOffset = 132;
	
	  ;% kyiul2biku.iaerhrjrgiy.I_pr_Gain
	  section.data(61).logicalSrcIdx = 129;
	  section.data(61).dtTransOffset = 133;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_pr_Gain
	  section.data(62).logicalSrcIdx = 130;
	  section.data(62).dtTransOffset = 134;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain_Gain_mvqkqxt2ti
	  section.data(63).logicalSrcIdx = 131;
	  section.data(63).dtTransOffset = 136;
	
	  ;% kyiul2biku.iaerhrjrgiy.Gain1_Gain_ond3euw1qw
	  section.data(64).logicalSrcIdx = 132;
	  section.data(64).dtTransOffset = 137;
	
	  ;% kyiul2biku.iaerhrjrgiy.A_Value_aonub2vz0d
	  section.data(65).logicalSrcIdx = 133;
	  section.data(65).dtTransOffset = 138;
	
	  ;% kyiul2biku.iaerhrjrgiy.B_Value_cden5bsuwu
	  section.data(66).logicalSrcIdx = 134;
	  section.data(66).dtTransOffset = 142;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_Value_d2rq1n1dyz
	  section.data(67).logicalSrcIdx = 135;
	  section.data(67).dtTransOffset = 146;
	
	  ;% kyiul2biku.iaerhrjrgiy.A_Value_f500ocvja3
	  section.data(68).logicalSrcIdx = 136;
	  section.data(68).dtTransOffset = 150;
	
	  ;% kyiul2biku.iaerhrjrgiy.B_Value_izozwhfquf
	  section.data(69).logicalSrcIdx = 137;
	  section.data(69).dtTransOffset = 154;
	
	  ;% kyiul2biku.iaerhrjrgiy.D_Value_jhq3djlfad
	  section.data(70).logicalSrcIdx = 138;
	  section.data(70).dtTransOffset = 158;
	
	  ;% kyiul2biku.iaerhrjrgiy.Delay_InitialConditi_ahnzkte40z
	  section.data(71).logicalSrcIdx = 139;
	  section.data(71).dtTransOffset = 162;
	
	  ;% kyiul2biku.iaerhrjrgiy.antiWU_Gain_Gain
	  section.data(72).logicalSrcIdx = 140;
	  section.data(72).dtTransOffset = 163;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.Constant1_Value
	  section.data(1).logicalSrcIdx = 141;
	  section.data(1).dtTransOffset = 0;
	
	  ;% kyiul2biku.iaerhrjrgiy.Constant5_Value
	  section.data(2).logicalSrcIdx = 142;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.Merge_InitialOutput_i4jn4322rg
	  section.data(1).logicalSrcIdx = 143;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(10) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.luhr301tav.deltax_Y0
	  section.data(1).logicalSrcIdx = 144;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(11) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.b5bortgsr3.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 145;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.auuhrry5jf2.deltax_Y0
	  section.data(1).logicalSrcIdx = 146;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.glary0bynre.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 147;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.laoar3shd1.Constant_Value
	  section.data(1).logicalSrcIdx = 148;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.b0xpaoxbhk.Constant_Value
	  section.data(1).logicalSrcIdx = 149;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% kyiul2biku.iaerhrjrgiy.cgp13md54b5.Constant_Value
	  section.data(1).logicalSrcIdx = 150;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(17) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (parameter)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    paramMap.nTotData = nTotData;
    


  ;%**************************
  ;% Create Block Output Map *
  ;%**************************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 11;
    sectIdxOffset = 0;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc sigMap
    ;%
    sigMap.nSections           = nTotSects;
    sigMap.sectIdxOffset       = sectIdxOffset;
      sigMap.sections(nTotSects) = dumSection; %prealloc
    sigMap.nTotData            = -1;
    
    ;%
    ;% Auto data (ay1fvtxw3vr)
    ;%
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.gajlrupjrz
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ay1fvtxw3vr.agdhck5q5p
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ay1fvtxw3vr.fbbvpdh0cz
	  section.data(3).logicalSrcIdx = 2;
	  section.data(3).dtTransOffset = 19201;
	
	  ;% ay1fvtxw3vr.dgzvpv1pd3
	  section.data(4).logicalSrcIdx = 3;
	  section.data(4).dtTransOffset = 38401;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.cjtirogwgi
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.g2bajhyqn3
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.fi2yulcxcy
	  section.data(2).logicalSrcIdx = 5;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.htrco5olo2
	  section.data(3).logicalSrcIdx = 6;
	  section.data(3).dtTransOffset = 5;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.ggtrlen5rt
	  section.data(4).logicalSrcIdx = 7;
	  section.data(4).dtTransOffset = 8;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 19;
      section.data(19)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.kcrx5jcgyv
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.jrb4yngedz
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 1;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.bagdzb1m4g
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 2;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.kcrx5jcgyvp
	  section.data(4).logicalSrcIdx = 12;
	  section.data(4).dtTransOffset = 3;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.jrb4yngedzu
	  section.data(5).logicalSrcIdx = 13;
	  section.data(5).dtTransOffset = 4;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.bagdzb1m4gp
	  section.data(6).logicalSrcIdx = 14;
	  section.data(6).dtTransOffset = 5;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.jj5kz0u3av
	  section.data(7).logicalSrcIdx = 15;
	  section.data(7).dtTransOffset = 6;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.b1zpopiyjf
	  section.data(8).logicalSrcIdx = 16;
	  section.data(8).dtTransOffset = 12;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.p12scmjs3b
	  section.data(9).logicalSrcIdx = 17;
	  section.data(9).dtTransOffset = 14;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.apjmdvfsdp
	  section.data(10).logicalSrcIdx = 18;
	  section.data(10).dtTransOffset = 17;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.bx045cp1nj
	  section.data(11).logicalSrcIdx = 19;
	  section.data(11).dtTransOffset = 19;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.h1yhuksgxl
	  section.data(12).logicalSrcIdx = 20;
	  section.data(12).dtTransOffset = 20;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.po52nqzpos
	  section.data(13).logicalSrcIdx = 21;
	  section.data(13).dtTransOffset = 21;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.l011wyi4bx
	  section.data(14).logicalSrcIdx = 22;
	  section.data(14).dtTransOffset = 22;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.pacwqgorxf
	  section.data(15).logicalSrcIdx = 23;
	  section.data(15).dtTransOffset = 23;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.neut2nexsr
	  section.data(16).logicalSrcIdx = 24;
	  section.data(16).dtTransOffset = 26;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.bq4i53b0ru
	  section.data(17).logicalSrcIdx = 25;
	  section.data(17).dtTransOffset = 28;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.bmgez44zf0
	  section.data(18).logicalSrcIdx = 26;
	  section.data(18).dtTransOffset = 30;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.l4jhttreqe
	  section.data(19).logicalSrcIdx = 27;
	  section.data(19).dtTransOffset = 33;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.luhr301tav.dbiefxripq
	  section.data(1).logicalSrcIdx = 28;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.b5bortgsr3.gtupw0jrvo
	  section.data(1).logicalSrcIdx = 29;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.auuhrry5jf2.dbiefxripq
	  section.data(1).logicalSrcIdx = 30;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.glary0bynre.gtupw0jrvo
	  section.data(1).logicalSrcIdx = 31;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(8) = section;
      clear section
      
      section.nData     = 16;
      section.data(16)  = dumData; %prealloc
      
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.efamlknsk2
	  section.data(1).logicalSrcIdx = 32;
	  section.data(1).dtTransOffset = 0;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.g0hyv21ahk
	  section.data(2).logicalSrcIdx = 33;
	  section.data(2).dtTransOffset = 8;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.nyrhcf0fmw
	  section.data(3).logicalSrcIdx = 34;
	  section.data(3).dtTransOffset = 20;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.bmgez44zf0
	  section.data(4).logicalSrcIdx = 35;
	  section.data(4).dtTransOffset = 21;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.ggfazbtp0q
	  section.data(5).logicalSrcIdx = 36;
	  section.data(5).dtTransOffset = 24;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.l4jhttreqe
	  section.data(6).logicalSrcIdx = 37;
	  section.data(6).dtTransOffset = 25;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.ia0wzwx34u
	  section.data(7).logicalSrcIdx = 38;
	  section.data(7).dtTransOffset = 28;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.dukgpsw1ss
	  section.data(8).logicalSrcIdx = 39;
	  section.data(8).dtTransOffset = 29;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.e502b2clqo
	  section.data(9).logicalSrcIdx = 40;
	  section.data(9).dtTransOffset = 38;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.ce0ao3q0m3
	  section.data(10).logicalSrcIdx = 41;
	  section.data(10).dtTransOffset = 39;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.oqdscjqbld
	  section.data(11).logicalSrcIdx = 42;
	  section.data(11).dtTransOffset = 42;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.ml1u3m0uwf
	  section.data(12).logicalSrcIdx = 43;
	  section.data(12).dtTransOffset = 46;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.nkxaidf24a
	  section.data(13).logicalSrcIdx = 44;
	  section.data(13).dtTransOffset = 54;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.hbsbx4ok2u
	  section.data(14).logicalSrcIdx = 45;
	  section.data(14).dtTransOffset = 62;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.e2535niaiy
	  section.data(15).logicalSrcIdx = 46;
	  section.data(15).dtTransOffset = 63;
	
	  ;% ay1fvtxw3vr.iaerhrjrgiy.hqd4v2bp1f2.pbtr0jwr0n
	  section.data(16).logicalSrcIdx = 47;
	  section.data(16).dtTransOffset = 64;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(9) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
	      
	    ;% motors_outport
	    section.nData = 1;
	    section.data(1).logicalSrcIdx = 189;
	    section.data(1).dtTransOffset = 0;
	  
	    nTotData = nTotData + section.nData;
	    sigMap.sections(10) = section;
	    clear section
	  
	      
	    ;% flag_outport
	    section.nData = 1;
	    section.data(1).logicalSrcIdx = 190;
	    section.data(1).dtTransOffset = 0;
	  
	    nTotData = nTotData + section.nData;
	    sigMap.sections(11) = section;
	    clear section
	  
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 25;
    sectIdxOffset = 11;
    
    ;%
    ;% Define dummy sections & preallocate arrays
    ;%
    dumSection.nData = -1;  
    dumSection.data  = [];
    
    dumData.logicalSrcIdx = -1;
    dumData.dtTransOffset = -1;
    
    ;%
    ;% Init/prealloc dworkMap
    ;%
    dworkMap.nSections           = nTotSects;
    dworkMap.sectIdxOffset       = sectIdxOffset;
      dworkMap.sections(nTotSects) = dumSection; %prealloc
    dworkMap.nTotData            = -1;
    
    ;%
    ;% Auto data (fffknzztmme)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.gibsu2crhg
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.nzqsvurjox
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.awygxzyh1b.LoggedData
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.bmczvpjnpo
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.gkreh4syyt
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.exajbo5ccq
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.dvv4uuirih
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% fffknzztmme.iaerhrjrgiy.lsumohwiuc
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 3;
	
	  ;% fffknzztmme.iaerhrjrgiy.fugrc0jxdb
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 6;
	
	  ;% fffknzztmme.iaerhrjrgiy.f35iya4gnk
	  section.data(5).logicalSrcIdx = 9;
	  section.data(5).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 6;
      section.data(6)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.erxeuospqh.LoggedData
	  section.data(1).logicalSrcIdx = 11;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.dg3vcgqbqq.LoggedData
	  section.data(2).logicalSrcIdx = 12;
	  section.data(2).dtTransOffset = 1;
	
	  ;% fffknzztmme.iaerhrjrgiy.py43szzjle.LoggedData
	  section.data(3).logicalSrcIdx = 13;
	  section.data(3).dtTransOffset = 2;
	
	  ;% fffknzztmme.iaerhrjrgiy.fckuhd05l4.LoggedData
	  section.data(4).logicalSrcIdx = 14;
	  section.data(4).dtTransOffset = 3;
	
	  ;% fffknzztmme.iaerhrjrgiy.cffq3tcuuw.LoggedData
	  section.data(5).logicalSrcIdx = 15;
	  section.data(5).dtTransOffset = 4;
	
	  ;% fffknzztmme.iaerhrjrgiy.fsa5shrvsc.LoggedData
	  section.data(6).logicalSrcIdx = 16;
	  section.data(6).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 11;
      section.data(11)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.hrks2do1lj
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.glxdu2ewk2
	  section.data(2).logicalSrcIdx = 18;
	  section.data(2).dtTransOffset = 2;
	
	  ;% fffknzztmme.iaerhrjrgiy.ndbb5lrkcd
	  section.data(3).logicalSrcIdx = 19;
	  section.data(3).dtTransOffset = 7;
	
	  ;% fffknzztmme.iaerhrjrgiy.lzhoxhfe1p
	  section.data(4).logicalSrcIdx = 20;
	  section.data(4).dtTransOffset = 22;
	
	  ;% fffknzztmme.iaerhrjrgiy.gvi5n15iw1
	  section.data(5).logicalSrcIdx = 21;
	  section.data(5).dtTransOffset = 24;
	
	  ;% fffknzztmme.iaerhrjrgiy.gxnkxn4cui
	  section.data(6).logicalSrcIdx = 22;
	  section.data(6).dtTransOffset = 26;
	
	  ;% fffknzztmme.iaerhrjrgiy.anyrs2zpum
	  section.data(7).logicalSrcIdx = 24;
	  section.data(7).dtTransOffset = 29;
	
	  ;% fffknzztmme.iaerhrjrgiy.axdcyhdnp0
	  section.data(8).logicalSrcIdx = 25;
	  section.data(8).dtTransOffset = 31;
	
	  ;% fffknzztmme.iaerhrjrgiy.ge1dhbdrv0
	  section.data(9).logicalSrcIdx = 26;
	  section.data(9).dtTransOffset = 41;
	
	  ;% fffknzztmme.iaerhrjrgiy.jxssemabr3
	  section.data(10).logicalSrcIdx = 28;
	  section.data(10).dtTransOffset = 43;
	
	  ;% fffknzztmme.iaerhrjrgiy.jbp50wdopc
	  section.data(11).logicalSrcIdx = 29;
	  section.data(11).dtTransOffset = 45;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.bbuetn40ys
	  section.data(1).logicalSrcIdx = 30;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.keyyvvllwq
	  section.data(1).logicalSrcIdx = 31;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.lexuh0zk2a
	  section.data(2).logicalSrcIdx = 34;
	  section.data(2).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.h5rbyvpjef
	  section.data(1).logicalSrcIdx = 35;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.g1xandfn2i
	  section.data(2).logicalSrcIdx = 36;
	  section.data(2).dtTransOffset = 1;
	
	  ;% fffknzztmme.iaerhrjrgiy.ldwdv11tk5
	  section.data(3).logicalSrcIdx = 37;
	  section.data(3).dtTransOffset = 2;
	
	  ;% fffknzztmme.iaerhrjrgiy.edoomfijw1
	  section.data(4).logicalSrcIdx = 38;
	  section.data(4).dtTransOffset = 3;
	
	  ;% fffknzztmme.iaerhrjrgiy.cuksnwawj0
	  section.data(5).logicalSrcIdx = 39;
	  section.data(5).dtTransOffset = 4;
	
	  ;% fffknzztmme.iaerhrjrgiy.mdhe5c04c5
	  section.data(6).logicalSrcIdx = 40;
	  section.data(6).dtTransOffset = 5;
	
	  ;% fffknzztmme.iaerhrjrgiy.addwj4kiua
	  section.data(7).logicalSrcIdx = 41;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.grjznwmxgj
	  section.data(1).logicalSrcIdx = 42;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.bahm3rui32
	  section.data(2).logicalSrcIdx = 43;
	  section.data(2).dtTransOffset = 1;
	
	  ;% fffknzztmme.iaerhrjrgiy.aj1v5w5y5z
	  section.data(3).logicalSrcIdx = 44;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(12) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.n5lntdulwy
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.ep5xfqowlj
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.luhr301tav.jknv104hn0
	  section.data(1).logicalSrcIdx = 47;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.luhr301tav.iglwr5kmg2
	  section.data(1).logicalSrcIdx = 48;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.b5bortgsr3.hv5dvh2wi5
	  section.data(1).logicalSrcIdx = 49;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.b5bortgsr3.kqwuze4ejf
	  section.data(1).logicalSrcIdx = 50;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.auuhrry5jf2.jknv104hn0
	  section.data(1).logicalSrcIdx = 51;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.auuhrry5jf2.iglwr5kmg2
	  section.data(1).logicalSrcIdx = 52;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.glary0bynre.hv5dvh2wi5
	  section.data(1).logicalSrcIdx = 53;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(20) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.glary0bynre.kqwuze4ejf
	  section.data(1).logicalSrcIdx = 54;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(21) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.pbka05nzic.LoggedData
	  section.data(1).logicalSrcIdx = 55;
	  section.data(1).dtTransOffset = 0;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.ldyrygeoes.LoggedData
	  section.data(2).logicalSrcIdx = 56;
	  section.data(2).dtTransOffset = 1;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.pnk23rwlvk.LoggedData
	  section.data(3).logicalSrcIdx = 57;
	  section.data(3).dtTransOffset = 2;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.p23d13xsbf.LoggedData
	  section.data(4).logicalSrcIdx = 58;
	  section.data(4).dtTransOffset = 3;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.fevmioxn2g.LoggedData
	  section.data(5).logicalSrcIdx = 59;
	  section.data(5).dtTransOffset = 4;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.ahtctrkqga.LoggedData
	  section.data(6).logicalSrcIdx = 60;
	  section.data(6).dtTransOffset = 5;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.grjmqrjdxi.LoggedData
	  section.data(7).logicalSrcIdx = 61;
	  section.data(7).dtTransOffset = 6;
	
	  ;% fffknzztmme.iaerhrjrgiy.hqd4v2bp1f2.gt3lnbzths.LoggedData
	  section.data(8).logicalSrcIdx = 62;
	  section.data(8).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(22) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.laoar3shd1.ajmlomiaju
	  section.data(1).logicalSrcIdx = 63;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(23) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.b0xpaoxbhk.ajmlomiaju
	  section.data(1).logicalSrcIdx = 64;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(24) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% fffknzztmme.iaerhrjrgiy.cgp13md54b5.ajmlomiaju
	  section.data(1).logicalSrcIdx = 65;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(25) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (dwork)
      ;%
    

    ;%
    ;% Add final counts to struct.
    ;%
    dworkMap.nTotData = nTotData;
    


  ;%
  ;% Add individual maps to base struct.
  ;%

  targMap.paramMap  = paramMap;    
  targMap.signalMap = sigMap;
  targMap.dworkMap  = dworkMap;
  
  ;%
  ;% Add checksums to base struct.
  ;%


  targMap.checksum0 = 4246321212;
  targMap.checksum1 = 493500174;
  targMap.checksum2 = 898906853;
  targMap.checksum3 = 1918898911;

