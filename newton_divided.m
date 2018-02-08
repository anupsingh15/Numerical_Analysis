function sum = newton_divided(X,Y,x)
 if(size(X) ~= size(Y))
     sprintf('Error');
 end
 sum = Y(1);
 p = 1;
 s = size(X,1);
 M = zeros(s,s+1);
 M(:,1) = X;
 M(:,2) = Y;
 for i = 3:s+1
     for j = 1:(s-i+2)
         M(j,i) = (M(j+1,i-1) - M(j,i-1))/(X(i+j-2)-X(j));
     end
 end
 
 for i = 3:s+1
     for j = 1:i-2
         p = p*(x-X(j));
     end
     p = p*M(1,i);
     sum = sum + p;
     p =1;
 end
end

 
    
