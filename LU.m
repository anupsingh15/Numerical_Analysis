function L = LU(A)
sum =0;
s = size(A);
L = zeros(s(1),s(1));
U = zeros(s(1),s(1));
if(s(1) ~= s(2))
      sprintf('Not a Square Matrix')
end
for i = 1:s(1)
    for j = 1 :s(1)
        if(i >= j)
            for k = 1 :j-1
                sum = sum + L(i,k)*U(k,j);
            end
            L(i,j) = A(i,j) - sum;
            sum = 0;
        end
        if (i == j)
            U(i,i) = 1;
        end
        if(i<j)
            for k = 1 :i-1
                sum = sum + L(i,k)*U(k,j);
            end
            U(i,j) = (A(i,j) - sum)/L(i,i);
            sum = 0;
        end
    end
end
U
L
end
