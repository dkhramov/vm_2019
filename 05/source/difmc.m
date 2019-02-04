n = 250;  % число ячеек
m = 5000; % число частиц
x = (n/2)*ones(1,m);
dice = [-1,0,+1];

for k = 1:500
    hist(x,m)
    axis([0,n,0,m/5]); axis square; grid on
    dx = dice( round(1+2*rand(1,m)) );
    x = x + dx;
    %M(k) = getframe;
    drawnow
end

%movie2avi(M,'difmc.avi')