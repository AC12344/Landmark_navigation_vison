/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: flightController.c
 *
 * Code generated for Simulink model 'flightController'.
 *
 * Model version                  : 1.271
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Mon May 31 17:44:18 2021
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "flightController.h"
#include "flightController_private.h"

P_flightController_T flightController_P_g = {
  /* Expression: [0 0 -1]
   * Referenced by: '<Root>/Hover'
   */
  { 0.0, 0.0, -1.0 },

  /* Computed Parameter: DiscreteTimeIntegrator_gainval
   * Referenced by: '<S5>/Discrete-Time Integrator'
   */
  0.005,

  /* Expression: 0
   * Referenced by: '<S5>/Discrete-Time Integrator'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S5>/TakeoffOrControl_Switch'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Constant'
   */
  0.0,

  /* Expression: [0 0 -1.5]
   * Referenced by: '<S2>/Unit Delay2'
   */
  { 0.0, 0.0, -1.5 },

  /* Expression: 2
   * Referenced by: '<S2>/Travel distance'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S2>/Unit Delay1'
   */
  0.0,

  /* Expression: Controller.takeoffGain
   * Referenced by: '<S5>/takeoff_gain'
   */
  0.45F,

  /* Computed Parameter: Gain1_Gain
   * Referenced by: '<S5>/Gain1'
   */
  { -11.2286034F, -4.7390089F },

  /* Computed Parameter: D_xy_Gain
   * Referenced by: '<S6>/D_xy'
   */
  { 0.06F, -0.06F },

  /* Computed Parameter: Gain_Gain
   * Referenced by: '<S6>/Gain'
   */
  -1.0F,

  /* Computed Parameter: Saturation_UpperSat
   * Referenced by: '<S6>/Saturation'
   */
  3.0F,

  /* Computed Parameter: Saturation_LowerSat
   * Referenced by: '<S6>/Saturation'
   */
  -3.0F,

  /* Computed Parameter: P_xy_Gain
   * Referenced by: '<S6>/P_xy'
   */
  { -0.03F, 0.03F },

  /* Expression: Controller.takeoffGain
   * Referenced by: '<S8>/takeoff_gain'
   */
  0.45F,

  /* Computed Parameter: D_z1_Gain
   * Referenced by: '<S8>/D_z1'
   */
  0.3F,

  /* Computed Parameter: P_z1_Gain
   * Referenced by: '<S8>/P_z1'
   */
  0.8F,

  /* Expression: Controller.Q2Ts
   * Referenced by: '<S4>/TorqueTotalThrustToThrustPerMotor'
   */
  { 0.25F, 0.25F, 0.25F, 0.25F, 103.573624F, -103.573624F, 103.573624F,
    -103.573624F, -5.66592F, -5.66592F, 5.66592F, 5.66592F, -5.66592F, 5.66592F,
    5.66592F, -5.66592F },

  /* Computed Parameter: D_pr_Gain
   * Referenced by: '<S3>/D_pr'
   */
  { 0.002F, 0.0028F },

  /* Computed Parameter: DiscreteTimeIntegrator_gainval_n
   * Referenced by: '<S3>/Discrete-Time Integrator'
   */
  0.005F,

  /* Computed Parameter: DiscreteTimeIntegrator_IC_p
   * Referenced by: '<S3>/Discrete-Time Integrator'
   */
  0.0F,

  /* Computed Parameter: DiscreteTimeIntegrator_UpperSat
   * Referenced by: '<S3>/Discrete-Time Integrator'
   */
  2.0F,

  /* Computed Parameter: DiscreteTimeIntegrator_LowerSat
   * Referenced by: '<S3>/Discrete-Time Integrator'
   */
  -2.0F,

  /* Computed Parameter: I_pr_Gain
   * Referenced by: '<S3>/I_pr'
   */
  0.01F,

  /* Computed Parameter: P_pr_Gain
   * Referenced by: '<S3>/P_pr'
   */
  { 0.013F, 0.01F },

  /* Computed Parameter: w0_Value
   * Referenced by: '<S8>/w0'
   */
  -0.61803F,

  /* Computed Parameter: SaturationThrust_UpperSat
   * Referenced by: '<S8>/SaturationThrust'
   */
  1.20204329F,

  /* Computed Parameter: SaturationThrust_LowerSat
   * Referenced by: '<S8>/SaturationThrust'
   */
  -1.20204329F,

  /* Computed Parameter: w0_Value_m
   * Referenced by: '<S5>/w0'
   */
  -0.61803F,

  /* Computed Parameter: SaturationThrust_UpperSat_h
   * Referenced by: '<S5>/SaturationThrust'
   */
  1.20204329F,

  /* Computed Parameter: SaturationThrust_LowerSat_i
   * Referenced by: '<S5>/SaturationThrust'
   */
  -1.20204329F,

  /* Computed Parameter: P_yaw_Gain
   * Referenced by: '<S7>/P_yaw'
   */
  0.004F,

  /* Computed Parameter: D_yaw_Gain
   * Referenced by: '<S7>/D_yaw'
   */
  0.0012F,

  /* Computed Parameter: ThrustToMotorCommand_Gain
   * Referenced by: '<S9>/ThrustToMotorCommand'
   */
  -1530.72681F,

  /* Expression: Vehicle.Motor.maxLimit
   * Referenced by: '<S9>/Saturation5'
   */
  500.0F,

  /* Expression: Vehicle.Motor.minLimit
   * Referenced by: '<S9>/Saturation5'
   */
  10.0F,

  /* Computed Parameter: MotorDirections_Gain
   * Referenced by: '<S9>/MotorDirections'
   */
  { 1.0F, -1.0F, 1.0F, -1.0F },

  /* Computed Parameter: Delay_InitialCondition
   * Referenced by: '<S3>/Delay'
   */
  0.0F,

  /* Computed Parameter: antiWU_Gain_Gain
   * Referenced by: '<S3>/antiWU_Gain'
   */
  0.001F,

  /* Computed Parameter: Gain_Gain_e
   * Referenced by: '<S1>/Gain'
   */
  -1.0F,

  /* Computed Parameter: ManualSwitch_CurrentSetting
   * Referenced by: '<S1>/Manual Switch'
   */
  0U
};

