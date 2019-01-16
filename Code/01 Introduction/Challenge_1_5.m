
% set the number of throws as a constant N
N=100000

% set the random seed to 100 to ensure replication, using rng()
rng(100)

% create the random throws of 2 dice, using randi([L U],r,c)
% L - lower value U - upper value r = # rows c = # cols
dice = randi([1 6],N,2);

% sum the two dice (each row) and store in a variable. 
total = dice(:,1)+dice(:,2);

% find all the occurances of the value 7, and display proportion
% try for 10,100,1000,10000,100000 and 1000000 rolls
sevens = sum(total == 7);

prop_sevens = sevens/length(total);

disp(sevens);
disp(prop_sevens);
% write a loop to calculate the proportion of all outcomes and 
% store in a vector


