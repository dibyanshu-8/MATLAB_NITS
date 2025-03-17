x=0:pi/100:2*pi;
figure
x=x;
y=exp(x).*sin(x);
plot(exp(x).*sin(x),'r');
xlabel('x axis');
ylabel('y axis');
title('exp(x).*sin(x)curve plot');
grid on
axis tight
