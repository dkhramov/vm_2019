%% Вычисляем минимум функции 2-х переменных
rng(123); % зерно генератора СЧ
n = 1e5;
x = -pi/2+pi*rand(1,n);
y = -pi/2+pi*rand(1,n);
z = sin(x.^2 + y.^2);
z_min = min(z);
i = find(z == z_min);
fprintf('x_min = %f, y_min = %f, z_min = %f\n',x(i),y(i), z_min);
%% Строим графики
[X,Y] = meshgrid(linspace(-pi/2,pi/2,100),linspace(-pi/2,pi/2,100));
Z = sin(X.^2 + Y.^2);
surf(X,Y,Z), grid on, hold on;
xlabel('X'); ylabel('Y'); zlabel('Z');
plot3(x(i),y(i),z_min,'r.','MarkerSize',36)