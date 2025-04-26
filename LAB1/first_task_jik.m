clear all;
n = 30;
a = tril(rand(n,n)); b = rand(n,n); c = zeros(n,n);
c = zeros(n,n);

%jik скалярное
for j=1:n
  for i=1:n
    for k=1:n
      c(i,j) = c(i,j) + a(i,k) * b(k,j);
    endfor
  endfor
endfor

norm(a*b-c)