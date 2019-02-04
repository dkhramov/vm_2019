n = 250;             % ����� �����
m = 5000;            % ����� ������
tmax = 200;          % ����� �������

x = (n/2)*ones(1,m); % ��� ������� ��������� � ������

dice = [-1,0,+1];    % �������� �����

for k = 1:tmax
    dx = dice( round(1+2*rand(1,m)) );
    x = x + dx;
end

% ���������
hist(x,m);
axis([0,n,0,m/5]); axis square; grid on;
title(['t = ', num2str(tmax)]);
xlabel('x'); ylabel('u');
