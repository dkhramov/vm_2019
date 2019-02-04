%% 2-й замечательный предел на комптютере
n=[1 1e3 1e7 1.2e11 1.2e13 1.7e14 1e15 3e15 5e15 8e15 1e16 1e19];
(1+1./n).^n
%% Определение машинной точности
eps = 1;
x = 1;
while x + eps > x, eps = eps/2, end
%%
eps
eps('double')
eps('single')
%%
a = 10^(-30); b = 10^(-35); c = 10^(-40); d = 10^(-25);
a1 = single(a); b1 = single(b); c1 = single(c); d1 = single(d);
x1 = a1*b1/c1/d1
x2 = 1/c1/d1*a1*b1
x3 = a1/c1 * b1/d1
