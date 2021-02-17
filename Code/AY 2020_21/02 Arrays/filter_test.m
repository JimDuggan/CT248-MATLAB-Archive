% For a vector of 100 random numbers, 
% filter out all those that are less than the mean
% range 1-20
rng(100);

x = randi([1 20],100,1);

lm = x(x < mean(x));

A = randi(20,10,10);
B = eye(10);
C = zeros(10,10);
D = ones(10,10);






