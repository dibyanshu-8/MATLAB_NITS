%fir filter
clc;
clear;

% Filter specifications
N = 5; % Filter length
wc = 0.5 * pi; % Cutoff frequency in radians (normalized to Nyquist frequency)

% Design FIR filter
n = 0:N-1; % Time index
alpha = (N-1)/2; % Symmetry center
m = n - alpha; % Shifted index
fc = wc / pi; % Normalized cutoff frequency

% Ideal impulse response
hd = fc * sinc(fc * m);

% Rectangular window
w_rect = rectwin(N)'; % Apply window (transpose to match dimensions)

% Windowed FIR filter coefficients
h = hd .* w_rect;

% Frequency response
[H, w] = freqz(h, 1, 1000, 'whole'); % Compute frequency response
H = H(1:501); % Take first half (positive frequencies)
w = w(1:501); % Corresponding normalized frequency vector
mag = abs(H); % Magnitude response
db = 20 * log10((mag + eps) / max(mag)); % Logarithmic magnitude in dB

% Plot results
subplot(2, 2, 1);
stem(n, h);
title('Impulse Response');
grid on;
axis tight;
xlabel('n');
ylabel('h(n)');

subplot(2, 2, 2);
stem(n, w_rect);
title('Rectangular Window');
grid on;
axis tight;
xlabel('n');
ylabel('w(n)');

subplot(2, 2, 3);
plot(w/pi, mag);
title('Absolute Magnitude Response');
grid on;
axis tight;
xlabel('Frequency in \pi units');
ylabel('Amplitude Response');

subplot(2, 2, 4);
plot(w/pi, db);
title('Magnitude Response (dB)');
grid on;
axis tight;
xlabel('Frequency in \pi units');
ylabel('Magnitude (dB)');
