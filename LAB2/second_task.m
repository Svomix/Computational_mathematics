n = 12;
A = rand(n, n) + eye(n) * n;
A = A * A';
G = zeros(n);
n = size(A, 1);
m = size(A, 2);
for i = 1:n
  for j = 1:i-1
    sum_k = G(i, 1:j-1) * G(j, 1:j-1)'; %
    G(i, j) = (A(i, j) - sum_k) / G(j, j);
  endfor
  sum_k_diag = G(i, 1:i-1) * G(i, 1:i-1)';
  val_sqrt = A(i, i) - sum_k_diag;
  G(i, i) = sqrt(val_sqrt);
 endfor
 norm(A-G*G')