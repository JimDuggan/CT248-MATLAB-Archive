M = [10 110; -2 45];

f1 = @(m) m < 0;

f2 = @(m) m > 100;

o = clean_data(M,f1)

o1 = clean_data(o,f2)


