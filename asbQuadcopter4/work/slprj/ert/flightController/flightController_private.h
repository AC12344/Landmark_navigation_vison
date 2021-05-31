/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: flightController_private.h
 *
 * Code generated for Simulink model 'flightController'.
 *
 * Model version                  : 1.271
 * Simulink Coder version         : 9.4 (R2020b) 29-Jul-2020
 * C/C++ source code generated on : Mon May 31 16:49:35 2021
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM 9
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_flightController_private_h_
#define RTW_HEADER_flightController_private_h_
#include "rtwtypes.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         (*((rtm)->errorStatus))
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    (*((rtm)->errorStatus) = (val))
#endif

#ifndef rtmGetErrorStatusPointer
#define rtmGetErrorStatusPointer(rtm)  (rtm)->errorStatus
#endif

#ifndef rtmSetErrorStatusPointer
#define rtmSetErrorStatusPointer(rtm, val) ((rtm)->errorStatus = (val))
#endif

extern const real32_T rtCP_pooled_AiPFoGkd3zrs[16];
extern const real32_T rtCP_pooled_oEBofkCxx3u4[4];

#define rtCP_TorqueTotalThrustToThrustPerMotor_Value rtCP_pooled_AiPFoGkd3zrs/* Computed Parameter: rtCP_TorqueTotalThrustToThrustPerMotor_Value
                                                                      * Referenced by: '<S4>/TorqueTotalThrustToThrustPerMotor'
                                                                      */
#define rtCP_MotorDirections_Gain      rtCP_pooled_oEBofkCxx3u4  /* Computed Parameter: rtCP_MotorDirections_Gain
                                                                  * Referenced by: '<S9>/MotorDirections'
                                                                  */
#endif                              /* RTW_HEADER_flightController_private_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
