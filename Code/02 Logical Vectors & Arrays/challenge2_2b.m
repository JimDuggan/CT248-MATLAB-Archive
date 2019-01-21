clear;

% The test input
v = [1 2 3 4 5 1 3 5 2 2 2 2 2 2 2 5];

% Not sure how long the vector will be.
u_v = [];

% Have to examine each element. For instance, the last element
% could be unique.

for i = v
    if(isempty(u_v) || sum(i == u_v) == 0)
        u_v = [u_v i];
    end
end

