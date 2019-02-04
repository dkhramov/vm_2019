%% https://www.mathworks.com/help/symbolic/dsolve.html
syms a x
eqn = 'Dx = a*x';
dsolve(eqn,'t')
%%
syms a x b
eqn = 'Dx = a*x';
cond = 'x(0)=b';
xSol = dsolve(eqn,cond,'t');
%% m*d2x/dt2 + k*x = 0
syms m x k
eqn = 'm*D2x + k*x = 0';
dsolve(eqn,'t')
%% m > 0, k > 0
syms x
assume(m > 0)
assume(k > 0)
eqn = 'm*D2x + k*x = 0';
dsolve(eqn,'t')
%% x(0) = pi/4, dx/dt(0) = 0
syms x m k
cond = 'x(0)=pi/4, Dx(0)=0';
eqn = 'm*D2x + k*x = 0';
dsolve(eqn,cond,'t')
