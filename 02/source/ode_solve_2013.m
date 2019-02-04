%% Matlab R2013
%% https://www.mathworks.com/help/symbolic/dsolve.html
syms a x(t)
eqn = diff(x,t) == a*x;
dsolve(eqn)
%%
syms a x(t) b
eqn = diff(x,t) == a*x;
cond = [x(0)==b];
xSol(t) = dsolve(eqn,cond);
%% m*d2x/dt2 + k*x = 0
syms m x(t) k
eqn = m*diff(x,t,2) + k*x == 0;
dsolve(eqn)
%% m > 0, k > 0
syms x(t)
syms m k positive
eqn = m*diff(x,t,2) + k*x == 0;
dsolve(eqn)
%% x(0) = pi/4, dx/dt(0) = 0
syms x(t)
syms m k positive
Dx = diff(x,t);
cond = [x(0)==pi/4,Dx(0)==0];
eqn = m*diff(x,t,2) + k*x == 0;
dsolve(eqn,cond)
%%
syms x(t)
syms r K positive
eqn = diff(x,t) == r*x*(1-x/K);
dsolve(eqn)
