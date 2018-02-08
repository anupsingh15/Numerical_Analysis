function x1 = seidal(x0, tol, A, b)
 s = size(A);
 if(s(1) ~= s(2))
      sprintf('Not a Square Matrix')
      return
 end
L = zeros(s);
D = zeros(s);
U = zeros(s);
for i = 1:s(1)
    for j = 1:s(1)
        if(i>j)
            L(i,j) = A(i,j);
        elseif(i < j)
            U(i,j) = A(i,j);   
        else
            D(i,j) = A(i,j);
        end
    end
end
x1 = inv(D+L)*(b-(U*x0));
while(norm(x1-x0) > tol)
   x0 = x1;
   x1 = inv(D+L)*(b-(U*x0));
end
end