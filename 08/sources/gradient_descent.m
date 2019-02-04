%% Пример 1: $y = x_0^2 + x_1^2$ — все просто!
% минимум fun - в (0,0)
fun = @(x0,x1) x0^2 + x1^2;

lambda = 0.01;           %  можно подобрать лучше !!!
x0 = 15;
x1 = -9;

y = fun(x0,x1);

for i=1:100
  x0 = x0 - lambda * 2*x0;
  x1 = x1 - lambda * 2*x1;

  y = [y, fun(x0,x1)];   %  неэффективно !!!
end

plot(y), grid on
xlabel('Number of iterations')
ylabel('y')
%% Символьный расчет производных
fun = @(x0,x1) x0^2 + x1^2;

lambda = 0.01;           %  можно подобрать лучше !!!
x0_ = 15;
x1_ = -9;

syms x0 x1
df0 = @(x0,x1) diff(fun,x0);
df1 = @(x0,x1) diff(fun,x1);

y = fun(x0_,x1_);

for i=1:100
  x0_ = x0_ - lambda * eval(subs(df0,[x0,x1],[x0_,x1_]));
  x1_ = x1_ - lambda * eval(subs(df1,[x0,x1],[x0_,x1_]));

  y = [y, fun(x0_,x1_)];   %  неэффективно !!!
end

plot(y), grid on
xlabel('Number of iterations')
ylabel('y')
%% Пример 2: $y = x_0^2\sin(x_1) + x_1^2\exp(x_0)$
fun = @(x0,x1) x0^2*sin(x1) + x1^2*exp(x0);

lambda = 0.001;
x0 =  8;
x1 = -9;

y = fun(x0,x1);

for i = 2:300
  x0 = x0 - lambda * (2*x0*sin(x1) + x1^2*exp(x0));
  x1 = x1 - lambda * (x0^2*cos(x1) +2*x1*exp(x0));
  
  y = [y, fun(x0,x1)];
end

plot(y), grid on
xlabel('Number of iterations')
ylabel('y')
%% Строим график поверхности
x0 = linspace(0,10);
x1 = linspace(-9,9);

[X0,X1] = meshgrid(x0,x1);

Y = X0.^2.*sin(X1) + X1.^2.*exp(X0);
surf(X0,X1,Y)
xlabel('x0'); ylabel('x1'); zlabel('y');
