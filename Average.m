function Avg = Average();
Num=input('Enter the array of 15 numbers:');
Len=Length(Num);
sum=0;
for i=1:Len
    sum = sum+Num(i);
end
if(Len==15)
    Avg=sum/Len;
    disp('Average of the 15 numbers is:')
    disp(Avg)
else
    disp('Total numbers entered is less than or more than 15');
end