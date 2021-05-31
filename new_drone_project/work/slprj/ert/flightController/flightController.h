/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: flightController.h
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

#ifndef RTW_HEADER_flightController_h_
#define RTW_HEADER_flightController_h_
#include <math.h>
#ifndef flightController_COMMON_INCLUDES_
#define flightController_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* flightController_COMMON_INCLUDES_ */

#include "flightController_types.h"
#include "MW_target_hardware_resources.h"

/* Block signals for model 'flightController' */
#ifndef flightController_MDLREF_HIDE_CHILD_

typedef struct {
  real32_T TmpSignalConversionAtSFunctionInport1[3];/* '<S2>/MATLAB Function' */
  real_T TakeoffOrControl_Switch;      /* '<S5>/TakeoffOrControl_Switch' */
  real_T d;
  real_T unnamed_idx_1;
} B_flightController_c_T;

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

/* Block states (default storage) for model 'flightController' */
#ifndef flightController_MDLREF_HIDE_CHILD_

typedef struct {
  real_T DiscreteTimeIntegrator_DSTATE;/* '<S5>/Discrete-Time Integrator' */
  real_T UnitDelay2_DSTATE[3];         /* '<S2>/Unit Delay2' */
  real_T UnitDelay1_DSTATE;            /* '<S2>/Unit Delay1' */
  real32_T DiscreteTimeIntegrator_DSTATE_m[2];/* '<S3>/Discrete-Time Integrator' */
  real32_T Delay_DSTATE[2];            /* '<S3>/Delay' */
} DW_flightController_f_T;

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

#ifndef flightController_MDLREF_HIDE_CHILD_

/* Parameters (default storage) */
struct P_flightController_T_ {
  real_T Hover_Value[3];               /* Expression: [0 0 -1]
                                        * Referenced by: '<Root>/Hover'
                                        */
  real_T DiscreteTimeIntegrator_gainval;
                           /* Computed Parameter: DiscreteTimeIntegrator_gainval
                            * Referenced by: '<S5>/Discrete-Time Integrator'
                            */
  real_T DiscreteTimeIntegrator_IC;    /* Expression: 0
                                        * Referenced by: '<S5>/Discrete-Time Integrator'
                                        */
  real_T TakeoffOrControl_Switch_Threshold;/* Expression: 0
                                            * Referenced by: '<S5>/TakeoffOrControl_Switch'
                                            */
  real_T Constant_Value;               /* Expression: 0
                                        * Referenced by: '<Root>/Constant'
                                        */
  real_T UnitDelay2_InitialCondition[3];/* Expression: [0 0 -1.5]
                                         * Referenced by: '<S2>/Unit Delay2'
                                         */
  real_T Traveldistance_Value;         /* Expression: 2
                                        * Referenced by: '<S2>/Travel distance'
                                        */
  real_T UnitDelay1_InitialCondition;  /* Expression: 0
                                        * Referenced by: '<S2>/Unit Delay1'
                                        */
  real32_T takeoff_gain_Gain;          /* Expression: Controller.takeoffGain
                                        * Referenced by: '<S5>/takeoff_gain'
                                        */
  real32_T Gain1_Gain[2];              /* Computed Parameter: Gain1_Gain
                                        * Referenced by: '<S5>/Gain1'
                                        */
  real32_T D_xy_Gain[2];               /* Computed Parameter: D_xy_Gain
                                        * Referenced by: '<S6>/D_xy'
                                        */
  real32_T Gain_Gain;                  /* Computed Parameter: Gain_Gain
                                        * Referenced by: '<S6>/Gain'
                                        */
  real32_T Saturation_UpperSat;       /* Computed Parameter: Saturation_UpperSat
                                       * Referenced by: '<S6>/Saturation'
                                       */
  real32_T Saturation_LowerSat;       /* Computed Parameter: Saturation_LowerSat
                                       * Referenced by: '<S6>/Saturation'
                                       */
  real32_T P_xy_Gain[2];               /* Computed Parameter: P_xy_Gain
                                        * Referenced by: '<S6>/P_xy'
                                        */
  real32_T takeoff_gain_Gain_o;        /* Expression: Controller.takeoffGain
                                        * Referenced by: '<S8>/takeoff_gain'
                                        */
  real32_T D_z1_Gain;                  /* Computed Parameter: D_z1_Gain
                                        * Referenced by: '<S8>/D_z1'
                                        */
  real32_T P_z1_Gain;                  /* Computed Parameter: P_z1_Gain
                                        * Referenced by: '<S8>/P_z1'
                                        */
  real32_T TorqueTotalThrustToThrustPerMotor_Value[16];/* Expression: Controller.Q2Ts
                                                        * Referenced by: '<S4>/TorqueTotalThrustToThrustPerMotor'
                                                        */
  real32_T D_pr_Gain[2];               /* Computed Parameter: D_pr_Gain
                                        * Referenced by: '<S3>/D_pr'
                                        */
  real32_T DiscreteTimeIntegrator_gainval_n;
                         /* Computed Parameter: DiscreteTimeIntegrator_gainval_n
                          * Referenced by: '<S3>/Discrete-Time Integrator'
                          */
  real32_T DiscreteTimeIntegrator_IC_p;
                              /* Computed Parameter: DiscreteTimeIntegrator_IC_p
                               * Referenced by: '<S3>/Discrete-Time Integrator'
                               */
  real32_T DiscreteTimeIntegrator_UpperSat;
                          /* Computed Parameter: DiscreteTimeIntegrator_UpperSat
                           * Referenced by: '<S3>/Discrete-Time Integrator'
                           */
  real32_T DiscreteTimeIntegrator_LowerSat;
                          /* Computed Parameter: DiscreteTimeIntegrator_LowerSat
                           * Referenced by: '<S3>/Discrete-Time Integrator'
                           */
  real32_T I_pr_Gain;                  /* Computed Parameter: I_pr_Gain
                                        * Referenced by: '<S3>/I_pr'
                                        */
  real32_T P_pr_Gain[2];               /* Computed Parameter: P_pr_Gain
                                        * Referenced by: '<S3>/P_pr'
                                        */
  real32_T w0_Value;                   /* Computed Parameter: w0_Value
                                        * Referenced by: '<S8>/w0'
                                        */
  real32_T SaturationThrust_UpperSat;
                                /* Computed Parameter: SaturationThrust_UpperSat
                                 * Referenced by: '<S8>/SaturationThrust'
                                 */
  real32_T SaturationThrust_LowerSat;
                                /* Computed Parameter: SaturationThrust_LowerSat
                                 * Referenced by: '<S8>/SaturationThrust'
                                 */
  real32_T w0_Value_m;                 /* Computed Parameter: w0_Value_m
                                        * Referenced by: '<S5>/w0'
                                        */
  real32_T SaturationThrust_UpperSat_h;
                              /* Computed Parameter: SaturationThrust_UpperSat_h
                               * Referenced by: '<S5>/SaturationThrust'
                               */
  real32_T SaturationThrust_LowerSat_i;
                              /* Computed Parameter: SaturationThrust_LowerSat_i
                               * Referenced by: '<S5>/SaturationThrust'
                               */
  real32_T P_yaw_Gain;                 /* Computed Parameter: P_yaw_Gain
                                        * Referenced by: '<S7>/P_yaw'
                                        */
  real32_T D_yaw_Gain;                 /* Computed Parameter: D_yaw_Gain
                                        * Referenced by: '<S7>/D_yaw'
                                        */
  real32_T ThrustToMotorCommand_Gain;
                                /* Computed Parameter: ThrustToMotorCommand_Gain
                                 * Referenced by: '<S9>/ThrustToMotorCommand'
                                 */
  real32_T Saturation5_UpperSat;       /* Expression: Vehicle.Motor.maxLimit
                                        * Referenced by: '<S9>/Saturation5'
                                        */
  real32_T Saturation5_LowerSat;       /* Expression: Vehicle.Motor.minLimit
                                        * Referenced by: '<S9>/Saturation5'
                                        */
  real32_T MotorDirections_Gain[4];  /* Computed Parameter: MotorDirections_Gain
                                      * Referenced by: '<S9>/MotorDirections'
                                      */
  real32_T Delay_InitialCondition; /* Computed Parameter: Delay_InitialCondition
                                    * Referenced by: '<S3>/Delay'
                                    */
  real32_T antiWU_Gain_Gain;           /* Computed Parameter: antiWU_Gain_Gain
                                        * Referenced by: '<S3>/antiWU_Gain'
                                        */
  real32_T Gain_Gain_e;                /* Computed Parameter: Gain_Gain_e
                                        * Referenced by: '<S1>/Gain'
                                        */
  uint8_T ManualSwitch_CurrentSetting;
                              /* Computed Parameter: ManualSwitch_CurrentSetting
                               * Referenced by: '<S1>/Manual Switch'
                               */
};

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

