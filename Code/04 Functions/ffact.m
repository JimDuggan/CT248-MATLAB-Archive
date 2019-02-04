clear;

f_fact = @(n)@(x)x.^n;

f = f_fact(2)
g = f_fact(3)

f(1:5)
g(1:5)