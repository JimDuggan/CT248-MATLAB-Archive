function res1 = process_results(d)
%this is a function to process exam results
[nr, nc] = size(d);

max_v = zeros(nr,1);
min_v = zeros(nr,1);
mean_v = zeros(nr,1);

for i = 1:nr
    max_v(i)   = max(d(i,:));
    min_v(i)   = min(d(i,:));
    mean_v(i)  = mean(d(i,:));
end

res1 = [d min_v max_v mean_v];
end

