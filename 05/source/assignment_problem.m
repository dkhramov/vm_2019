n = 1000;           % число испытаний
num_ent = 4;        % число предприятий
num_ord = 4;        % число заказов

costs = zeros(1,n); % затраты на заказы
o = zeros(n,4);     % распределение заказов по предприятиям
ent = [5,8,12,7;
       8,9,7,14;
       8,12,10,13;
       15,12,9,10];
   
rng(123);

for i=1:n
  o(i,:) = randperm(num_ent,num_ord);
  costs(i) = ent(1,o(i,1)) + ent(2,o(i,2)) + ...
             ent(3,o(i,3)) + ent(4,o(i,4));
end

[costs_min,imin] = min(costs);
costs_min
orders_allocation = o(imin,:)
