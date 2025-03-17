%verification of sampling theorm & aliasing

%up sampling by an integral factor(3)
n=0:50;
x=sin(2*pi*0.12*n);
y=zeros([1,3*length(x)]);
y([1:3:length(y)])=x;
subplot(2,2,1);
stem(n,x);
subplot(2,2,2);
stem(n,y(1:length(x)));
