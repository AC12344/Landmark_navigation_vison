  function targMap = targDataMap(),

  ;%***********************
  ;% Create Parameter Map *
  ;%***********************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 21;
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
    ;% Auto data (hzu5hyg1az)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Sensors
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Vehicle
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(2) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Controller
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(3) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Ki
	  section.data(1).logicalSrcIdx = 3;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.g
	  section.data(2).logicalSrcIdx = 4;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(4) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Cv
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.landingAltitude
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.enableLanding
	  section.data(1).logicalSrcIdx = 7;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.RateTransition_InitialCondition
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(7) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.Autothreshold2_BIN_BOUNDARY_FIX
	  section.data(1).logicalSrcIdx = 9;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.Autothreshold1_BIN_BOUNDARY_FIX
	  section.data(2).logicalSrcIdx = 10;
	  section.data(2).dtTransOffset = 256;
	
	  ;% hzu5hyg1az.Autothreshold_BIN_BOUNDARY_FIXP
	  section.data(3).logicalSrcIdx = 11;
	  section.data(3).dtTransOffset = 512;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(8) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.outlierBelowFloor_const
	  section.data(1).logicalSrcIdx = 12;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.outlierJump_const
	  section.data(2).logicalSrcIdx = 13;
	  section.data(2).dtTransOffset = 1;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.currentEstimateVeryOffFromPress
	  section.data(3).logicalSrcIdx = 14;
	  section.data(3).dtTransOffset = 2;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.currentStateVeryOffsonarflt_con
	  section.data(4).logicalSrcIdx = 15;
	  section.data(4).dtTransOffset = 3;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant_const
	  section.data(5).logicalSrcIdx = 16;
	  section.data(5).dtTransOffset = 4;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(9) = section;
      clear section
      
      section.nData     = 28;
      section.data(28)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteDerivative_ICPrevScaled
	  section.data(1).logicalSrcIdx = 17;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Checkifvalidvisualpositionestim
	  section.data(2).logicalSrcIdx = 18;
	  section.data(2).dtTransOffset = 1;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant_co_hpwobniapp
	  section.data(3).logicalSrcIdx = 19;
	  section.data(3).dtTransOffset = 2;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant1_const
	  section.data(4).logicalSrcIdx = 20;
	  section.data(4).dtTransOffset = 3;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.checkifPosavailable_const
	  section.data(5).logicalSrcIdx = 21;
	  section.data(5).dtTransOffset = 4;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxp3_const
	  section.data(6).logicalSrcIdx = 22;
	  section.data(6).dtTransOffset = 5;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxq3_const
	  section.data(7).logicalSrcIdx = 23;
	  section.data(7).dtTransOffset = 6;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.planarjumpsVISPOS_const
	  section.data(8).logicalSrcIdx = 24;
	  section.data(8).dtTransOffset = 7;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxp_const
	  section.data(9).logicalSrcIdx = 25;
	  section.data(9).dtTransOffset = 8;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxq_const
	  section.data(10).logicalSrcIdx = 26;
	  section.data(10).dtTransOffset = 9;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxw1_const
	  section.data(11).logicalSrcIdx = 27;
	  section.data(11).dtTransOffset = 10;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxw2_const
	  section.data(12).logicalSrcIdx = 28;
	  section.data(12).dtTransOffset = 11;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxdw1_const
	  section.data(13).logicalSrcIdx = 29;
	  section.data(13).dtTransOffset = 12;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxdw2_const
	  section.data(14).logicalSrcIdx = 30;
	  section.data(14).dtTransOffset = 13;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxp2_const
	  section.data(15).logicalSrcIdx = 31;
	  section.data(15).dtTransOffset = 14;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxq2_const
	  section.data(16).logicalSrcIdx = 32;
	  section.data(16).dtTransOffset = 15;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxw3_const
	  section.data(17).logicalSrcIdx = 33;
	  section.data(17).dtTransOffset = 16;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.maxw4_const
	  section.data(18).logicalSrcIdx = 34;
	  section.data(18).dtTransOffset = 17;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.minHeightforOF_const
	  section.data(19).logicalSrcIdx = 35;
	  section.data(19).dtTransOffset = 18;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant_co_mrgr44u1lo
	  section.data(20).logicalSrcIdx = 36;
	  section.data(20).dtTransOffset = 19;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant1_c_dl1smrv530
	  section.data(21).logicalSrcIdx = 37;
	  section.data(21).dtTransOffset = 20;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant2_const
	  section.data(22).logicalSrcIdx = 38;
	  section.data(22).dtTransOffset = 21;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant3_const
	  section.data(23).logicalSrcIdx = 39;
	  section.data(23).dtTransOffset = 22;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant4_const
	  section.data(24).logicalSrcIdx = 40;
	  section.data(24).dtTransOffset = 23;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.CompareToConstant5_const
	  section.data(25).logicalSrcIdx = 41;
	  section.data(25).dtTransOffset = 24;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DeactivateAccelerationIfOFisnot
	  section.data(26).logicalSrcIdx = 42;
	  section.data(26).dtTransOffset = 25;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.donotuseaccifopticalflowneverav
	  section.data(27).logicalSrcIdx = 43;
	  section.data(27).dtTransOffset = 26;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.donotuseaccifoptical_ggjduqghmk
	  section.data(28).logicalSrcIdx = 44;
	  section.data(28).dtTransOffset = 27;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(10) = section;
      clear section
      
      section.nData     = 30;
      section.data(30)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.deltax_Y0
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Hover_Value
	  section.data(3).logicalSrcIdx = 47;
	  section.data(3).dtTransOffset = 2;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant1_Value
	  section.data(4).logicalSrcIdx = 48;
	  section.data(4).dtTransOffset = 5;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainM_Value
	  section.data(5).logicalSrcIdx = 49;
	  section.data(5).dtTransOffset = 9;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.C_Value
	  section.data(6).logicalSrcIdx = 50;
	  section.data(6).dtTransOffset = 11;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Delay2_InitialCondition
	  section.data(7).logicalSrcIdx = 51;
	  section.data(7).dtTransOffset = 13;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.X0_Value
	  section.data(8).logicalSrcIdx = 52;
	  section.data(8).dtTransOffset = 14;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.SaturationSonar_LowerSat
	  section.data(9).logicalSrcIdx = 53;
	  section.data(9).dtTransOffset = 16;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.soonarFilter_IIR_NumCoef
	  section.data(10).logicalSrcIdx = 54;
	  section.data(10).dtTransOffset = 17;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.soonarFilter_IIR_DenCoef
	  section.data(11).logicalSrcIdx = 55;
	  section.data(11).dtTransOffset = 21;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.soonarFilter_IIR_InitialStates
	  section.data(12).logicalSrcIdx = 56;
	  section.data(12).dtTransOffset = 25;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrator_gainval
	  section.data(13).logicalSrcIdx = 57;
	  section.data(13).dtTransOffset = 26;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrator_IC
	  section.data(14).logicalSrcIdx = 58;
	  section.data(14).dtTransOffset = 27;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.TakeoffOrControl_Switch_Thresho
	  section.data(15).logicalSrcIdx = 59;
	  section.data(15).dtTransOffset = 28;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant10_Value
	  section.data(16).logicalSrcIdx = 60;
	  section.data(16).dtTransOffset = 29;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainM_Value_i2azzvaq4a
	  section.data(17).logicalSrcIdx = 61;
	  section.data(17).dtTransOffset = 30;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant3_Value
	  section.data(18).logicalSrcIdx = 62;
	  section.data(18).dtTransOffset = 34;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainM_Value_bul1td4ocs
	  section.data(19).logicalSrcIdx = 63;
	  section.data(19).dtTransOffset = 35;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.MotorDirections_Gain
	  section.data(20).logicalSrcIdx = 64;
	  section.data(20).dtTransOffset = 39;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.A_Value
	  section.data(21).logicalSrcIdx = 65;
	  section.data(21).dtTransOffset = 43;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.B_Value
	  section.data(22).logicalSrcIdx = 66;
	  section.data(22).dtTransOffset = 47;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainL_Value
	  section.data(23).logicalSrcIdx = 67;
	  section.data(23).dtTransOffset = 49;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_Value
	  section.data(24).logicalSrcIdx = 68;
	  section.data(24).dtTransOffset = 51;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.gravity_Value
	  section.data(25).logicalSrcIdx = 69;
	  section.data(25).dtTransOffset = 52;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.gravity_Value_m34zow35sx
	  section.data(26).logicalSrcIdx = 70;
	  section.data(26).dtTransOffset = 55;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.gainaccinput_Gain
	  section.data(27).logicalSrcIdx = 71;
	  section.data(27).dtTransOffset = 58;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainL_Value_fyhruri0my
	  section.data(28).logicalSrcIdx = 72;
	  section.data(28).dtTransOffset = 59;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.KalmanGainL_Value_lrhiny1bv3
	  section.data(29).logicalSrcIdx = 73;
	  section.data(29).dtTransOffset = 63;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant_Value
	  section.data(30).logicalSrcIdx = 74;
	  section.data(30).dtTransOffset = 67;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(11) = section;
      clear section
      
      section.nData     = 71;
      section.data(71)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain
	  section.data(1).logicalSrcIdx = 75;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain1_Gain
	  section.data(2).logicalSrcIdx = 76;
	  section.data(2).dtTransOffset = 1;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain2_Gain
	  section.data(3).logicalSrcIdx = 77;
	  section.data(3).dtTransOffset = 2;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain3_Gain
	  section.data(4).logicalSrcIdx = 78;
	  section.data(4).dtTransOffset = 3;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain4_Gain
	  section.data(5).logicalSrcIdx = 79;
	  section.data(5).dtTransOffset = 4;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain_o3tud2eors
	  section.data(6).logicalSrcIdx = 80;
	  section.data(6).dtTransOffset = 5;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain1_Gain_h1rdjlyvou
	  section.data(7).logicalSrcIdx = 81;
	  section.data(7).dtTransOffset = 6;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.takeoff_gain_Gain
	  section.data(8).logicalSrcIdx = 82;
	  section.data(8).dtTransOffset = 7;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain1_Gain_nouwhfvgl3
	  section.data(9).logicalSrcIdx = 83;
	  section.data(9).dtTransOffset = 8;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_xy_Gain
	  section.data(10).logicalSrcIdx = 84;
	  section.data(10).dtTransOffset = 10;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain_pn2kkb55yc
	  section.data(11).logicalSrcIdx = 85;
	  section.data(11).dtTransOffset = 12;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Saturation_UpperSat
	  section.data(12).logicalSrcIdx = 86;
	  section.data(12).dtTransOffset = 13;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Saturation_LowerSat
	  section.data(13).logicalSrcIdx = 87;
	  section.data(13).dtTransOffset = 14;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.P_xy_Gain
	  section.data(14).logicalSrcIdx = 88;
	  section.data(14).dtTransOffset = 15;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.TorqueTotalThrustToThrustPerMot
	  section.data(15).logicalSrcIdx = 89;
	  section.data(15).dtTransOffset = 17;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.invertzaxisGain_Gain
	  section.data(16).logicalSrcIdx = 90;
	  section.data(16).dtTransOffset = 33;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.prsToAltGain_Gain
	  section.data(17).logicalSrcIdx = 91;
	  section.data(17).dtTransOffset = 34;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.pressureFilter_IIR_NumCoef
	  section.data(18).logicalSrcIdx = 92;
	  section.data(18).dtTransOffset = 35;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.pressureFilter_IIR_DenCoef
	  section.data(19).logicalSrcIdx = 93;
	  section.data(19).dtTransOffset = 39;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.pressureFilter_IIR_InitialState
	  section.data(20).logicalSrcIdx = 94;
	  section.data(20).dtTransOffset = 43;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Memory_InitialCondition
	  section.data(21).logicalSrcIdx = 95;
	  section.data(21).dtTransOffset = 44;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant_Value_kt4yfh2ssh
	  section.data(22).logicalSrcIdx = 96;
	  section.data(22).dtTransOffset = 47;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain_e543qugrjh
	  section.data(23).logicalSrcIdx = 97;
	  section.data(23).dtTransOffset = 48;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Assumingthatcalibwasdonelevel_B
	  section.data(24).logicalSrcIdx = 98;
	  section.data(24).dtTransOffset = 49;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.inverseIMU_gain_Gain
	  section.data(25).logicalSrcIdx = 99;
	  section.data(25).dtTransOffset = 55;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIR_IMUgyro_r_NumCoef
	  section.data(26).logicalSrcIdx = 100;
	  section.data(26).dtTransOffset = 61;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIR_IMUgyro_r_DenCoef
	  section.data(27).logicalSrcIdx = 101;
	  section.data(27).dtTransOffset = 67;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIR_IMUgyro_r_InitialStates
	  section.data(28).logicalSrcIdx = 102;
	  section.data(28).dtTransOffset = 73;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain_prjn0fx1dr
	  section.data(29).logicalSrcIdx = 103;
	  section.data(29).dtTransOffset = 74;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.FIR_IMUaccel_InitialStates
	  section.data(30).logicalSrcIdx = 104;
	  section.data(30).dtTransOffset = 75;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.FIR_IMUaccel_Coefficients
	  section.data(31).logicalSrcIdx = 105;
	  section.data(31).dtTransOffset = 76;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant_Value_b2yinm0u1k
	  section.data(32).logicalSrcIdx = 106;
	  section.data(32).dtTransOffset = 82;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Merge_InitialOutput
	  section.data(33).logicalSrcIdx = 107;
	  section.data(33).dtTransOffset = 83;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Delay1_InitialCondition
	  section.data(34).logicalSrcIdx = 108;
	  section.data(34).dtTransOffset = 84;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.P_yaw_Gain
	  section.data(35).logicalSrcIdx = 109;
	  section.data(35).dtTransOffset = 85;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_yaw_Gain
	  section.data(36).logicalSrcIdx = 110;
	  section.data(36).dtTransOffset = 86;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.C_Value_jckot14jvg
	  section.data(37).logicalSrcIdx = 111;
	  section.data(37).dtTransOffset = 87;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.X0_Value_pwywh5rd3z
	  section.data(38).logicalSrcIdx = 112;
	  section.data(38).dtTransOffset = 91;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Delay_InitialCondition
	  section.data(39).logicalSrcIdx = 113;
	  section.data(39).dtTransOffset = 93;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant_Value_e1ljyssmwm
	  section.data(40).logicalSrcIdx = 114;
	  section.data(40).dtTransOffset = 94;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Memory_1_InitialCondition
	  section.data(41).logicalSrcIdx = 115;
	  section.data(41).dtTransOffset = 95;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Memory_2_InitialCondition
	  section.data(42).logicalSrcIdx = 116;
	  section.data(42).dtTransOffset = 96;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant3_Value_hxcsl4c44j
	  section.data(43).logicalSrcIdx = 117;
	  section.data(43).dtTransOffset = 97;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.SimplyIntegrateVelocity_gainval
	  section.data(44).logicalSrcIdx = 118;
	  section.data(44).dtTransOffset = 100;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.SimplyIntegrateVelocity_IC
	  section.data(45).logicalSrcIdx = 119;
	  section.data(45).dtTransOffset = 101;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.UseIPPosSwitch_Threshold
	  section.data(46).logicalSrcIdx = 120;
	  section.data(46).dtTransOffset = 102;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.C_Value_jrvxafc11a
	  section.data(47).logicalSrcIdx = 121;
	  section.data(47).dtTransOffset = 103;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.opticalFlowToVelocity_gain_Gain
	  section.data(48).logicalSrcIdx = 122;
	  section.data(48).dtTransOffset = 107;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.X0_Value_ev5ew1onb4
	  section.data(49).logicalSrcIdx = 123;
	  section.data(49).dtTransOffset = 108;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIRgyroz_NumCoef
	  section.data(50).logicalSrcIdx = 124;
	  section.data(50).dtTransOffset = 110;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIRgyroz_DenCoef
	  section.data(51).logicalSrcIdx = 125;
	  section.data(51).dtTransOffset = 116;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.IIRgyroz_InitialStates
	  section.data(52).logicalSrcIdx = 126;
	  section.data(52).dtTransOffset = 122;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.TSamp_WtEt
	  section.data(53).logicalSrcIdx = 127;
	  section.data(53).dtTransOffset = 123;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Delay_InitialConditi_nk1101lnxb
	  section.data(54).logicalSrcIdx = 128;
	  section.data(54).dtTransOffset = 124;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.P_pr_Gain
	  section.data(55).logicalSrcIdx = 129;
	  section.data(55).dtTransOffset = 125;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrat_oodtv5z551
	  section.data(56).logicalSrcIdx = 130;
	  section.data(56).dtTransOffset = 127;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrat_b3dycfumo5
	  section.data(57).logicalSrcIdx = 131;
	  section.data(57).dtTransOffset = 128;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrator_UpperSat
	  section.data(58).logicalSrcIdx = 132;
	  section.data(58).dtTransOffset = 129;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.DiscreteTimeIntegrator_LowerSat
	  section.data(59).logicalSrcIdx = 133;
	  section.data(59).dtTransOffset = 130;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.I_pr_Gain
	  section.data(60).logicalSrcIdx = 134;
	  section.data(60).dtTransOffset = 131;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_pr_Gain
	  section.data(61).logicalSrcIdx = 135;
	  section.data(61).dtTransOffset = 132;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain_Gain_gk0er0xs22
	  section.data(62).logicalSrcIdx = 136;
	  section.data(62).dtTransOffset = 134;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Gain1_Gain_bwzqid4bry
	  section.data(63).logicalSrcIdx = 137;
	  section.data(63).dtTransOffset = 135;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.A_Value_kfremf2pt0
	  section.data(64).logicalSrcIdx = 138;
	  section.data(64).dtTransOffset = 136;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.B_Value_hhnwcn1udu
	  section.data(65).logicalSrcIdx = 139;
	  section.data(65).dtTransOffset = 140;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_Value_hqpatpnw3u
	  section.data(66).logicalSrcIdx = 140;
	  section.data(66).dtTransOffset = 144;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.A_Value_g3d1wh1xbg
	  section.data(67).logicalSrcIdx = 141;
	  section.data(67).dtTransOffset = 148;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.B_Value_gdwewws5rz
	  section.data(68).logicalSrcIdx = 142;
	  section.data(68).dtTransOffset = 152;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.D_Value_abkhaju1eg
	  section.data(69).logicalSrcIdx = 143;
	  section.data(69).dtTransOffset = 156;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Delay_InitialConditi_fg3pbl3a1q
	  section.data(70).logicalSrcIdx = 144;
	  section.data(70).dtTransOffset = 160;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.antiWU_Gain_Gain
	  section.data(71).logicalSrcIdx = 145;
	  section.data(71).dtTransOffset = 161;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant1_Value_prf5ag4zcx
	  section.data(1).logicalSrcIdx = 146;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(13) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.Constant_Value_lwdcw43tn2
	  section.data(1).logicalSrcIdx = 147;
	  section.data(1).dtTransOffset = 0;
	
	  ;% hzu5hyg1az.mkzqsnvze1e.Merge_InitialOutput_amastwsom4
	  section.data(2).logicalSrcIdx = 148;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.iaqw1ghhtq.deltax_Y0
	  section.data(1).logicalSrcIdx = 149;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.dizpv1pui4.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 150;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.ch14tjkahj0.deltax_Y0
	  section.data(1).logicalSrcIdx = 151;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.n2bqzacv52g.Lykyhatkk1_Y0
	  section.data(1).logicalSrcIdx = 152;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.aao1kladmy.Constant_Value
	  section.data(1).logicalSrcIdx = 153;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.coztesszra.Constant_Value
	  section.data(1).logicalSrcIdx = 154;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(20) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% hzu5hyg1az.mkzqsnvze1e.dkuixhfqrha.Constant_Value
	  section.data(1).logicalSrcIdx = 155;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      paramMap.sections(21) = section;
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
    nTotSects     = 13;
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
    ;% Auto data (iy4qsfudri4)
    ;%
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.i5d1uandfm
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.foudmiypqw
	  section.data(2).logicalSrcIdx = 1;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(1) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.fq1gmps45q
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.aq1b1upwhk
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 50;
	
	  ;% iy4qsfudri4.baggp0z3ao
	  section.data(3).logicalSrcIdx = 4;
	  section.data(3).dtTransOffset = 100;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(2) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.evrsc2sfaa
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.d1p1puviy3
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 19200;
	
	  ;% iy4qsfudri4.gk2ue2yvml
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 38400;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(3) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.nzingnlf4u
	  section.data(1).logicalSrcIdx = 8;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.mc15agyxkm
	  section.data(2).logicalSrcIdx = 9;
	  section.data(2).dtTransOffset = 1;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.j1enaprhqb
	  section.data(3).logicalSrcIdx = 10;
	  section.data(3).dtTransOffset = 2;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.atg2hibkum
	  section.data(4).logicalSrcIdx = 11;
	  section.data(4).dtTransOffset = 6;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.nkzzc2upgs
	  section.data(5).logicalSrcIdx = 12;
	  section.data(5).dtTransOffset = 8;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(4) = section;
      clear section
      
      section.nData     = 19;
      section.data(19)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.abcuirvwem
	  section.data(1).logicalSrcIdx = 13;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.ku03nxxcbk
	  section.data(2).logicalSrcIdx = 14;
	  section.data(2).dtTransOffset = 1;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.knrsniujca
	  section.data(3).logicalSrcIdx = 15;
	  section.data(3).dtTransOffset = 2;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.jzyw4nxcka
	  section.data(4).logicalSrcIdx = 16;
	  section.data(4).dtTransOffset = 3;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.o5pcdv3azf
	  section.data(5).logicalSrcIdx = 17;
	  section.data(5).dtTransOffset = 4;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.cphjnumaaj
	  section.data(6).logicalSrcIdx = 18;
	  section.data(6).dtTransOffset = 5;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.jzyw4nxckaz
	  section.data(7).logicalSrcIdx = 19;
	  section.data(7).dtTransOffset = 6;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.o5pcdv3azf5
	  section.data(8).logicalSrcIdx = 20;
	  section.data(8).dtTransOffset = 7;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.cphjnumaajj
	  section.data(9).logicalSrcIdx = 21;
	  section.data(9).dtTransOffset = 8;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.hv5lm4giah
	  section.data(10).logicalSrcIdx = 22;
	  section.data(10).dtTransOffset = 9;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.ngioxsrc1s
	  section.data(11).logicalSrcIdx = 23;
	  section.data(11).dtTransOffset = 15;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.i3w5yaliq2
	  section.data(12).logicalSrcIdx = 24;
	  section.data(12).dtTransOffset = 17;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.m15dnedlaf
	  section.data(13).logicalSrcIdx = 25;
	  section.data(13).dtTransOffset = 20;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.o4jfipfmkn
	  section.data(14).logicalSrcIdx = 26;
	  section.data(14).dtTransOffset = 21;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.pcsqao2ppm
	  section.data(15).logicalSrcIdx = 27;
	  section.data(15).dtTransOffset = 24;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.lt5afpj3mg
	  section.data(16).logicalSrcIdx = 28;
	  section.data(16).dtTransOffset = 26;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.kqnitpshtu
	  section.data(17).logicalSrcIdx = 29;
	  section.data(17).dtTransOffset = 28;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.ktynkejepw
	  section.data(18).logicalSrcIdx = 30;
	  section.data(18).dtTransOffset = 30;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.lxwsrn0wfe
	  section.data(19).logicalSrcIdx = 31;
	  section.data(19).dtTransOffset = 33;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(5) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.judi1a5k0z
	  section.data(1).logicalSrcIdx = 32;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(6) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.iaqw1ghhtq.h44oqegzj5
	  section.data(1).logicalSrcIdx = 33;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.dizpv1pui4.d5yptmanur
	  section.data(1).logicalSrcIdx = 34;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(8) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.ch14tjkahj0.h44oqegzj5
	  section.data(1).logicalSrcIdx = 35;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(9) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.n2bqzacv52g.d5yptmanur
	  section.data(1).logicalSrcIdx = 36;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(10) = section;
      clear section
      
      section.nData     = 16;
      section.data(16)  = dumData; %prealloc
      
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.frh0xy3pbc
	  section.data(1).logicalSrcIdx = 37;
	  section.data(1).dtTransOffset = 0;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.b15nc3pitc
	  section.data(2).logicalSrcIdx = 38;
	  section.data(2).dtTransOffset = 8;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.pksb5pcgli
	  section.data(3).logicalSrcIdx = 39;
	  section.data(3).dtTransOffset = 20;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.ktynkejepw
	  section.data(4).logicalSrcIdx = 40;
	  section.data(4).dtTransOffset = 21;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.mdryuqfmws
	  section.data(5).logicalSrcIdx = 41;
	  section.data(5).dtTransOffset = 24;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.lxwsrn0wfe
	  section.data(6).logicalSrcIdx = 42;
	  section.data(6).dtTransOffset = 25;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.jvdzddt20k
	  section.data(7).logicalSrcIdx = 43;
	  section.data(7).dtTransOffset = 28;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.dpzcz1gymh
	  section.data(8).logicalSrcIdx = 44;
	  section.data(8).dtTransOffset = 29;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.ltup4asbt3
	  section.data(9).logicalSrcIdx = 45;
	  section.data(9).dtTransOffset = 38;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.opc3onwrh0
	  section.data(10).logicalSrcIdx = 46;
	  section.data(10).dtTransOffset = 39;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.n1oxqdhqsn
	  section.data(11).logicalSrcIdx = 47;
	  section.data(11).dtTransOffset = 42;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.crwtdxegvr
	  section.data(12).logicalSrcIdx = 48;
	  section.data(12).dtTransOffset = 46;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.glwqfojxud
	  section.data(13).logicalSrcIdx = 49;
	  section.data(13).dtTransOffset = 54;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.asoxdk2xph
	  section.data(14).logicalSrcIdx = 50;
	  section.data(14).dtTransOffset = 62;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.k1aupyckj0
	  section.data(15).logicalSrcIdx = 51;
	  section.data(15).dtTransOffset = 63;
	
	  ;% iy4qsfudri4.mkzqsnvze1e.p03tm04nyv5.melnpidwks
	  section.data(16).logicalSrcIdx = 52;
	  section.data(16).dtTransOffset = 64;
	
      nTotData = nTotData + section.nData;
      sigMap.sections(11) = section;
      clear section
      
    
      ;%
      ;% Non-auto Data (signal)
      ;%
	      
	    ;% motors_outport
	    section.nData = 1;
	    section.data(1).logicalSrcIdx = 196;
	    section.data(1).dtTransOffset = 0;
	  
	    nTotData = nTotData + section.nData;
	    sigMap.sections(12) = section;
	    clear section
	  
	      
	    ;% flag_outport
	    section.nData = 1;
	    section.data(1).logicalSrcIdx = 197;
	    section.data(1).dtTransOffset = 0;
	  
	    nTotData = nTotData + section.nData;
	    sigMap.sections(13) = section;
	    clear section
	  
    

    ;%
    ;% Add final counts to struct.
    ;%
    sigMap.nTotData = nTotData;
    


  ;%*******************
  ;% Create DWork Map *
  ;%*******************
      
    nTotData      = 0; %add to this count as we go
    nTotSects     = 24;
    sectIdxOffset = 13;
    
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
    ;% Auto data (nnrhqoz00jm)
    ;%
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.a3wxitlqun
	  section.data(1).logicalSrcIdx = 0;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(1) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.jaxysmcr5x
	  section.data(1).logicalSrcIdx = 1;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(2) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.ozftvlko5r.LoggedData
	  section.data(1).logicalSrcIdx = 2;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.os30quhfxb.LoggedData
	  section.data(2).logicalSrcIdx = 3;
	  section.data(2).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(3) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.nl11qaimli
	  section.data(1).logicalSrcIdx = 4;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(4) = section;
      clear section
      
      section.nData     = 4;
      section.data(4)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.k5l1mqmwyw
	  section.data(1).logicalSrcIdx = 5;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.j5ey5f0urd
	  section.data(2).logicalSrcIdx = 6;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.e1uhpeai1l
	  section.data(3).logicalSrcIdx = 7;
	  section.data(3).dtTransOffset = 3;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.iz5quc13o0
	  section.data(4).logicalSrcIdx = 8;
	  section.data(4).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(5) = section;
      clear section
      
      section.nData     = 5;
      section.data(5)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.i3zdqwg50k.LoggedData
	  section.data(1).logicalSrcIdx = 10;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.hprwaso1ii.LoggedData
	  section.data(2).logicalSrcIdx = 11;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.ntr3rzwdt4.LoggedData
	  section.data(3).logicalSrcIdx = 12;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.osz3s5jgii.LoggedData
	  section.data(4).logicalSrcIdx = 13;
	  section.data(4).dtTransOffset = 3;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.k3q5gv210f.LoggedData
	  section.data(5).logicalSrcIdx = 14;
	  section.data(5).dtTransOffset = 5;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(6) = section;
      clear section
      
      section.nData     = 11;
      section.data(11)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.imennnt444
	  section.data(1).logicalSrcIdx = 15;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.fudx2rskt1
	  section.data(2).logicalSrcIdx = 16;
	  section.data(2).dtTransOffset = 3;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.c5lvruaf1q
	  section.data(3).logicalSrcIdx = 17;
	  section.data(3).dtTransOffset = 8;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.orzitekfxm
	  section.data(4).logicalSrcIdx = 19;
	  section.data(4).dtTransOffset = 23;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.dh1pmc4nmf
	  section.data(5).logicalSrcIdx = 20;
	  section.data(5).dtTransOffset = 25;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.br5tlbsitn
	  section.data(6).logicalSrcIdx = 21;
	  section.data(6).dtTransOffset = 27;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.kbz2tn2rez
	  section.data(7).logicalSrcIdx = 22;
	  section.data(7).dtTransOffset = 29;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.gtchecvl3k
	  section.data(8).logicalSrcIdx = 23;
	  section.data(8).dtTransOffset = 31;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.hsrpagelwh
	  section.data(9).logicalSrcIdx = 24;
	  section.data(9).dtTransOffset = 41;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.nnwbwdzdhf
	  section.data(10).logicalSrcIdx = 26;
	  section.data(10).dtTransOffset = 43;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.i0m43yp253
	  section.data(11).logicalSrcIdx = 27;
	  section.data(11).dtTransOffset = 45;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(7) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.irkavb0qsz
	  section.data(1).logicalSrcIdx = 28;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(8) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.pigpww54xx
	  section.data(1).logicalSrcIdx = 30;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.jtcnstowvb
	  section.data(2).logicalSrcIdx = 34;
	  section.data(2).dtTransOffset = 3;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(9) = section;
      clear section
      
      section.nData     = 7;
      section.data(7)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.nuvfhqj0ck
	  section.data(1).logicalSrcIdx = 35;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.bv5ox5lr24
	  section.data(2).logicalSrcIdx = 36;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.ed3khguw4r
	  section.data(3).logicalSrcIdx = 37;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p2kkvwlxrj
	  section.data(4).logicalSrcIdx = 38;
	  section.data(4).dtTransOffset = 3;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.pinrt1d41p
	  section.data(5).logicalSrcIdx = 39;
	  section.data(5).dtTransOffset = 4;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.nrfu5fm53l
	  section.data(6).logicalSrcIdx = 40;
	  section.data(6).dtTransOffset = 5;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.mhtmot4v1k
	  section.data(7).logicalSrcIdx = 41;
	  section.data(7).dtTransOffset = 6;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(10) = section;
      clear section
      
      section.nData     = 3;
      section.data(3)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.j0yqnqxyqg
	  section.data(1).logicalSrcIdx = 42;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.ot24btt3fq
	  section.data(2).logicalSrcIdx = 43;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.pb3uicyscp
	  section.data(3).logicalSrcIdx = 44;
	  section.data(3).dtTransOffset = 2;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(11) = section;
      clear section
      
      section.nData     = 2;
      section.data(2)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.db3e04llli
	  section.data(1).logicalSrcIdx = 45;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.h5d3jxotmq
	  section.data(2).logicalSrcIdx = 46;
	  section.data(2).dtTransOffset = 1;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(12) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.iaqw1ghhtq.gfynxapssx
	  section.data(1).logicalSrcIdx = 47;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(13) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.iaqw1ghhtq.jyeimrfcsf
	  section.data(1).logicalSrcIdx = 48;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(14) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.dizpv1pui4.g3sy4bypfq
	  section.data(1).logicalSrcIdx = 49;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(15) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.dizpv1pui4.mr4up2ban5
	  section.data(1).logicalSrcIdx = 50;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(16) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.ch14tjkahj0.gfynxapssx
	  section.data(1).logicalSrcIdx = 51;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(17) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.ch14tjkahj0.jyeimrfcsf
	  section.data(1).logicalSrcIdx = 52;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(18) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.n2bqzacv52g.g3sy4bypfq
	  section.data(1).logicalSrcIdx = 53;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(19) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.n2bqzacv52g.mr4up2ban5
	  section.data(1).logicalSrcIdx = 54;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(20) = section;
      clear section
      
      section.nData     = 8;
      section.data(8)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.bbxktkzfvn.LoggedData
	  section.data(1).logicalSrcIdx = 55;
	  section.data(1).dtTransOffset = 0;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.n4gfa30jvc.LoggedData
	  section.data(2).logicalSrcIdx = 56;
	  section.data(2).dtTransOffset = 1;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.jcwy43k3sz.LoggedData
	  section.data(3).logicalSrcIdx = 57;
	  section.data(3).dtTransOffset = 2;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.hzfhyzg3ss.LoggedData
	  section.data(4).logicalSrcIdx = 58;
	  section.data(4).dtTransOffset = 3;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.j2cm5ok5bh.LoggedData
	  section.data(5).logicalSrcIdx = 59;
	  section.data(5).dtTransOffset = 4;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.os3um32l2s.LoggedData
	  section.data(6).logicalSrcIdx = 60;
	  section.data(6).dtTransOffset = 5;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.fuuddsbx3b.LoggedData
	  section.data(7).logicalSrcIdx = 61;
	  section.data(7).dtTransOffset = 6;
	
	  ;% nnrhqoz00jm.mkzqsnvze1e.p03tm04nyv5.mahdcyy0m1.LoggedData
	  section.data(8).logicalSrcIdx = 62;
	  section.data(8).dtTransOffset = 7;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(21) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.aao1kladmy.fc3qotbgks
	  section.data(1).logicalSrcIdx = 63;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(22) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.coztesszra.fc3qotbgks
	  section.data(1).logicalSrcIdx = 64;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(23) = section;
      clear section
      
      section.nData     = 1;
      section.data(1)  = dumData; %prealloc
      
	  ;% nnrhqoz00jm.mkzqsnvze1e.dkuixhfqrha.fc3qotbgks
	  section.data(1).logicalSrcIdx = 65;
	  section.data(1).dtTransOffset = 0;
	
      nTotData = nTotData + section.nData;
      dworkMap.sections(24) = section;
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


  targMap.checksum0 = 3793199864;
  targMap.checksum1 = 1332951334;
  targMap.checksum2 = 3816339849;
  targMap.checksum3 = 850435818;

