A= input('enter a square matrix:');
[m,n]=size(A);
if m==n
    if det(A)==0
        disp('its inverse doesnot exist')
    else
        inve= adjoint(A)/det(A);
        disp('the inverse of A is')
        disp(inve)
    end
else
    disp('inverse of a rectangular matrix doesnot exist')
end
