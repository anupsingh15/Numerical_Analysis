function root = iterative(x0, tol)
 x1 = f(x0);
 i = 1;
 disp('ITERATION        x1         g(x1)        x1 - x0')
 disp('================================================')
 sprintf('     %d        %f   %f   %f', i,x1,f(x1),x1-x0)
 while(abs(x1-x0) > tol)
     i = i+1;
     x0 = x1;
     x1 = f(x0);
     root = x1;
     sprintf('     %d        %f   %f   %f', i,x1,f(x1),x1-x0)   
 end
end

     