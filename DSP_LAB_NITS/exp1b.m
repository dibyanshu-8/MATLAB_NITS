%genaration of sine & cosine wave
clc;
clear;
t=0:0.01:pi;
y1=sin(2*pi*t);
figure;
stem(t,y1);
y2=cos(2*pi*t);
figure;
stem(t,y2);
