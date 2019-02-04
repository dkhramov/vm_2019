%%
y = @(x) x.^3/3;
F1 = y(2) - y(1)
%%
F2 = integral(@(x) x.^2, 1, 2)
%%
syms x
int(x^2)
F3 = int(x^2, 1, 2)