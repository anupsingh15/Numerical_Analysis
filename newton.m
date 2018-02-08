function root = newton(x0, tol)
 i = 0;
 x1 = x0 - (f(x0)/f1(x0));
 disp('ITERATIONS       x_n       x_n+1         f(x_n+1)        x_n-x_n+1 ')
 disp('===================================================================')
 while(abs(x0 - x1) > tol)
     i = i+1;
     if(f1(x0) < 10^-5)
         sprintf('derivative is close to zero')
         break;
     end
     sprintf('     %d        %f   %f   %f   %f', i,x0,x1,f(x1), x0-x1)
     x0 = x1;
     x1 = x0 - (f(x0)/f1(x0));
     root = x0;
 end
 