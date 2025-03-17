clc
x = -10:0.01:2;
A = (2*x.^2)+(3*x)+4;
plot(x,A);
hold on;
x=2;
B=0;
plot(x,B);
 %hold on;
x=2:0.01:10;
C = -(2*x.^2)+(3*x)-4;
plot(x,C);


