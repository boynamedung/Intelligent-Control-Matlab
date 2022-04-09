clc;
clear all;

syms m R g j1 j2;
syms x1 x2 x3 x4 u;

MS1 = j2+m*x3^2;
MS2 = (j1/(R^2))+m*x3^2;
TS1 = u-2*m*x2*x3*x4-m*g*x3*cos(x1);
TS2 = m*x3*x2^2-m*g*sin(x1);
x2dot = TS1/MS1;
x4dot = TS2/MS2;

f1 = x2;
f3 = x4;
f2 = x2dot;
f4 = x4dot;

a11 = diff(f1,'x1')
a12 = diff(f1,'x2')
a13 = diff(f1,'x3')
a14 = diff(f1,'x4')
a21 = diff(f2,'x1')
a22 = diff(f2,'x2')
a23 = diff(f2,'x3')
a24 = diff(f2,'x4')
a31 = diff(f3,'x1')
a32 = diff(f3,'x2')
a33 = diff(f3,'x3')
a34 = diff(f3,'x4')
a41 = diff(f4,'x1')
a42 = diff(f4,'x2')
a43 = diff(f4,'x3')
a44 = diff(f4,'x4')
b11 = diff(f1,'u')
b12 = diff(f2,'u')
b13 = diff(f3,'u')
b14 = diff(f4,'u')
h = [x1; x2; x3; x4]
A = [a11 a12 a13 a14; a21 a22 a23 a24; a31 a32 a33 a34; a41 a42 a43 a44]
B = [b11; b12; b13; b14]
C = [diff(h,'x1') diff(h,'x2') diff(h,'x3') diff(h,'x4')]
D = [diff(h,'u')]