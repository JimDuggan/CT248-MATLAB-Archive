clear;
% Script file for converting temperatures from F to C
% Taken from Essential MATLAB (D. Valentine) p 42

% Step 1: Get the input

F = input ('Enter the temperature in degrees F: ');

% Step 2: Convert to C
C = (F - 32) * 5 / 9;

% Step 3: Display the result
fprintf("The temperature of %f (F) is %f (C)\n",F,C);

