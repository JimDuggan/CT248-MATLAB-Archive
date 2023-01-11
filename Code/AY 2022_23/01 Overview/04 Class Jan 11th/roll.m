clear;

N = 10;

% set the random number generator to 100
rng(100);

% create a matrix N x 2 of random numbers
S1 = randi([1 6],N,2);

% Add the first column to the second column
Sum2 = S1(:,1)+S1(:,2);

% Use the relational operator to create a logical vectors of 1's or 0's
Sevens = Sum2 == 7;

% Sum these to get the total sevens
T7 = sum(Sevens);

% Caluclate the proportion (as N gets higher it should approach 1/6)
Prop7 = T7/N;

fprintf("The proportion of sevens is %f\n",Prop7);





