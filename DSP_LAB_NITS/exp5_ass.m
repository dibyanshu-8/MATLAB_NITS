%assignament
x=[1,2,3,4];
N=length(x);
x=[x(1),x(3),x(2),x(4)];
x1=[x(1)+x(2),x(1)-x(2),x(3)+x(4),x(3)-x(4)];
x2=[x1(1)+x1(3),x1(2)+x1(4)*exp(-1j*2*pi/N),x1(1)-x1(3),x1(2)-x1(4)*exp(-1j*2*pi/N)];
disp(x2);