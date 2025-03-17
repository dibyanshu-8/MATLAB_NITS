t=0:0.01:5;
unitstep=stepfun(t,0);
ramp=t.*stepfun(t,0);
x1=2.*t.*stepfun(t,0);
x2=-2.*(t1).*stepfun((t-1),0);
figure
plot(t/0.5,x1+x2,'b')
axis([0 5 0 5]);