%generation of basic signals

clc;
clear;
n=input('enter the n value:');
t=0:1:n-1;

%step signal
y1=ones(1,n);
subplot(3,3,1);
stem(t,y1);

xlabel('n');
ylabel('y1');
