%%
x_ini = 0.01;
s = [];
c = [];
lambda = 0.01;
k = 1;
for j = 1:200
    x0 = x_ini;
    for i = 1:200
        x0 = 1 - lambda*x0*x0;
        s(k) = x0;
        c(k) = lambda;
        k = k + 1;
    end
    x_ini = x0;
    lambda = lambda + 0.01;
end

plot(c,s,'r.'), grid on, axis tight;
xlabel('lambda'); ylabel('x');
hold on;
plot([.2,.2],[-1,1]);
plot([1,1],[-1,1]);
plot([1.3,1.3],[-1,1]);
plot([1.6,1.6],[-1,1]);
hold off
%%
lambda1 = 0.2;
x0 = x_ini;
n = 50;
s = zeros(1,n);
t = 1:n;
for i = t
    x0 = 1 - lambda1*x0*x0;
    s(i) = x0;
end

plot(t,s), grid on;
xlabel('t'); ylabel('x');
%%
lambda2 = 1;
x0 = x_ini;
n = 50;
s = zeros(1,n);
t = 1:n;
for i = t
    x0 = 1 - lambda2*x0*x0;
    s(i) = x0;
end

plot(t,s), grid on;
xlabel('t'); ylabel('x');
%%
lambda3 = 1.3;
x0 = x_ini;
n = 200;
s = zeros(1,n);
t = 1:n;
for i = t
    x0 = 1 - lambda3*x0*x0;
    s(i) = x0;
end

plot(t,s), grid on;
xlabel('t'); ylabel('x');
%%
lambda4 = 1.6;
x0 = x_ini;
n = 150;
s = zeros(1,n);
t = 1:n;
for i = t
    x0 = 1 - lambda4*x0*x0;
    s(i) = x0;
end

plot(t,s), grid on;
xlabel('t'); ylabel('x');
