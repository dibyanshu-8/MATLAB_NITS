t1=0:0.01:4;
t2=4:0.01:8;
t3=8:0.01:12;
t=[t1 t2 t3];
x1=zeros(size(t1));
x2=ones(size(t2));
x3=zeros(size(t3));
x=[x1 x2 x3];
plot(t,x,'r','LineWidth',2.5);
axis([0 12 0 1])