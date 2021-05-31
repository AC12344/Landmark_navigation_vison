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
 * C/C++ source code generated on : Mon May 31 18:43:16 2021
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "flightController.h"
#include "flightController_private.h"

MdlrefDW_flightController_T flightController_MdlrefDW;

/* Block states (default storage) */
DW_flightController_f_T flightController_DW;

/* System initialize for referenced model: 'flightController' */
void flightController_Init(void)
{
  /* InitializeConditions for UnitDelay: '<S2>/Unit Delay2' */
  flightController_DW.UnitDelay2_DSTATE[0] = 0.0;
  flightController_DW.UnitDelay2_DSTATE[1] = 0.0;
  flightController_DW.UnitDelay2_DSTATE[2] = (-1.5);
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
  real32_T rtb_pos_ref_b[3];
  real_T rtb_TakeoffOrControl_Switch;
  real_T tmp;
  real_T tmp_0;
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
    rtb_TakeoffOrControl_Switch = (real32_T)0.0 - arg_states_estim->X;
    tmp_0 = (real32_T)0.0 - arg_states_estim->Y;

    /* Product: '<S6>/Product' incorporates:
     *  SignalConversion generated from: '<S6>/Vector Concatenate1'
     *  SignalConversion generated from: '<S6>/Vector Concatenate'
     */
    tmp = rtb_TrigonometricFunction_o2 * rtb_TakeoffOrControl_Switch +
      rtb_pitchrollerror_idx_1 * tmp_0;

    /* Saturate: '<S6>/Saturation' incorporates:
     *  Product: '<S6>/Product'
     */
    if ((real32_T)tmp > 3.0F) {
      rtb_P_yaw = 3.0F;
    } else if ((real32_T)tmp < (-3.0F)) {
      rtb_P_yaw = (-3.0F);
    } else {
      rtb_P_yaw = (real32_T)tmp;
    }

    rtb_pitchrollerror_idx_0 = (-0.03F) * rtb_P_yaw + 0.06F *
      arg_states_estim->dx;

    /* Product: '<S6>/Product' incorporates:
     *  Gain: '<S6>/D_xy'
     *  Gain: '<S6>/Gain'
     *  Gain: '<S6>/P_xy'
     *  SignalConversion generated from: '<S6>/Vector Concatenate1'
     *  Sum: '<S6>/Sum18'
     */
    tmp = (-1.0F) * rtb_pitchrollerror_idx_1 * rtb_TakeoffOrControl_Switch +
      rtb_TrigonometricFunction_o2 * tmp_0;

    /* Saturate: '<S6>/Saturation' incorporates:
     *  Product: '<S6>/Product'
     */
    if ((real32_T)tmp > 3.0F) {
      rtb_P_yaw = 3.0F;
    } else if ((real32_T)tmp < (-3.0F)) {
      rtb_P_yaw = (-3.0F);
    } else {
      rtb_P_yaw = (real32_T)tmp;
    }

    rtb_pitchrollerror_idx_1 = 0.03F * rtb_P_yaw + (-0.06F) *
      arg_states_estim->dy;
  } else {
    rtb_pitchrollerror_idx_0 = arg_ReferenceValueServerBus->orient_ref[1];
    rtb_pitchrollerror_idx_1 = arg_ReferenceValueServerBus->orient_ref[2];
  }

  /* End of Switch: '<S1>/Switch_refAtt' */

  /* SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector' */
  rtb_pos_ref_b[0] = arg_ReferenceValueServerBus->orient_ref[0];
  rtb_pos_ref_b[1] = arg_ReferenceValueServerBus->orient_ref[1];
  rtb_pos_ref_b[2] = arg_ReferenceValueServerBus->orient_ref[2];

  /* SignalConversion generated from: '<Root>/pose_refout' incorporates:
   *  SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector'
   */
  arg_pose_refout[0] = arg_ReferenceValueServerBus->pos_ref[0];
  arg_pose_refout[1] = arg_ReferenceValueServerBus->pos_ref[1];
  arg_pose_refout[2] = arg_ReferenceValueServerBus->pos_ref[2];
  arg_pose_refout[3] = rtb_pos_ref_b[0];
  arg_pose_refout[4] = rtb_pos_ref_b[1];
  arg_pose_refout[5] = rtb_pos_ref_b[2];
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
    rtb_SaturationThrust_a = 0.45F * (-0.61803F);
  } else {
    /* Saturate: '<S8>/SaturationThrust' incorporates:
     *  Constant: '<Root>/Hover'
     *  Gain: '<S8>/D_z1'
     *  Gain: '<S8>/P_z1'
     *  Sum: '<S8>/Sum'
     *  Sum: '<S8>/Sum1'
     *  Sum: '<S8>/Sum7'
     */
    rtb_SaturationThrust_a = (real32_T)(((-1.0) - arg_states_estim->Z) * 0.8F) -
      0.3F * arg_states_estim->dz;
  }

  /* End of Switch: '<S8>/TakeoffOrControl_Switch' */

  /* Saturate: '<S8>/SaturationThrust' incorporates:
   *  Constant: '<S8>/w0'
   *  Sum: '<S8>/Sum4'
   */
  rtb_SaturationThrust_a += (-0.61803F);

  /* Saturate: '<S8>/SaturationThrust' */
  if (rtb_SaturationThrust_a > 1.20204329F) {
    /* Saturate: '<S8>/SaturationThrust' */
    rtb_SaturationThrust_a = 1.20204329F;
  } else {
    if (rtb_SaturationThrust_a < (-1.20204329F)) {
      /* Saturate: '<S8>/SaturationThrust' */
      rtb_SaturationThrust_a = (-1.20204329F);
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
  if (0.0 > 0.0) {
    rtb_TakeoffOrControl_Switch = 0.45F * (-0.61803F);
  } else {
    rtb_TakeoffOrControl_Switch = ((-11.2286034F) * rtb_Z + (-4.7390089F) *
      arg_states_estim->dz) - (-12.247448713915881) *
      flightController_DW.DiscreteTimeIntegrator_DSTATE;
  }

  /* End of Switch: '<S5>/TakeoffOrControl_Switch' */

  /* Sum: '<S5>/Sum4' incorporates:
   *  Constant: '<S5>/w0'
   */
  rtb_Sum4 = (-0.61803F) + (real32_T)rtb_TakeoffOrControl_Switch;

  /* Saturate: '<S5>/SaturationThrust' */
  if (rtb_Sum4 > 1.20204329F) {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = 1.20204329F;
  } else if (rtb_Sum4 < (-1.20204329F)) {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = (-1.20204329F);
  } else {
    /* Saturate: '<S5>/SaturationThrust' */
    rtb_SaturationThrust = rtb_Sum4;
  }

  /* End of Saturate: '<S5>/SaturationThrust' */

  /* ManualSwitch: '<S1>/Manual Switch' */
  if (((uint8_T)0U) == 1) {
    rtb_ManualSwitch = rtb_SaturationThrust_a;
  } else {
    rtb_ManualSwitch = rtb_SaturationThrust;
  }

  /* End of ManualSwitch: '<S1>/Manual Switch' */

  /* Gain: '<S5>/Gain3' incorporates:
   *  Constant: '<Root>/Constant'
   *  Sum: '<S7>/Sum1'
   */
  rtb_Gain3 = (real32_T)0.0 - arg_states_estim->yaw;

  /* Gain: '<S7>/P_yaw' */
  rtb_P_yaw = 0.004F * rtb_Gain3;

  /* Gain: '<S5>/Gain3' incorporates:
   *  Gain: '<S7>/D_yaw'
   */
  rtb_Gain3 = 0.0012F * arg_states_estim->r;

  /* Sum: '<S7>/Sum2' */
  rtb_Sum2 = rtb_P_yaw - rtb_Gain3;

  /* SignalConversion generated from: '<S4>/Product' incorporates:
   *  DiscreteIntegrator: '<S3>/Discrete-Time Integrator'
   *  Gain: '<S3>/D_pr'
   *  Gain: '<S3>/I_pr'
   *  Gain: '<S3>/P_pr'
   *  Sum: '<S3>/Sum16'
   */
  rtb_ManualSwitch_idx_2 = (0.013F * rtb_pitchrollerror_idx_0 + 0.01F *
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0]) - 0.002F *
    arg_states_estim->q;
  rtb_ManualSwitch_idx_3 = (0.01F * rtb_pitchrollerror_idx_1 + 0.01F *
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1]) - 0.0028F *
    arg_states_estim->p;
  for (move = 0; move < 4; move++) {
    /* Product: '<S4>/Product' incorporates:
     *  Constant: '<S4>/TorqueTotalThrustToThrustPerMotor'
     *  SignalConversion generated from: '<S4>/Product'
     */
    rtb_P_yaw = rtCP_TorqueTotalThrustToThrustPerMotor_Value[move + 12] *
      rtb_ManualSwitch_idx_3 +
      (rtCP_TorqueTotalThrustToThrustPerMotor_Value[move + 8] *
       rtb_ManualSwitch_idx_2 +
       (rtCP_TorqueTotalThrustToThrustPerMotor_Value[move + 4] * rtb_Sum2 +
        rtCP_TorqueTotalThrustToThrustPerMotor_Value[move] * rtb_ManualSwitch));

    /* Saturate: '<S9>/Saturation5' incorporates:
     *  Gain: '<S9>/ThrustToMotorCommand'
     */
    rtb_P_yaw *= (-1530.72681F);
    if (rtb_P_yaw > 500.0F) {
      rtb_P_yaw = 500.0F;
    } else {
      if (rtb_P_yaw < 10.0F) {
        rtb_P_yaw = 10.0F;
      }
    }

    /* End of Saturate: '<S9>/Saturation5' */

    /* Gain: '<S9>/MotorDirections' */
    arg_motors_refout[move] = rtCP_MotorDirections_Gain[move] * rtb_P_yaw;
  }

  /* Gain: '<S5>/Gain3' incorporates:
   *  Gain: '<S1>/Gain'
   */
  rtb_Gain3 = (-1.0F) * rtb_Z;

  /* Gain: '<S5>/Gain3' incorporates:
   *  SignalConversion generated from: '<S5>/Vector Concatenate'
   * */
  rtb_Gain3 = 1.0F * rtb_Z + 0.0F * arg_states_estim->dz;

  /* SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector' incorporates:
   *  MATLAB Function: '<S2>/MATLAB Function'
   *  SignalConversion generated from: '<S10>/ SFunction '
   */
  rtb_pos_ref_b[0] = arg_ReferenceValueServerBus->pos_ref[0];
  rtb_pos_ref_b[1] = arg_ReferenceValueServerBus->pos_ref[1];
  rtb_pos_ref_b[2] = arg_ReferenceValueServerBus->pos_ref[2];
  rtb_pos_ref_b[0] = arg_ReferenceValueServerBus->orient_ref[0];
  rtb_pos_ref_b[1] = arg_ReferenceValueServerBus->orient_ref[1];
  rtb_pos_ref_b[2] = arg_ReferenceValueServerBus->orient_ref[2];
  rtb_pos_ref_b[0] = arg_states_estim->X;
  rtb_pos_ref_b[1] = arg_states_estim->Y;
  rtb_pos_ref_b[2] = arg_states_estim->Z;

  /* MATLAB Function: '<S2>/MATLAB Function' incorporates:
   *  UnitDelay: '<S2>/Unit Delay1'
   *  UnitDelay: '<S2>/Unit Delay2'
   */
  rtb_ManualSwitch = rtb_pos_ref_b[0] - (real32_T)
    flightController_DW.UnitDelay2_DSTATE[0];
  rtb_P_yaw = rtb_pos_ref_b[1] - (real32_T)
    flightController_DW.UnitDelay2_DSTATE[1];
  rtb_Sum2 = rtb_pos_ref_b[2] - (real32_T)flightController_DW.UnitDelay2_DSTATE
    [2];
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

  /* SignalConversion generated from: '<S1>/ReferenceValueServerBus_BusSelector' */
  rtb_pos_ref_b[0] = arg_ReferenceValueServerBus->pos_ref[0];
  rtb_pos_ref_b[1] = arg_ReferenceValueServerBus->pos_ref[1];
  rtb_pos_ref_b[2] = arg_ReferenceValueServerBus->pos_ref[2];

  /* Update for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' incorporates:
   *  Delay: '<S3>/Delay'
   *  Gain: '<S3>/antiWU_Gain'
   *  Sum: '<S3>/Add'
   */
  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] +=
    (rtb_pitchrollerror_idx_0 - 0.001F * flightController_DW.Delay_DSTATE[0]) *
    0.005F;
  if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] >= 2.0F) {
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] = 2.0F;
  } else {
    if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] <= (-2.0F)) {
      flightController_DW.DiscreteTimeIntegrator_DSTATE_m[0] = (-2.0F);
    }
  }

  flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] +=
    (rtb_pitchrollerror_idx_1 - 0.001F * flightController_DW.Delay_DSTATE[1]) *
    0.005F;
  if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] >= 2.0F) {
    flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] = 2.0F;
  } else {
    if (flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] <= (-2.0F)) {
      flightController_DW.DiscreteTimeIntegrator_DSTATE_m[1] = (-2.0F);
    }
  }

  /* End of Update for DiscreteIntegrator: '<S3>/Discrete-Time Integrator' */

  /* Update for DiscreteIntegrator: '<S5>/Discrete-Time Integrator' incorporates:
   *  Constant: '<Root>/Hover'
   *  Sum: '<S5>/Sum3'
   */
  flightController_DW.DiscreteTimeIntegrator_DSTATE += ((-1.0) - rtb_Gain3) *
    0.005;

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
