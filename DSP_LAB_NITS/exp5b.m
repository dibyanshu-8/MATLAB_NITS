%plotting execution time of random discrete signals
clc;
clear;

Nmax = 300;
fft_time = zeros(1, Nmax);

for n = 1:Nmax
    x = rand(1, n);
    fft_time(n) = timeit(@() fft(x));
end

plot(1:Nmax, fft_time, 'b');
xlabel('Signal Length (N)');
ylabel('Execution Time (seconds)');
title('FFT Execution Time');
grid on;
