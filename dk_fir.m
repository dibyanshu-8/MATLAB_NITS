clc;
clear all;
close all;
M = 5;
wc = 2;
n = 0:1:M - 1;
alpha =(M -1) /2; m = n - alpha ;
fc = wc/pi;
hd = fc * sinc(fc*m );
w_rec =(rectwin(M))';
h = hd.*w_rec;
[H ,w] = freqz(h,1,1000,'whole');
H = (H(1:1:501))';
w =(w(1:1:501))';
mag = abs(H);
db = 20*log10((mag+eps)/max(mag));
subplot(2 ,2 ,1)
stem(n,h);
title('Impulse Response');
grid
axis tight;
xlabel('n');
ylabel('h(n)');
subplot (2 ,2 ,2)
stem(n,w_rec); title('Rectangular Window'),
grid
axis tight;
xlabel ('n');
ylabel ('w(n)')
subplot(2 ,2 ,3)
plot(w /pi , mag );
title('Absolute Magnitude Response'),
grid
axis tight;
xlabel('frequency in \pi units');
ylabel('Amplitude Response')
subplot(2 ,2 ,4)
plot(w/pi,db);
title('Relative Magnitude Response in dB'),
grid
axis tight;
xlabel('frequency in \pi units');
ylabel ('Decibels');
