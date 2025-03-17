%effect of downsampling in freq domain
% Effect of Down-sampling in Frequency Domain
clc;
clear;

% Original signal (example: sinusoidal signal)
fs = 100; % Original sampling frequency
t = 0:1/fs:1; % Time vector
x = sin(2*pi*10*t) + sin(2*pi*30*t); % Signal with two frequency components

% Down-sampling factor
m = 4;

% Down-sampled signal
y = x(1:m:end); % Take every m-th sample
fs_down = fs / m; % New sampling frequency

% Frequency response of the original signal
[X, f] = freqz(x, 1, 512, fs);

% Frequency response of the down-sampled signal
[Y, f_down] = freqz(y, 1, 512, fs_down);

% Plotting
subplot(2, 1, 1);
plot(f, abs(X), 'b', 'LineWidth', 1.5);
grid on;
title('Frequency Response of Original Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

subplot(2, 1, 2);
plot(f_down, abs(Y), 'r', 'LineWidth', 1.5);
grid on;
title(['Frequency Response after Down-sampling (Factor = ', num2str(m), ')']);
xlabel('Frequency (Hz)');
ylabel('Magnitude');

