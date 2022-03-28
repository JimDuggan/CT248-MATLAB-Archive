rng(100);
x = randi([0 10],1,10000);

p_gt = sum(x > mean(x)) / length(x);