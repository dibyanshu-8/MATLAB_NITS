x=0:pi/100:2*pi;
figure
X=x;
y1=x.*sin(x);
y2=x.^2.*sin(x.^2);
y3=exp(-x).*sin(x);
y4=exp(x).*sin(x);
subplot(2,2,1);
plot(x.*sin(x),'r');
title("x.*sin(x) graph");
subplot(2,2,2);
plot(x.^2.*sin(x.^2),'r');
title('x.^2.*sin(x.^2) curveplot');
subplot(2,2,3);
plot(exp(-x).*sin(x),'r');
title('exp(-x).*sin(x) curveplot');

subplot(2,2,4);
plot(exp(x).*sin(x),'r');
title('exp(x).*sin(x)curve plot');

xlabel('x axis');
ylabel('y axis');
title('x.*sin(x) curveplot');
grid on
axis tight



