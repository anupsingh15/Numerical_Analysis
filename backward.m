function sum = backward(X,Y,x)
 
 if(size(X) ~= size(Y))
     sprintf('Error');
 end
 s = size(X,1);
 p = (x-X(s))/(X(2)-X(1));
 sum = Y(s);
 M = zeros(s,s+1);
 M(:,1) = X;
 M(:,2) = Y;
 for i = 3:s+1
     for j = 0:(s-i+1)
         M((s-j),i) = M((s-j),i-1) -  M((s-j-1),i-1);
     end
 end
 for i = 3:s+1
     sum = sum + f_bwrd(p,i-3)*M(s,i);
 end
end



