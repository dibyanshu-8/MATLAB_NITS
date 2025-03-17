t=-5:0.00001:10;
y1=stepfun(t,0);
plot(t,y1);
axis([-5 10 -1 3]);
title('A unit step function using "stepfun"');
xlabel('Time');
ylabel('Magnitude');
grid on;
