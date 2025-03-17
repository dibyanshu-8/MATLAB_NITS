%linear convolution
x=[1,1,1,1];
h=[1,1,1,1];
y=conv(x,h);

subplot(3,1,1);
stem(x);
subplot(3,1,2);
stem(h);
subplot(3,1,3);
stem(y);
