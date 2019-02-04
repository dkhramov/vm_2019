%% Без подбора коэффициента остывания
data = dlmread('tdata.txt',' ');
te = data(:,1);  % время
Te = data(:,2);  % температура

plot(te,Te,'ro'), grid on, hold on;
xlabel('t, c'); ylabel('T, grad');

t(1) = te(1);    % начальный момент времени
Ts = 22;         % начальная температура в комнате, град
r = 0.1;         % коэффициент остывания, 1/мин
dt = 0.1;        % шаг по времени, мин
tmax = 15;       % длительность, мин
nstep = tmax/dt; % число шагов
t = t(1):dt:tmax;
T = zeros(1,nstep);
T(1) = Te(1);    % начальная температура кофе, град

for i = 1:nstep
    T(i+1) = T(i) - r*(T(i)-Ts)*dt;
end

plot(t,T,'b-'), grid on, hold off;

% величина ошибки
Tc = T(1:10:end)';
err = sqrt( sum((Tc-Te).^2) );
fprintf('err = %f\n', err);
%% Подбор r методом Монте-Карло
data = dlmread('tdata.txt',' ');
te = data(:,1);  % время
Te = data(:,2);  % температура

plot(te,Te,'ro'), grid on, hold on;
xlabel('t, c'); ylabel('T, grad');

t(1) = te(1);    % начальный момент времени
Ts = 22;         % начальная температура в комнате, град
r = 0.1;         % коэффициент остывания, 1/мин
dt = 0.1;        % шаг по времени, мин
tmax = 15;       % длительность, мин
nstep = tmax/dt; % число шагов
t = t(1):dt:tmax;
T = zeros(1,nstep);
T(1) = Te(1);    % начальная температура кофе, град

err_max = 100;
err = 0;
k = 1; kmax = 1e4;

rng(123);
while (err_max > 0.1) & (k < kmax)
    r = 0.1*rand;
    for i = 1:nstep
        T(i+1) = T(i) - r*(T(i)-Ts)*dt;
    end
    Tc = T(1:10:end)';
    err = sqrt( sum((Tc-Te).^2) );
    %err = sqrt( (Tc(end)-Te(end)).^2 );
    if err < err_max, err_max = err; rbest = r; Tbest = Tc; end
    k = k + 1;
end

plot(t(1:10:end),Tbest,'b-'), grid on, hold off;
fprintf('err = %f, r_best = %f\n', err, rbest);
%% Перебор r по сетке
clear
A = dlmread('tdata.txt',' ');
te=A(:,1);
Te=A(:,2);

t(1) = 0;  % начальное время
T(1) = 83; % начальная температура кофе, град
Ts = 22;   % начальная температура в комнате, град
r = 0.1;   % коэффициент остывания, 1/мин
dt = 0.1;  % шаг по времени, мин
tmax = 15;  % длительность, мин
nstep = tmax/dt; % число шагов
t=t(1):dt:tmax;
k = 1; Delta = 100; DeltaTemp=0; dr=0.001;

while (Delta>0.1)&(r>0)
    for i = 1:nstep
        dT=-r*(T(i)-Ts);
        T(i+1)=T(i)+dT*dt;
    end
    Ti = T(1:10:end)';
    DeltaTemp=sqrt((Ti(end)-Te(end)).^2);
    if DeltaTemp < Delta, Delta = DeltaTemp; ri=r; Tii=Ti; end
    r = r-dr;
end

ti = t(1:10:end);
plot(ti,Tii,te,Te,'o'), grid on
Delta
ri
