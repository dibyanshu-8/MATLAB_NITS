f=input('enter your function:');
x0=input('enter initial guess:');
tol=input('enter tolerance:');
n=input('enter the number of iterations:');
for i=1:n
    x1=f(x0);
    fprintf('x%d=%.4f\n',i,x1)
    if abs(x1-x0)<tol
        break
    end
    x0=x1;
end