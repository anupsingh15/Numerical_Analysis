function L = cholesky(A)
sum =0;
s = size(A);
L = zeros(s(1),s(1));
if(s(1) ~= s(2))
      sprintf('Not a Square Matrix')
end
for i = 1:s(1)
    for j = 1 :s(1)
        if (i == j)
            for k = 1 : i-1
                sum = sum + L(i,k)^2;
            end
            L(i,i) = (A(i,i) - sum)^0.5;
            sum =0;
        end
        if(i > j)
            for k = 1 : j-1
                sum = sum + L(i,k)*L(j,k);
            end
            L(i,j) = (A(i,j) - sum)/L(j,j);
            sum = 0;
        end
    end
end
end

            