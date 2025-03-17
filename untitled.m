x=[-pi:pi/300:pi];
y= tan(sin(x))-sin(tan(x));
plot(x,y,'r')
xlabel("x")
ylabel("tan(sin(x))-sin(tan(x))")
title("2D curve plot")
grid on