x = 0:pi/100:2*pi;
figure

y1 = x .* sin(x);
y2 = x.^2 .* sin(x.^2);
y3 = exp(x) .* sin(x);
y4 = exp(-x) .* sin(x);

subplot(2,2,1);
plot(x, y1, 'r');
title('x.*sin(x) graph');

subplot(2,2,2);
plot(x, y2, 'r');
title('x^2.*sin(x^2) graph');

subplot(2,2,3);
plot(x, y3, 'r');
title('exp(x).*sin(x) graph');

subplot(2,2,4);
plot(x, y4, 'r');
title('exp(-x).*sin(x) graph');

xlabel('x-axis');
ylabel('y-axis');
grid on;
axis tight;
