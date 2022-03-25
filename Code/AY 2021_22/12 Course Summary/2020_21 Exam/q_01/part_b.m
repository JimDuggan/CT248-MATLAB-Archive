% (b) write a MATLAB script to calculate the frequencies of 
% folling two dice 100 times. The dice rolls should be simulated with
% one call to the randi() function. The tabulate function cannot be used.
% The MATLAB function unique can be used. The results should be stored in
% a row vector. You can use the MATLAB find function as part of the solution.
%
% explain how you could generate the same result each time, and the
% benefits of being able to do that.

rng(100);
N = 100000

rolls = randi([1 6],N,2);

sum_dice = rolls(:,1) + rolls(:,2);

un_vals = unique(sum_dice);

freq = zeros(1,length(un_vals));

for i = 1:N
    ind = find(un_vals == sum_dice(i));
    freq(ind) = freq(ind) + 1;
end




