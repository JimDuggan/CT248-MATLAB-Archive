% we have a matrix with random values between -10 and 200
% write a function (anonymous) to valdiate, in terms of
% replacing all outliers with the value 0.

clear;

rng(100);

m = randi([-10 200],10,10);

f_val = @(d) d .* (d >=0);

m1 = f_val(m);

