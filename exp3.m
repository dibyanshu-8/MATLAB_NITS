%clc
%A=input('enter any 5 digit number');
%B=str2num(fliplr(num2str(A)));
%disp(B);


%clc
%x=(200:900);
%a= sqrt(x);
%disp(a);

clc
A=input('enter 25 elelments:');
L=length(a);
if(L==25)
    as=sort(a);
    ds=sort(a,'descend');
    disp('increasing order:')
    disp(as)
    disp('decreasing order')
    disp(ds)
else
    disp('total number entered is either more or less than 25')
end

