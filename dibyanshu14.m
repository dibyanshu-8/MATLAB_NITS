clc
num1 = 100;
num2 = 500;
n = num1 :1: num2;
p = isprime(n);
disp(p); 
primenumber = n.*p; 
x=nonzeros(primenumber)