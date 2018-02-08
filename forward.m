function sum = forward(X,Y,x)
 sum = Y(1);
 if(size(X) ~= size(Y))
     sprintf('Error');
 end
 p = (x-X(1))/(X(2)-X(1));
 s = size(X,1);
 M = zeros(s,s+1);
 M(:,1) = X;
 M(:,2) = Y;
 for i = 3:s+1
     for j = 1:(s-i+2)
         M(j,i) = (M(j+1,i-1) - M(j,i-1));
     end
 end


   
 for i = 3:s+1
     sum = sum + f_fwrd(p,i-3)*M(1,i);
 end


 

