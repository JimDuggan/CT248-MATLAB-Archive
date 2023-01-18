clear;

% So we can replicate the result
rng(100);

% Generate random numbers
v = randi([0 3],1,10);

% Create an empty vector
uni = [];

for i = 1:length(v)

    % Find the number of matches, summing the logical vector
    num_matches = sum(v(i) == uni);
    fprintf("In loop v(i) = %f, n_m=%d\n",v(i),num_matches);

    % Find the number of matches, summing the logical vector
    if num_matches == 0 
        uni = [uni v(i)]; 
    end
    
end


fprintf("The unique values are %d\n",uni);

