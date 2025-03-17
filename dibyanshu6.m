t = 1:0.01:20;
y1 = sin(2*pi*t/10);
y2 = cos(2*pi*t/10);
subplot(2,2,1)
plot(t,y1,'r');
title("sine wave plot");
subplot(2,2,2)
plot(t,y2,'b');
title("cosine wave plot");