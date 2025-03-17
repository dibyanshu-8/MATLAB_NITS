x=0:pi/100:2*pi;
figure
x=x;
y=x.*sin(x);
plot(x.*sin(x),'r');
xlabel('x axis');
ylabel('y axis');
title('x.*sin(x) curve plot');
grid on
axis tight