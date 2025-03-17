clc
clear
close all
syms xyz
eqn1= 2*x+y+z==2;
eqn2=-x+y-z==3;
eqn3=x+2*y+3*z==-10;
[A,B]=equationstomatrix([eqn1,eqn2,eqn3],[x,y,z]);
x=linsolve(A,B);
disp('roots are')
disp("x=")
disp(x(1))
disp("y=")
disp(x(2))
disp("z=")
disp(x(3))