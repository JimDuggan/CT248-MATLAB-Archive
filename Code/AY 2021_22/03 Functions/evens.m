function [e,o] = evens(in)
% This is a test file to create a vector
% of even numbers from an input vector.

    l1 = mod(in,2) == 0;
    l2 = mod(in,2) == 1;
    
    e  = in(l1);
    o  = in(l2);
    
end

