function [rv] = convert(m)
%Converts a matrix to a row vector (column order)
%Check out MATLAB reshape function as alternative

dim_m = size(m);   % get the matrix dimesnions r x c

n_rows = dim_m(1); % get the number of rows
n_cols = dim_m(2); % get the number of columns


rv = zeros(1,n_rows*n_cols); % Allocate memory for the answer

start_row = 1;
for i = 1:n_cols
    rv(start_row:(start_row + n_rows - 1)) = m(:,i);
    start_row = start_row + n_rows;
end


        
