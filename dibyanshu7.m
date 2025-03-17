t = -10 :0.1:10;
y1 = sin(2*pi*t/10);
y2 = cos(2*pi*t/10);
x = y1;
y = t;
z = y2;
figure
plot3(x,y,z);
grid on
title("3-D graph plot");
xlabel("sine function");
ylabel("time");
zlabel("cosine function");
axis tight
legend('Sinewave','Cosinewave');