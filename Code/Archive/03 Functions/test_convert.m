function [o] = test_convert(i)
[nrow,ncol] = size(i);

o = zeros(nrow*ncol,1);

start = 1;
for j = 1:ncol
    o(start:start+nrow -1) = i(:,j);
    start = start + nrow;
end

o = o';

