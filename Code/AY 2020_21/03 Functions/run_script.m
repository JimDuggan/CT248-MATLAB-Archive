clear;

% The program will generate random exam results for 
% a number of students, store these in an array

rng(100);
N_STUDENTS = 10;
N_SUBJECTS = 1;


s1 = randi([55 97], N_STUDENTS,1);
s2 = randi([35 70], N_STUDENTS,1);
s3 = randi([65 80], N_STUDENTS,1);
s4 = randi([45 70], N_STUDENTS,1);
s5 = randi([60 100],N_STUDENTS,1);

% Challenge 1 create a 10x5 array with this data

data = [s1 s2 s3 s4 s5];

% Challenge 2 write a function that takes the results, 
% and returns a new array, including the min, max and average
% grade for each student

% step 1. Write a function process_results
% Get it to return the number of rows and number
% of columns
% It should accept the variable data

%[a1, a2] = process_results(data);

% Next steps... return the array with a new column that is the
% max mark for each student

%max_v = process_results(data);

% [mx_v,mn_v,avr_v] = process_results(data);

res = process_results(data);






