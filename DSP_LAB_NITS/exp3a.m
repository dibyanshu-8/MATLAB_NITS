%code for linear convolution using formula
clc;
clear;
X=input("enter length of x");
x=input("enter x");
H=input("enter length of h");
h=input("enter h");
l=X+H-1;
x = [x, zeros(1, l - X)];
h = [h, zeros(1, l - H)];
y = zeros(1, l);
for n=1:l
    for k=1:n
        if k<=X && (n-k+1)<=H
            y(n)=y(n)+x(k)*h(n-k+1);
        end
    end
end
disp(y);
