t= 1:0.01:20;
y1 = sin(2*pi*t/10);
y2 = cos(2*pi*t/10);
f = y1+ y2;
k = y1- y2;
plot(t,y1,'r',t,y2,'b',t,f,'g',t,k,'y');
xlabel("time t=1 to 20");
ylabel("functions y1,y2,f,g");
title("2-D graph plot between functions & respective times");
legend('sinewave','cosinewave','addition','substraction','location','bestoutside');
grid on