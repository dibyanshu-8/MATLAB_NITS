x=0:pi/100:2*pi;
figure
X=x;
y=x.^2.*sin(x.^2);
plot(x.^2.*sin(x.^2),'r');
xlabel('x axis');
ylabel('y axis');
title('x.^2.*sin(x.^2) curveplot');
grid on
axis tight