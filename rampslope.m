%clc
%t= 10:1:10;
%ramp_t=(t>=0).*t/3^0.5;
%plot(t,ramp_t);
%axis([-20 20 -20 20]);
%xlabel('Time instant');
%ylabel('Amplitude');
%title('ramp functions with slope tan 30*')
%grid on
%legend('ramp function amplitude with time','Location','north')


t=-10:1:10;
ramp_t=(t>=0).*t/3^0.5;
plot(t,ramp_t);
axis([-20 20 -10 20]);
xlabel('Time instant');
ylabel('Amplitude');
title('ramp function with slope tan30')
grid on
legend('ramp function amplitude vs time', 'Location', 'north')
