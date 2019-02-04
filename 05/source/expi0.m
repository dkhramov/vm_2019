clc; clear

a =-1; 
b = 1;
R = 1;

N = 1e5;
Pi = [];

tic
for i = 1:100
    x = a + (b-a).*rand(1,N);
    y = a + (b-a).*rand(1,N);

    s = (sqrt(x.*x+y.*y) <= R);
    N0 = sum(s);
    Pi = [Pi 4*N0/N];   
end

format long
Pi = mean(Pi)
toc