clear
close all
A = input("enter 15 numbers:");
L= length(A);
max(A)=0;
if(L==15)
    for i=1:L
        if A(i) > A(15)
            max(A)=A(i);
        end
        min(A)=A(1)
        for i=1:L
            if A(i)<min(A)
                min(A)=A(i);
            
disp('maximum is')
disp(max A)
disp('minimum is')
disp(min A)

disp('Total numbers of entered value is less or more than 15')
            end
       
