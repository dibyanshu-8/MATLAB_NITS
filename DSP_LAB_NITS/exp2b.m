% Down-sampling by an integral factor
clc;
clear;

% Original signal (example: sine wave)
fs = 100; % Original sampling frequency
t = 0:1/fs:1; % Time vector
x = sin(2*pi*10*t); % Original signal

% Down-sampling factor
M = 4; % Down-sampling by a factor of 4

% Down-sampled signal
y = x(1:M:end); % Take every M-th sample
t_down = t(1:M:end); % Corresponding time vector

% Plot the results
subplot(2, 1, 1);
plot(t, x, 'b', 'LineWidth', 1.5);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2, 1, 2);
stem(t_down, y, 'r', 'LineWidth', 1.5); % Use stem for discrete representation
title(['Down-sampled Signal (Factor = ', num2str(M), ')']);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
