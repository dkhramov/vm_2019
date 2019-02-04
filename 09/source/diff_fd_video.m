% –ешает одномерное уравнение диффузии на прямоугольнике,
% с начальным условием u(t(1),x)= f
% и граничными условиями u(t,х(1)) = ua, u(t,х(end)) = ub
D = 2;
xmin = -5; xmax = 5;
tmin = 0; tmax = 4;
J = 10; % число узлов по x
N = 15; % число узлов по t
fmax = 50;
f = zeros(1,J); f( round(J/2) ) = fmax;
ua = 0; ub = 0;
dx = (xmax-xmin)/J;
dt = (tmax-tmin)/N;
s = D*dt/dx^2;
u = zeros(N,J);
u(1,:) = f;
for n = 1:N-1
    u(n+1,2:J-1) = s*(u(n,3:J) + u(n,1:J-2)) + (1-2*s)*u(n,2:J-1);
    u(n+1,1) = ua;
    u(n+1,J) = ub;
    plot(u(n,:))
    axis([1 J 0 fmax]),grid on;
    xlabel('Position')      
    ylabel('Value')
    title(['After Time Step: ' num2str(n+1)])
    F(n) = getframe;
    drawnow
end
movie2avi(F,'difd2.avi','FPS',3)