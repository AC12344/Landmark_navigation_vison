% plot(minidrone_in)
% hold on
% plot(minidrone_out)
%% System estimation
% data = iddata(double(minidrone_out.Data), double(minidrone_in.Data), Ts)
% 
% est_sys = tfest(data, 2) % estimate the transfer function from input and response data
% tfdata(est_sys)
% [A,B,C,D] = tf2ss(est_sys.NUM, est_sys.DEN)

%% Manual matrices
A = [0 1;
     0 0]
B = [0; 1]
C = [1; 0]
D = 0

%% LQR
% Q =  diag(1./[1^2 1^2])
% Q = [100 0;
%      0 1]
% R =  10  
% K_lqr = lqr(A, B, Q, R)


%% Debug
% A_lqr = (A-B*K_lqr)
% sys_lqr = ss(A_lqr, B, C', 0)
% eig(sys_lqr)
% step(sys_lqr)
% dc_gain = dcgain(sys_lqr)
% B_dc = 1/dc_gain * B
% 
% sys_lqr_dc = ss(A_lqr, B_dc, C', 0)
% eig(sys_lqr_dc)
% step(sys_lqr_dc)

%% FF gain:
% N = inv([A B; C D]) 
% Nx = N(1:2, 2:3)
% Nu = N(3, 2:3)
% r = [10;10]
% Feedforward gain:
% ff = (Nu+K_lqr*Nx)*r

%% LQI
Cv = [1 0]
Dv = 0
SYS = ss(A, B, Cv, Dv)

% works:
% Qi = [1 0 0;
%       0 0.0001 0;
%       0 0 0.2];
  
Qi = [1 0 0;
  0 0.0001 0;
  0 0 15];
R = 0.1

K = lqi(SYS, Qi, R)

Ki = K(3)
K = K(1:2)


A_lqi = (A-B*K)
sys_lqi = ss(A_lqi, B*Ki, C', 0)
eigen = eig(sys_lqi)
%step(sys_lqi)