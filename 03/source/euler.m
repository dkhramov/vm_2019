%% јналитическое решение
a = .5;          % a = gamma-1
x0 = 100;         % x(0) = x0
step = .1;
t = 0:step:4;
x = x0*exp(a*t);
tA = t; xA = x;
plot(tA,xA,'-o'), grid on, hold on;
axis tight;
%% „исленное решение методом Ёйлера
h = .1;           % шаг интегрировани€
t = 0; tStop = 4; % промежуток интегрировани€ [t;tStop]
x = 100;          % x(0)
a = .5;           
% dx/dt = f(x,t)
f = @(x,t) a*x;

tSol(1) = t; xSol(1) = x;

i = 1;
while t < tStop
    %h = min(h,tStop - t);
    x = x + h*f(x,t);
    t = t + h;
    i = i + 1;
    tSol(i) = t;
    xSol(i) = x;
end

plot(tSol,xSol,'r-o'), grid on;
xlabel('t'); ylabel('x');
hold off;
%% ќшибки расчетов
figure;
plot(tSol,xA-xSol,'-o'), grid on, axis tight;
xlabel('t'); ylabel('error');
%%
a = .5;          % a = gamma-1
x0 = 100;         % x(0) = x0
step = .1;
t = 0:step:1.5;
x = x0*exp(a*t);
tA = t; xA = x;
t1 = 0:1; x1 = x0 + a*x0;
plot(tA,xA, t1,[x0,x1],'r-o'), grid on, axis tight;