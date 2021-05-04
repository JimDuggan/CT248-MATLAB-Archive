% Solution to Q1 CT248 Summer 2019

%-------------------------------------------------------------
% Part (a) - 4 marks
%   clear removes all variables from the workspace.
%   whos lists all the variables in the current workspace, together 
%            with information about their size, bytes, class,
%-------------------------------------------------------------

%-------------------------------------------------------------  
% Part (b) - 4 marks
% You can refer to the elements of a MATLAB matrix with a single subscript, A(k). 
% MATLAB stores matrices and arrays not in the shape that they appear when displayed 
% in the MATLAB Command Window, but as a single column of elements.
%
% Therefore A(7) is the first value in the third column (3)
%-------------------------------------------------------------  
 A = [10 20 30; 40 50 60; 70 80 90];
 v  = A(7);

%-------------------------------------------------------------
% Part (c) - 4 marks
%   The sum function operates in a column-wise manner, therefore the
%   Matrix must be tranposed before sum() is called. The answer needs to be
%   changed back to a column vectors and then appended to the original
%   array.
%-------------------------------------------------------------

B = [1 2 3; 4 5 6; 7 8 9];

sum_b = sum(B');

new_b = [B sum_b'];

%new_b =
%
%     1     2     3     6
%     4     5     6    15
%     7     8     9    24
%

%-------------------------------------------------------------
% Part (d) - 8 marks
%    a1 = C*D; is matrix multiplication
%    a2 = C.^D; is element-wise raising of C to the power of D
%    a3 = (C<=20)*D; is matrix multipication of a logical vector and D
%    a4 = C<=20.*D; returns a logical vector as .* has higher precedence
%-------------------------------------------------------------
C = [10, 20; 30 40];
D = [0 1; 2 0];

a1 = C*D;
a2 = C.^D;
a3 = (C<=20)*D;
a4 = C<=20.*D;

%-------------------------------------------------------------
% Part (e) - 5 marks
%  use randi() function to create the column vector coins = randi([0 1],100,1);
% use sum on the logical vector for the frequency count
% rng(n) allows for replication of results.
%-------------------------------------------------------------
coins = randi([0 1],100,1);

h = sum(coins == 1);
t  = sum(coins == 0);

 
 
     
