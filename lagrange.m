function sum = lagrange(X,Y,x)

 p = 1;
 sum = 0;
 if(size(X) ~= size(Y))
     sprintf('Error');
 end
 
 for i = 1:size(X,1)
     for j = 1:size(X,1)
         if( i~= j)
             p = p*((x-X(j))/(X(i)-X(j)));
         end
     end
     sum = sum + (p*Y(i));
     p = 1;
 end
end

             