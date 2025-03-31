clear all;
n = 30;
a = tril(rand(n,n)); b = rand(n,n); c = zeros(n,n);
c = zeros(n,n);

%j столбцовое gaxpy
for j=1:n
      c(:,j) = c(:,j) + a(:,:) * b(:,j);
    endfor

norm(a*b-c)
