%generation of exponential wave
n=input('enetr the length of exponential sequence');
t=0:n;
a=input('enetr a value');
y=exp(a*t);
figure;
stem(t,y);
title('exponential signal');