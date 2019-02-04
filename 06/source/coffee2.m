x = 0:15; % ������� �������� �������
y = [83, 77.7, 75.1, 73.0, 71.1, 69.4, ...
     67.8, 66.4, 64.7, 63.4, 62.1, ...
     61.0, 59.9, 58.7, 57.8, 56.6] ; % ������� �������� �����������
n = length(x);
y1 = log(y);
% ���������� ��������� ������� �������
Mx = sum(x)/n;
My = sum(y1)/n;
Mx2 = sum(x.^2)/n;
Mxy = x*y1'/n;
% ������� ������� �������
M = [1 Mx; Mx Mx2];
% ������� ������� ��������� ������ �������
d = [My; Mxy];
% ������� ������� �������� ���������
s = M\d;
% ������� ���������� �������� ����������� ����������
t = 0:0.01:x(n);
% ���������� �������� ���������������� �������
T = exp( s(1)+s(2)*t );
% ������������ �������� ������ � ���������������� �������
plot(x, y, 'o', t, T, 'MarkerSize', 2), grid on
% ���������� ������� ������
f = exp( s(1)+s(2)*x );
err = sqrt(sum((y-f).^2));