% generate some random numbers
clear;
rng(200)
d = randi([1 6],10,1);
res = tabulate(d);

hist(d,6);

d2 = randi([1 6],10000,2);

d2 = [d2 d2(:,1)+d2(:,2)];

hist(d2(:,3));






