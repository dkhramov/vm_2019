ncells = 10; % ���������� �����
N = 20; % ���������� ����� �� �������

L = 1/3; % �����
S = 1/3; % �� �����
R = 1/3; % ������

c = zeros(ncells,1); % ������ �������� ������������
cmax = 100;          % �������� ������������
c(ncells/2) = cmax;  % ��������� �������� ������������
x = 2:ncells-1;

axis([1 ncells 0 cmax]), grid on
xlabel('Position'), ylabel('Value')

for i=1:N   % ���� �� �������
    line(1:ncells,c,'EraseMode','none') % ������ ������� �������� ������������          
    c(x) = c(x-1)*L + c(x)*S + c(x+1)*R; % ������� �����
    title(['Time Step: ' num2str(i)])
%     pause(0.1)
end
