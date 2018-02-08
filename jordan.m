function B = jordan(A)
 r = size(A);
 if(r(1) ~= r(2))
     sprintf('not a square matrix');
 else
     B = eye(r);
     for j = 1:r
         for i = j:r
             if A(i,j) ~= 0
                 for k = 1:r
                     s = A(j,k);
                     A(j,k) = A(i,k);
                     A(i,k) = s;
                     s = B(j,k);
                     B(j,k) = B(i,k);
                     B(i,k) = s;
                 end
                 t = 1/A(i,j);
                 for k=1:r
                     A(j,k) = t*A(j,k);
                     B(j,k) = t*B(j,k);
                 end
                 for l = 1:r
                     if l ~= j
                         t = -A(l,j);
                         for k = 1:r
                             A(l,k) = A(l,k) + t*A(j,k);
                             B(l,k) = B(l,k) + t*B(j,k);
                         end
                     end
                 end
             end
         break
         end
         if A(i,j) == 0
             disp('Singular matrix');
             B = 'error';
         end
     end
 end
end

 
            