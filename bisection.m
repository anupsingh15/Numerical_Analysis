function root = bisection(a, b, tol)

 min_iter = log(abs(b-a)/tol)/log(2);
 sprintf('min iterations required: %d', min_iter)
 i = 0;
 if(f(a)*f(b) > 0)
     sprintf('error');
 end 
 disp('ITERATIONS       a        b        c        f(c)        b-a')
 disp('===========================================================')
 while (abs(b-a) > tol)
     i=i+1;
     c = (a+b)/2;
     root = c;
     sprintf('     %d        %f   %f   %f   %f   %f', i,a,b,c,f(c),abs(b-a))
     if(f(a)*f(c) <= 0)
         b=c;
     else
         a=c;
     end
 end
end
