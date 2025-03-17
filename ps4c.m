clc
clear all
close all
data=[510 7.2 0.00142; 310 7.85 0.00194; 18 7.97 0.0482];
pmin = [150 100 50]; pmax = [600 400 200];
B1=[0.0218 0.0093 0.0028; 0.0093 0.0228 0.0017; 0.0028 0.0031 0.0015]/100;
A=data(:,1); B=data(:,2); G=data(:,3); PD=800;
L = 10; 
iter=0; f=0;
for i=1:3
 f = f + (G(i) + B(i) * B1(i,i)) / (2 * (G(i) + L * B1(i,i))^2);
end
while (1)
 iter=iter+1;
 for i=1:3
 P(i) = (L-B(i))/(2*G(i));
 if P(i)>pmax(1,i)
 P(i)=pmax(1,i);
 elseif P(i)<pmin(1,i)
 P(i)=pmin(1,i);
 end
 end
 P1gen(iter)=P(1);
 P2gen(iter)=P(2);
 P3gen(iter)=P(3);
 Loss1=0;
 for i=1:3
    for j=1:3
        Loss1=Loss1+P(i)*B1(i,j)*P(j);
    end
 end
 Loss=Loss1;
 error = PD+Loss-sum(P) ; 
 delta_L = abs(error)/f;
 Psum= sum(P);
 if abs(error) < .0001
    break;
 elseif Psum > PD+ Loss
    L=L - delta_L/2;
 elseif Psum < PD +Loss
    L=L + delta_L/2;
 end
 % cost calculation
 for i=1:3
 C(i) = A(i) + (B(i) * P(i)) + (G(i) * (P(i)^2));
 end
 Cost(iter)=sum(C); Lambda(iter) = L; Totalloss(iter)=Loss;
end
fprintf('iter lambda P1 P2 P3 Total_Cost($/hr)\n');
for m = 1:min(iter, length(Lambda))
 fprintf('%d %f ', m, Lambda(m));
 fprintf('%f %f %f ', P1gen(m), P2gen(m), P3gen(m));
 fprintf('%f\n', Cost(m));
end
plot(Cost); xlabel('No. of iterations'); ylabel ('Cost($)'); 
title ('Convergence plot'); grid on;