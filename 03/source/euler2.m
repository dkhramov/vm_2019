%����:    y' = f - ������ ����� �� 
%         a, b - ������� ��������� ������ ������� [a,b] 
%         ya - ��������� ������� ya = y(a)
%         N - ���������� �����
%�����:   T - ������ �������� ����������� ����������
%         Y - ������ �������� �������

f = inline('2*T.^2+2*Y','T','Y');
a = 0; b = 1;
ya= 1;
N = 100;

h = (b-a)/N;
T = zeros(1,N+1);
Y = zeros(1,N+1);
T = a:h:b;
Y(1) = ya;

for j=1:N
   Y(j+1) = Y(j)+h*f(T(j),Y(j));
end

plot(T,Y,'-o'), grid on;
title(['dydt = 2*t.^2+2*y, y(0)=1, h=',num2str(h)])

%% ���� ������������� �������
syms x
eqn = 'Dx = 2*t^2+2*x';
cond = 'x(0) = 1';
dsolve(eqn, cond, 't')
%% ������ ������ �������������� �������
t = a:h:b;
x = (3*exp(2*t))/2 - t - t.^2 - 1/2;
plot(t,x), grid on;
%% ���������� ������� ����� �����
plot(t,abs(Y-x)), grid on;
