clc
clear 
close all
syms x;
fun=(x^2)*(exp(x));
I=int(fun,x,-10,10);
disp('f(x)')
disp(I)