%computation of fft of discrete time signals
clc;
clear;
x=input('enter the sequence');
n=input('enter the length of sequence');
y=fft(x,n);
figure;
stem(y);
xlabel('real');
ylabel('img');
title('fft');
display(y);




