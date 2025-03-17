clc
fun = @(x) (x.^2)*(exp(x));
q = integral(fun,-10,10);
disp(q);
