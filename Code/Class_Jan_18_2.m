clear;
rng(100);
rolls = randi([1 6],1,10);

gt3 = rolls > 3;

x = rolls(gt3);

y = rolls(rolls<3);

% The function unique() will return unique values from a vector
u = unique(rolls);

