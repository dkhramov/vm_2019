%% ������ ��������� �������� � ������������ �����
n = 5;         % ����� ���
time = 0 : n;
x = zeros(1,n);
x(0+1) = 100;   % ��������� ����������� ���������
gamma = 1.5;    % ����������� ��������� ����������� ���������
for t = 1 : n
  x(t+1) = gamma * x(t);
end
plot(time, x, '-o'), grid on
%% ��� ������ ��������� �����������
x = zeros(1,n); x(0+1) = 100;
gamma = 1.5;
for t = 1 : n
  x(t+1) = gamma * x(t);
end
plot(time, x, 'g-o'), grid on, hold on
%
x = zeros(1,n); x(0+1) = 100;
gamma = 1;
for t = 1 : n
  x(t+1) = gamma * x(t);
end
plot(time, x, 'b-o'), grid on
x = zeros(1,n); x(0+1) = 100;
gamma = 0.7;
for t = 1 : n
  x(t+1) = gamma * x(t);
end
plot(time, x, 'r-o'), grid on
hleg1 = legend('gamma = 1.5','gamma = 1', 'gamma < 0.7');
