% Given the following matrix, write a command that
% will count the number of occurances less than 5

rng(100);

M = randi([1 10], 5, 5);

sum(sum(M<5));

M(M==10) = 0;