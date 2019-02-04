clear; clc
x =-2*pi:0.05:2*pi;
y = x;
[X,Y] = meshgrid(x,y);
Z = (X-2).^2+2*(Y-1).^2+13*cos(X-1).*sin(Y);
mesh(X,Y,Z)
x0 = [0,2];
[x,fval] = fminsearch(@f,x0)
[x,fval] = fminunc(@f,x0)