clear all;
n = 12;
A = rand(n, n) + eye(n) * n;
A = A * A';
G = zeros(n);
G(1,1)=1;
for i=1:n
  G(i,1:i-1) = A(i,1:i-1) * inv(transpose(G(1:i-1,1:i-1)));
   G(i,i) = sqrt(A(i,i) - G(i,1:i-1) * transpose(G(i,1:i-1)))
endfor
norm(G * transpose(G) - A)
