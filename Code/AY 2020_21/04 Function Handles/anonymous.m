 clear;
 rng(100);
 
 x1 = randi([1 6],1,10);
 
 y1 = randi([1 6],1,10);
 
 % defining and anonymous function
 odd1 = @(x) x(mod(x,2) ~= 0);
 
 
 odd1(x1)
 
 odd1(y1)
 
 
 
 
 
 
 
 
 