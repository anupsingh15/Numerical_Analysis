function root = secant(x0, x1, tol)
 i = 0;
 x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
 disp('ITERATIONS       x_n       x_n+1         f(x_n+1)        x_n-x_n+1 ')
 disp('===================================================================')
 f(x2)
 while(abs(f(x2)) > tol)
     i = i + 1;
     x0 = x1;
     x1 = x2;
     x2 = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
     root = x2;
     sprintf('     %d        %f   %f   %f   %f', i,x1,x2,f(x2),x2-x1)
 end
end

     
      
 