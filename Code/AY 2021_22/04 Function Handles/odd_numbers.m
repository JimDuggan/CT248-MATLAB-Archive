% Write an anonymous function that takes in 
% a vector and returns all the odd numbers 
% in a new vector
clear;
Test = 1:10;

odd = @(v)v(mod(v,2)==1);

sz = @(n)zeros(n,n);


