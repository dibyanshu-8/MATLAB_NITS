%compute of ifft or idft signals
clc;
clear;
x = input('Enter the sequence: '); % Example: [1 2 3 4]
n = input('Enter the length of the sequence (for zero-padding): '); % Example: 8
z = ifft(x, n); % Compute the Inverse FFT
figure;
stem(z);
xlabel('Real Part');
ylabel('Imaginary Part');
title('Complex IFFT Signal');
display(z);
