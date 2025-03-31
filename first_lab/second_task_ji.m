clear all;
n = 30;
a = tril(rand(n,n)); b = rand(n,n); c = zeros(n,n);
c = zeros(n,n);

%ji векторное
for j=1:n
  for i=1:n
      c(i,j) = c(i,j) + a(i,:) * b(:,j);
    endfor
  endfor

norm(a*b-c)