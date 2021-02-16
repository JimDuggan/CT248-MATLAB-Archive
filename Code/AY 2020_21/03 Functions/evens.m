function [v1, n, m] = evens(v)
%A test to return all even numbers in a vector

v1 = v(mod(v,2) == 0);
n = length(v);
m = length(v1);
end

