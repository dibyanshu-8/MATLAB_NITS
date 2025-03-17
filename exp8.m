%IIR filter using bilinear transformation method.
clc;
clear;

T = 1; % Sampling period
wp = 0.2 * pi; % Passband frequency in radians
ws = 0.6 * pi; % Stopband frequency in radians
e = sqrt(1/(0.8^2) - 1); % Ripple factor
A = 1/0.2; % Stopband attenuation

% Prewarp analog frequencies
wp = (2/T) * tan(wp/2);
ws = (2/T) * tan(ws/2);

% Determine filter order
N = ceil((1/2) * (log10(e^2/(A^2-1)) / log10(wp/ws)));

% Calculate cutoff frequency
wc = wp / (e^(1/(2*N)));

% Analog Butterworth filter design
[b, a] = butter(N, wc,'high', 's'); % Design analog high-pass filter

% Convert to digital filter using bilinear transformation
[Numd, Dend] = bilinear(b, a, 1/T);

% Frequency response of the digital filter
w = 0:0.01:pi; % Frequency vector
Hw = freqz(Numd, Dend, w); % Digital filter frequency response

% Plot the magnitude response
plot(w/pi, abs(Hw));
xlabel('Frequency in \pi units');
ylabel('Magnitude');
title('Magnitude Response of the IIR Filter');
