ncells = 10; % количество Ячеек
N = 20; % количество шагов по времени

L = 1/3; % влево
S = 1/3; % на месте
R = 1/3; % вправо

c = zeros(ncells,1); % Массив значений концентрации
cmax = 100;          % Максимум концентрации
c(ncells/2) = cmax;  % Начальное значение концентрации
x = 2:ncells-1;

axis([1 ncells 0 cmax]), grid on
xlabel('Position'), ylabel('Value')

for i=1:N   % цикл по времени
    line(1:ncells,c,'EraseMode','none') % рисуем текущие значениЯ концентрации          
    c(x) = c(x-1)*L + c(x)*S + c(x+1)*R; % считаем новые
    title(['Time Step: ' num2str(i)])
%     pause(0.1)
end
