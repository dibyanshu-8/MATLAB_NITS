%assignment 1
clc;
clear;
t=0:0.01:2;
x=cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);
plot(t,x);
hold on
xa=3*cos(2*pi*t);
plot(t,xa,'LineStyle','--');
fs=5;
T=1/fs;
tn=1:T:2;
xn=cos(2*pi*tn)+cos(8*pi*tn)+cos(12*pi*tn);
plot(tn,xn,'o');