function [o] = evens(inp)
% a function to filter even values from a vector
o = inp(mod(inp,2) == 0);



