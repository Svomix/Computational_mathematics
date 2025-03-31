clear all;
n = 10;
A = rand(n,n); B = rand(n,n);
C = zeros(n,n);
alpha=2; N=n/alpha;
%Блочное умножение
for jb=1:N
    j=(jb-1)*alpha+1:jb*alpha;
  for ib=1:N
    i=(ib-1)*alpha+1:ib*alpha;
    for kb=1:N
       k=(kb-1)*alpha+1:kb*alpha;
      C(i,j)=C(i,j)+A(i,k)*B(k,j);
    endfor
  endfor
endfor

norm(A*B-C)