MdlrefDW_flightController_T flightController_MdlrefDW;

/* Block signals (default storage) */
B_flightController_c_T flightController_B;

/* Block states (default storage) */
DW_flightController_f_T flightController_DW;

/* System initialize for referenced model: 'flightController' */
void flightController_Init(void)
{
  /* InitializeConditions for DiscreteIntegrator: '<S5>/Discrete-Time Integrator' */
  flightController_DW.DiscreteTimeIntegrator_DSTATE =
    flightController_P_g.DiscreteTimeIntegrator_IC;

  /* InitializeConditions for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */
  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] =
    flightController_P_g.DiscreteTimeIntegrator_IC_p;

  /* InitializeConditions for Delay: '<S3>/Delay' */
  flightController_DW.Delay_DSTATE[0] =
    flightController_P_g.Delay_InitialCondition;

  /* InitializeConditions for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */
  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] =
    flightController_P_g.DiscreteTimeIntegrator_IC_p;

  /* InitializeConditions for Delay: '<S3>/Delay' */
  flightController_DW.Delay_DSTATE[1] =
    flightController_P_g.Delay_InitialCondition;

  /* InitializeConditions for UnitDelay: '<S2>/Unit Delay2' */
  flightController_DW.UnitDelay2_DSTATE[0] =
    flightController_P_g.UnitDelay2_InitialCondition[0];
  flightController_DW.UnitDelay2_DSTATE[1] =
    flightController_P_g.UnitDelay2_InitialCondition[1];
  flightController_DW.UnitDelay2_DSTATE[2] =
    flightController_P_g.UnitDelay2_InitialCondition[2];

  /* InitializeConditions for UnitDelay: '<S2>/Unit Delay1' */
  flightController_DW.UnitDelay1_DSTATE =
    flightController_P_g.UnitDelay1_InitialCondition;
}

