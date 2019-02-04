%% Аналитическое решение для колебаний груза на пружине
k = 1000;
m = 10;
t = 0:0.01:2*pi;
x = (pi/4)*cos(sqrt(k/m)*t);
plot(t,x,'-o'), grid on, axis tight;
title('x(0)=pi/4, dx/dt(0)=0, k=1000, m=10')
