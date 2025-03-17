clc
 a= input('enter 1st arm');
 b= input('enter 2nd arm');
 c= input('enter 3rd arm');
 
 s = a+b+c;
 disp(s);

 S = (a+b+c)/2;
 area = (S*(S-a)*(S-b)*(S-c))^1/2;
 disp(area);