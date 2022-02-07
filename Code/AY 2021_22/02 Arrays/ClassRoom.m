clear;
% Generate the following plot for a 
% quadratic equation. a = 2 , b = 20, 
% c = -100. 

% Y = AX^2 + BX + c

A = 2;
B = 20;
C = -100;

% Define the input vector
X = -50:50;

Y = A*X.^2 + B*X + C;

plot(X,Y);