/* Output and update for referenced model: 'flightController' */
void flightController_run(const CommandBus *arg_ReferenceValueServerBus, const
  statesEstim_t *arg_states_estim, real32_T arg_motors_refout[4], real32_T
  arg_pose_refout[8], real_T *arg_vision)
{
  /* local block i/o variables */
  real32_T rtb_Z;
  real32_T rtb_Sum4;
  real32_T rtb_SaturationThrust;
  real32_T rtb_SaturationThrust_a;
  real32_T rtb_Gain3;
  int32_T move;
  real32_T rtb_DiscreteTimeIntegrator_l_idx_1;
  real32_T rtb_ManualSwitch;
  real32_T rtb_ManualSwitch_idx_2;
  real32_T rtb_ManualSwitch_idx_3;
  real32_T rtb_P_yaw;
  real32_T rtb_Sum2;
  real32_T rtb_TrigonometricFunction_o2;
  real32_T rtb_pitchrollerror_idx_0;
  real32_T rtb_pitchrollerror_idx_1;

  /* Switch: '<S1>/Switch_refAtt' incorporates:
   *  Gain: '<S6>/D_xy'
   *  Gain: '<S6>/P_xy'
   *  Sum: '<S6>/Sum18'
   */
  if (arg_ReferenceValueServerBus->controlModePosVSOrient) {
    /* Trigonometry: '<S6>/Trigonometric Function' */
    rtb_pitchrollerror_idx_1 = (real32_T)sin(arg_states_estim->yaw);
    rtb_TrigonometricFunction_o2 = (real32_T)cos(arg_states_estim->yaw);

    /* Sum: '<S6>/Sum17' incorporates:
     *  Constant: '<Root>/Hover'
     */
    flightController_B.TakeoffOrControl_Switch = (real32_T)
      flightController_P_g.Hover_Value[0] - arg_states_estim->X;
    flightController_B.unnamed_idx_1 = (real32_T)
      flightController_P_g.Hover_Value[1] - arg_states_estim->Y;

    /* Product: '<S6>/Product' incorporates:
     *  SignalConversion generated from: '<S6>/Vector Concatenate1'
     *  SignalConversion generated from: '<S6>/Vector Concatenate'
     */
    flightController_B.d = rtb_TrigonometricFunction_o2 *
      flightController_B.TakeoffOrControl_Switch + rtb_pitchrollerror_idx_1 *
      flightController_B.unnamed_idx_1;

    /* Saturate: '<S6>/Saturation' incorporates:
     *  Product: '<S6>/Product'
     */
    if ((real32_T)flightController_B.d >
        flightController_P_g.Saturation_UpperSat) {
      rtb_P_yaw = flightController_P_g.Saturation_UpperSat;
    } else if ((real32_T)flightController_B.d <
               flightController_P_g.Saturation_LowerSat) {
      rtb_P_yaw = flightController_P_g.Saturation_LowerSat;
    } else {
      rtb_P_yaw = (real32_T)flightController_B.d;
    }

    rtb_pitchrollerror_idx_0 = flightController_P_g.P_xy_Gain[0] * rtb_P_yaw +
      flightController_P_g.D_xy_Gain[0] * arg_states_estim->dx;

    /* Product: '<S6>/Product' incorporates:
     *  Gain: '<S6>/D_xy'
     *  Gain: '<S6>/Gain'
     *  Gain: '<S6>/P_xy'
     *  SignalConversion generated from: '<S6>/Vector Concatenate1'
     *  Sum: '<S6>/Sum18'
     */
    flightController_B.d = flightController_P_g.Gain_Gain *
      rtb_pitchrollerror_idx_1 * flightController_B.TakeoffOrControl_Switch +
      rtb_TrigonometricFunction_o2 * flightController_B.unnamed_idx_1;

    /* Saturate: '<S6>/Saturation' incorporates:
     *  Product: '<S6>/Product'
     */
    if ((real32_T)flightController_B.d >
        flightController_P_g.Saturation_UpperSat) {
      rtb_P_yaw = flightController_P_g.Saturation_UpperSat;
    } else if ((real32_T)flightController_B.d <
               flightController_P_g.Saturation_LowerSat) {
      rtb_P_yaw = flightController_P_g.Saturation_LowerSat;
    } else {
      rtb_P_yaw = (real32_T)flightController_B.d;
    }

    rtb_pitchrollerror_idx_1 = flightController_P_g.P_xy_Gain[1] * rtb_P_yaw +
      flightController_P_g.D_xy_Gain[1] * arg_states_estim->dy;
  } else {
    rtb_pitchrollerror_idx_0 = arg_ReferenceValueServerBus->orient_ref[1];
    rtb_pitchrollerror_idx_1 = arg_ReferenceValueServerBus->orient_ref[2];
  }

  /* End of Switch: '<S1>/Switch_refAtt' */

  /* SignalConversion generated from: '<S10>/ SFunction ' incorporates:
   *  SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector'
   */
  flightController_B.TmpSignalConversionAtSFunctionInport1[0] =
    arg_ReferenceValueServerBus->orient_ref[0];
  flightController_B.TmpSignalConversionAtSFunctionInport1[1] =
    arg_ReferenceValueServerBus->orient_ref[1];
  flightController_B.TmpSignalConversionAtSFunctionInport1[2] =
    arg_ReferenceValueServerBus->orient_ref[2];

  /* SignalConversion generated from: '<Root>/pose_refout' incorporates:
   *  SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector'
   */
  arg_pose_refout[0] = arg_ReferenceValueServerBus->pos_ref[0];
  arg_pose_refout[1] = arg_ReferenceValueServerBus->pos_ref[1];
  arg_pose_refout[2] = arg_ReferenceValueServerBus->pos_ref[2];
  arg_pose_refout[3] = flightController_B.TmpSignalConversionAtSFunctionInport1
    [0];
  arg_pose_refout[4] = flightController_B.TmpSignalConversionAtSFunctionInport1
    [1];
  arg_pose_refout[5] = flightController_B.TmpSignalConversionAtSFunctionInport1
    [2];
  arg_pose_refout[6] = rtb_pitchrollerror_idx_0;

  /* DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */
  rtb_TrigonometricFunction_o2 =
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0];

  /* SignalConversion generated from: '<Root>/pose_refout' */
  arg_pose_refout[7] = rtb_pitchrollerror_idx_1;

  /* DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */
  rtb_DiscreteTimeIntegrator_l_idx_1 =
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1];

  /* Sum: '<S3>/Sum19' */
  rtb_pitchrollerror_idx_0 -= arg_states_estim->pitch;
  rtb_pitchrollerror_idx_1 -= arg_states_estim->roll;

  /* Switch: '<S8>/TakeoffOrControl_Switch' */
  if (arg_ReferenceValueServerBus->takeoff_flag) {
    /* Saturate: '<S8>/SaturationThrust' incorporates:
     *  Constant: '<S8>/w0'
     *  Gain: '<S8>/takeoff_gain'
     */
    rtb_SaturationThrust_a = flightController_P_g.takeoff_gain_Gain_o *
      flightController_P_g.w0_Value;
  } else {
    /* Saturate: '<S8>/SaturationThrust' incorporates:
     *  Constant: '<Root>/Hover'
     *  Gain: '<S8>/D_z1'
     *  Gain: '<S8>/P_z1'
     *  Sum: '<S8>/Sum'
     *  Sum: '<S8>/Sum1'
     *  Sum: '<S8>/Sum7'
     */
    rtb_SaturationThrust_a = (real32_T)((flightController_P_g.Hover_Value[2] -
      arg_states_estim->Z) * flightController_P_g.P_z1_Gain) -
      flightController_P_g.D_z1_Gain * arg_states_estim->dz;
  }

  /* End of Switch: '<S8>/TakeoffOrControl_Switch' */

  /* Saturate: '<S8>/SaturationThrust' incorporates:
   *  Constant: '<S8>/w0'
   *  Sum: '<S8>/Sum4'
   */
  rtb_SaturationThrust_a += flightController_P_g.w0_Value;

  /* Saturate: '<S8>/SaturationThrust' */
  if (rtb_SaturationThrust_a > flightController_P_g.SaturationThrust_UpperSat) {
    /* Saturate: '<S8>/SaturationThrust' */
    rtb_SaturationThrust_a = flightController_P_g.SaturationThrust_UpperSat;
  } else {
    if (rtb_SaturationThrust_a < flightController_P_g.SaturationThrust_LowerSat)
    {
      /* Saturate: '<S8>/SaturationThrust' */
      rtb_SaturationThrust_a = flightController_P_g.SaturationThrust_LowerSat;
    }
  }

  /* End of Saturate: '<S8>/SaturationThrust' */

  /* SignalConversion generated from: '<S5>/Bus Selector6' */
  rtb_Z = arg_states_estim->Z;

  /* Switch: '<S5>/TakeoffOrControl_Switch' incorporates:
   *  Constant: '<S5>/w0'
   *  DiscreteIntegrator: '<S5>/Discrete-Time Integrator'
   *  Gain: '<S5>/Gain1'
   *  Gain: '<S5>/Gain2'
   *  Gain: '<S5>/takeoff_gain'
   *  SignalConversion generated from: '<S5>/Vector Concatenate'
   *  Sum: '<S5>/Sum5'
   * */
  if (0.0 > flightController_P_g.TakeoffOrControl_Switch_Threshold) {
    flightController_B.TakeoffOrControl_Switch =
      flightController_P_g.takeoff_gain_Gain * flightController_P_g.w0_Value_m;
  } else {
    flightController_B.TakeoffOrControl_Switch =
      (flightController_P_g.Gain1_Gain[0] * rtb_Z +
       flightController_P_g.Gain1_Gain[1] * arg_states_estim->dz) - rtP_Ki *
      flightController_DW.DiscreteTimeIntegrator_DSTATE;
  }

  /* End of Switch: '<S5>/TakeoffOrControl_Switch' */

  /* Sum: '<S5>/Sum4' incorporates:
   *  Constant: '<S5>/w0'
   */
  rtb_Sum4 = flightController_P_g.w0_Value_m + (real32_T)
    flightController_B.TakeoffOrControl_Switch;

  /* Saturate: '<S5>/SaturationThrust' */
  if (rtb_Sum4 > flightController_P_g.SaturationThrust_UpperSat_h) {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = flightController_P_g.SaturationThrust_UpperSat_h;
  } else if (rtb_Sum4 < flightController_P_g.SaturationThrust_LowerSat_i) {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = flightController_P_g.SaturationThrust_LowerSat_i;
  } else {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = rtb_Sum4;
  }

  /* End of Saturate: '<S5>/SaturationThrust' */

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (flightController_P_g.ManualSwitch_CurrentSetting == 1) {
    rtb_ManualSwitch = rtb_SaturationThrust_a;
  } else {
    rtb_ManualSwitch = rtb_SaturationThrust;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Gain: '<S5>/Gain3' incorporates:
   *  Constant: '<Root>/Constant'
   *  Sum: '<S7>/Sum1'
   */
  rtb_Gain3 = (real32_T)flightController_P_g.Constant_Value -
    arg_states_estim->yaw;

  /* Gain: '<S7>/P_yaw' */
  rtb_P_yaw = flightController_P_g.P_yaw_Gain * rtb_Gain3;

  /* Gain: '<S5>/Gain3' incorporates:
   *  Gain: '<S7>/D_yaw'
   */
  rtb_Gain3 = flightController_P_g.D_yaw_Gain * arg_states_estim->r;

  /* Sum: '<S7>/Sum2' */
  rtb_Sum2 = rtb_P_yaw - rtb_Gain3;

  /* SignalConversion generated from: '<S4>/Product' incorporates:
   *  DiscreteIntegrator: '<S3>/Discrete-Time Integrator'
   *  Gain: '<S3>/D_pr'
   *  Gain: '<S3>/I_pr'
   *  Gain: '<S3>/P_pr'
   *  Sum: '<S3>/Sum16'
   */
  rtb_ManualSwitch_idx_2 = (flightController_P_g.P_pr_Gain[0] *
    rtb_pitchrollerror_idx_0 + flightController_P_g.I_pr_Gain *
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0]) -
    flightController_P_g.D_pr_Gain[0] * arg_states_estim->q;
  rtb_ManualSwitch_idx_3 = (flightController_P_g.P_pr_Gain[1] *
    rtb_pitchrollerror_idx_1 + flightController_P_g.I_pr_Gain *
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1]) -
    flightController_P_g.D_pr_Gain[1] * arg_states_estim->p;
  for (move = 0; move < 4; move++) {
    /* Product: '<S4>/Product' incorporates:
     *  Constant: '<S4>/TorqueTotalThrustToThrustPerMotor'
     *  SignalConversion generated from: '<S4>/Product'
     */
    rtb_P_yaw =
      flightController_P_g.TorqueTotalThrustToThrustPerMotor_Value[move + 12] *
      rtb_ManualSwitch_idx_3 +
      (flightController_P_g.TorqueTotalThrustToThrustPerMotor_Value[move + 8] *
       rtb_ManualSwitch_idx_2 +
       (flightController_P_g.TorqueTotalThrustToThrustPerMotor_Value[move + 4] *
        rtb_Sum2 +
        flightController_P_g.TorqueTotalThrustToThrustPerMotor_Value[move] *
        rtb_ManualSwitch));

    /* Saturate: '<S9>/Saturation5' incorporates:
     *  Gain: '<S9>/ThrustToMotorCommand'
     */
    rtb_P_yaw *= flightController_P_g.ThrustToMotorCommand_Gain;
    if (rtb_P_yaw > flightController_P_g.Saturation5_UpperSat) {
      rtb_P_yaw = flightController_P_g.Saturation5_UpperSat;
    } else {
      if (rtb_P_yaw < flightController_P_g.Saturation5_LowerSat) {
        rtb_P_yaw = flightController_P_g.Saturation5_LowerSat;
      }
    }

    /* End of Saturate: '<S9>/Saturation5' */

    /* Gain: '<S9>/MotorDirections' */
    arg_motors_refout[move] = flightController_P_g.MotorDirections_Gain[move] *
      rtb_P_yaw;
  }

  /* Gain: '<S5>/Gain3' incorporates:
   *  Gain: '<S1>/Gain'
   */
  rtb_Gain3 = flightController_P_g.Gain_Gain_e * rtb_Z;

  /* Gain: '<S5>/Gain3' incorporates:
   *  SignalConversion generated from: '<S5>/Vector Concatenate'
   * */
  rtb_Gain3 = rtP_Cv[0] * rtb_Z + rtP_Cv[1] * arg_states_estim->dz;

  /* SignalConversion generated from: '<S10>/ SFunction ' incorporates:
   *  SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector'
   */
  flightController_B.TmpSignalConversionAtSFunctionInport1[0] =
    arg_ReferenceValueServerBus->pos_ref[0];
  flightController_B.TmpSignalConversionAtSFunctionInport1[1] =
    arg_ReferenceValueServerBus->pos_ref[1];
  flightController_B.TmpSignalConversionAtSFunctionInport1[2] =
    arg_ReferenceValueServerBus->pos_ref[2];
  flightController_B.TmpSignalConversionAtSFunctionInport1[0] =
    arg_ReferenceValueServerBus->orient_ref[0];
  flightController_B.TmpSignalConversionAtSFunctionInport1[1] =
    arg_ReferenceValueServerBus->orient_ref[1];
  flightController_B.TmpSignalConversionAtSFunctionInport1[2] =
    arg_ReferenceValueServerBus->orient_ref[2];
  flightController_B.TmpSignalConversionAtSFunctionInport1[0] =
    arg_ReferenceValueServerBus->pos_ref[0];
  flightController_B.TmpSignalConversionAtSFunctionInport1[1] =
    arg_ReferenceValueServerBus->pos_ref[1];
  flightController_B.TmpSignalConversionAtSFunctionInport1[2] =
    arg_ReferenceValueServerBus->pos_ref[2];

  /* SignalConversion generated from: '<S10>/ SFunction ' incorporates:
   *  MATLAB Function: '<S2>/MATLAB Function'
   */
  flightController_B.TmpSignalConversionAtSFunctionInport1[0] =
    arg_states_estim->X;
  flightController_B.TmpSignalConversionAtSFunctionInport1[1] =
    arg_states_estim->Y;
  flightController_B.TmpSignalConversionAtSFunctionInport1[2] =
    arg_states_estim->Z;

  /* MATLAB Function: '<S2>/MATLAB Function' incorporates:
   *  UnitDelay: '<S2>/Unit Delay1'
   *  UnitDelay: '<S2>/Unit Delay2'
   */
  rtb_ManualSwitch = flightController_B.TmpSignalConversionAtSFunctionInport1[0]
    - (real32_T)flightController_DW.UnitDelay2_DSTATE[0];
  rtb_P_yaw = flightController_B.TmpSignalConversionAtSFunctionInport1[1] -
    (real32_T)flightController_DW.UnitDelay2_DSTATE[1];
  rtb_Sum2 = flightController_B.TmpSignalConversionAtSFunctionInport1[2] -
    (real32_T)flightController_DW.UnitDelay2_DSTATE[2];
  if ((real32_T)sqrt((rtb_ManualSwitch * rtb_ManualSwitch + rtb_P_yaw *
                      rtb_P_yaw) + rtb_Sum2 * rtb_Sum2) <= 0.2) {
    move = 1;
    switch ((int32_T)*arg_vision) {
     case 1:
      flightController_DW.UnitDelay1_DSTATE += 1.57;
      break;

     case 2:
      flightController_DW.UnitDelay1_DSTATE -= 1.57;
      break;

     case 3:
      break;

     default:
      move = 0;
      break;
    }

    if (move == 1) {
      flightController_DW.UnitDelay2_DSTATE[0] += cos
        (flightController_DW.UnitDelay1_DSTATE) * 2.0;
      flightController_DW.UnitDelay2_DSTATE[1] += sin
        (flightController_DW.UnitDelay1_DSTATE) * 2.0;
    }
  }

  /* Update for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' incorporates:
   *  Delay: '<S3>/Delay'
   *  Gain: '<S3>/antiWU_Gain'
   *  Sum: '<S3>/Add'
   */
  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] +=
    (rtb_pitchrollerror_idx_0 - flightController_P_g.antiWU_Gain_Gain *
     flightController_DW.Delay_DSTATE[0]) *
    flightController_P_g.DiscreteTimeIntegrator_gainval_n;
  if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] >=
      flightController_P_g.DiscreteTimeIntegrator_UpperSat) {
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] =
      flightController_P_g.DiscreteTimeIntegrator_UpperSat;
  } else {
    if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] <=
        flightController_P_g.DiscreteTimeIntegrator_LowerSat) {
      flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] =
        flightController_P_g.DiscreteTimeIntegrator_LowerSat;
    }
  }

  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] +=
    (rtb_pitchrollerror_idx_1 - flightController_P_g.antiWU_Gain_Gain *
     flightController_DW.Delay_DSTATE[1]) *
    flightController_P_g.DiscreteTimeIntegrator_gainval_n;
  if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] >=
      flightController_P_g.DiscreteTimeIntegrator_UpperSat) {
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] =
      flightController_P_g.DiscreteTimeIntegrator_UpperSat;
  } else {
    if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] <=
        flightController_P_g.DiscreteTimeIntegrator_LowerSat) {
      flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] =
        flightController_P_g.DiscreteTimeIntegrator_LowerSat;
    }
  }

  /* End of Update for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */

  /* Update for DiscreteIntegrator: '<S5>/Discrete-Time Integrator' incorporates:
   *  Constant: '<Root>/Hover'
   *  Sum: '<S5>/Sum3'
   */
  flightController_DW.DiscreteTimeIntegrator_DSTATE +=
    (flightController_P_g.Hover_Value[2] - rtb_Gain3) *
    flightController_P_g.DiscreteTimeIntegrator_gainval;

  /* Update for Delay: '<S3>/Delay' */
  flightController_DW.Delay_DSTATE[0] = rtb_TrigonometricFunction_o2;
  flightController_DW.Delay_DSTATE[1] = rtb_DiscreteTimeIntegrator_l_idx_1;
}

/* Model initialize function */
void flightController_g_initialize(const char_T **rt_errorStatus)
{
  RT_MODEL_flightController_T *const flightController_M =
    &(flightController_MdlrefDW.rtm);

  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatusPointer(flightController_M, rt_errorStatus);
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
