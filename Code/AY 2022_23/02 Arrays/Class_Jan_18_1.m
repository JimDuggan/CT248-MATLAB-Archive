clear;

A = [1 2; 3 4];
B = eye(2);

% MATRIX multiplication
C = A*B;

% ELement wise mul;tiplication
D = A .* B;

rng(100);

rolls = randi([1 6],1,10);



