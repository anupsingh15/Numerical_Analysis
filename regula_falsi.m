function root = regula_falsi(a, b, tol)
 i = 0;
 if(f(a) == f(b) || f(a)*f(b) > 0)
     sprintf('error')
 end 
 c1 = a - (f(a)*(b-a))/(f(b)-f(a));
 c0 = 1;
 disp('ITERATIONS       a        b        c        f(c) ')
 disp('=================================================')
 while (abs(c1-c0) >= tol)
     i=i+1;
     root = c1;
     g = f(c1);
     sprintf('     %d        %f   %f   %f   %f', i,a,b,c1,g)
     if(f(a)*f(c1) <= 0)
         b=c1;
     else
         a=c1;
     end
     c0 = c1;
     c1 = a - (f(a)*(b-a))/(f(b)-f(a));
 end
end
