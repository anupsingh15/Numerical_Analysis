function y = f_bwrd(p,n)

y = p;
for i = 1:n
    y = y*(p+i);
end
y = y/factorial(n+1);
end