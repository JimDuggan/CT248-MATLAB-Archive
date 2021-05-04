rng(100);

M = randi([1 20],10,5);


TS = sum(M');

M = [M TS'];

M = [M;sum(M)];



