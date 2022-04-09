clc;
clear all;
% Ma tran A,B 
A = [0 1 0 0;0 0 -327/40 0;0 0 0 1;-8829/100 0 0 0];
B = [0; 50/9; 0; 0];
C = [1 0 0 0;0 0 1 0];
D = [0; 0];

zeta = 0.7; 
wn = 4;

sigma = zeta*wn;

wd = wn*sqrt(1 - zeta^2);

DP = [-sigma+i*wd, -sigma-i*wd, -30, -40];

K = acker(A,B,DP)

sys = ss(A,B,C,D)
Gs = tf(sys)
[num,den]=ss2tf(A,B,C,D)