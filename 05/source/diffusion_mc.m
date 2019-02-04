n = 250;             % число ячеек
m = 5000;            % число частиц
tmax = 200;          % время расчета

x = (n/2)*ones(1,m); % все частицы находятся в центре

dice = [-1,0,+1];    % варианты шагов

for k = 1:tmax
    dx = dice( round(1+2*rand(1,m)) );
    x = x + dx;
end

% рисование
hist(x,m);
axis([0,n,0,m/5]); axis square; grid on;
title(['t = ', num2str(tmax)]);
xlabel('x'); ylabel('u');
