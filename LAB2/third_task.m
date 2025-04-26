clear all;
n = 12;
A = rand(n, n) + eye(n) * n;
A = A * A';
G = zeros(n);
G(1,1)=sqrt(A(1,1));
for i = 2:n
      for j = 1:i-1
            sum_prod = 0;
            for k = 1:j-1
                sum_prod = sum_prod + G(i,k) * G(j,k);
            endfor
            G(i,j) = (A(i,j) - sum_prod) / G(j,j);
        endfor
        sum_sq = 0;
        for k = 1:i-1
            sum_sq = sum_sq + G(i,k)^2;
        endfor
        G(i,i) = sqrt(A(i,i) - sum_sq);
    endfor
 norm(G * transpose(G) - A)
