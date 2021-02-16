% get the final row of data (for a 3x3) 
% and then make it generic

A = [ 1 2 3; 4 5 6; 7 8 9];

[ra, ca] = size(A);

fr = A(3,:);
fr = A(ra,:);
fr = A(end,:);

B = [ 1 2 3 4; 4 5 6 8; 7 8 9 10];

fr1 = B(end,:);