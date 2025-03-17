%code for circular convolution using function
clc;
clear;
n=input('enter N=');
x=input('enter x=');
h=input('enter h=');
y=cconv(x,h,n);
disp(y);