#ifndef flightController_MDLREF_HIDE_CHILD_

/* Real-time Model Data Structure */
struct tag_RTM_flightController_T {
  const char_T **errorStatus;
};

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

#ifndef flightController_MDLREF_HIDE_CHILD_

typedef struct {
  RT_MODEL_flightController_T rtm;
} MdlrefDW_flightController_T;

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

/* Model block global parameters (default storage) */
extern real_T rtP_Ki;                  /* Variable: Ki
                                        * Referenced by: '<S5>/Gain2'
                                        */
extern real32_T rtP_Cv[2];             /* Variable: Cv
                                        * Referenced by: '<S5>/Gain3'
                                        */
extern void flightController_Init(void);
extern void flightController_run(const CommandBus *arg_ReferenceValueServerBus,
  const statesEstim_t *arg_states_estim, real32_T arg_motors_refout[4], real32_T
  arg_pose_refout[8], real_T *arg_vision);

/* Model reference registration function */
extern void flightController_g_initialize(const char_T **rt_errorStatus);

#ifndef flightController_MDLREF_HIDE_CHILD_

extern MdlrefDW_flightController_T flightController_MdlrefDW;

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

#ifndef flightController_MDLREF_HIDE_CHILD_

/* Block signals (default storage) */
extern B_flightController_c_T flightController_B;

/* Block states (default storage) */
extern DW_flightController_f_T flightController_DW;

#endif                                 /*flightController_MDLREF_HIDE_CHILD_*/

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'flightController'
 * '<S1>'   : 'flightController/Flight Controller'
 * '<S2>'   : 'flightController/Waypoint_switcher'
 * '<S3>'   : 'flightController/Flight Controller/Attitude'
 * '<S4>'   : 'flightController/Flight Controller/ControlMixer'
 * '<S5>'   : 'flightController/Flight Controller/LQR'
 * '<S6>'   : 'flightController/Flight Controller/XY-to-reference-orientation'
 * '<S7>'   : 'flightController/Flight Controller/Yaw'
 * '<S8>'   : 'flightController/Flight Controller/gravity feedforward//equilibrium thrust'
 * '<S9>'   : 'flightController/Flight Controller/thrustsToMotorCommands'
 * '<S10>'  : 'flightController/Waypoint_switcher/MATLAB Function'
 */
#endif                                 /* RTW_HEADER_flightController_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
