clear;

% Write a script that creates a sequence of numbers from 
% 1 to 1000

x = 1:1000;


% Set location 500 to be 10000

x(500) = 10000;
x(499:501);

% find the max, and find the location of the max

[mx, idx] = max(x);


