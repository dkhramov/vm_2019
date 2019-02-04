n = 1000;           % ����� ���������
num_ent = 4;        % ����� �����������
num_ord = 4;        % ����� �������

costs = zeros(1,n); % ������� �� ������
o = zeros(n,4);     % ������������� ������� �� ������������
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
