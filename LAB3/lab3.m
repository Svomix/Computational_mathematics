clear all; clc; format long;
y2=-10:0.001:10;
x1=-10:0.001:10;
y1 = sin(x1 + 1)-1.2;
x2 = (2 - cos(y2)) / 2;
plot(x1,y1,'g',x2,y2,'b'); grid on; % рисование графика
xy=[0.0, 0.0]';  % начальное приближение
xya=[0.0, 0.0]';
xyab=[0.510150157450740,  -0.201838415356574]';
function result = F1(x, y)
    result = sin(x + 1) - y - 1.2;
endfunction

function result = F2(x, y)
    result = 2 * x + cos(y) - 2;
endfunction
function result = F3(x)
  result = sin(x + 1) - 1.2;
 endfunction
function result = F4(y)
  result = 1 - 0.5 * cos(y);
 endfunction
function result = F(x, y)
    result = [F1(x, y); F2(x, y)];
endfunction
function result = J(x, y)
    result = [cos(x + 1), -1;
                2, -sin(y)];
endfunction
%Метод последовательных приближений
for k = 1:20
  xya = [F4(xya(2)), F3(xya(1))];
endfor
xya;
%Метод Ньютона
for k=1:4
  J_val = J(xy(1), xy(2));
  F_val = F(xy(1), xy(2));
  xy_next = xy - J_val \ F_val;
  xy = xy_next;
endfor
xy;
xy=[0.0, 0.0]';
J0_val = J(xy(1), xy(2));
%Модернизированный метод Ньютона
for k=1:7
  F_val = F(xy(1), xy(2));
  xy_next = xy - J0_val \ F_val;
  xy = xy_next;
  xy;
  k;
endfor
xyab;
xy;
norm(xy-xya);
