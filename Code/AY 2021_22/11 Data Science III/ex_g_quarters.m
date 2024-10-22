clear;
a17 = readtable("aimsir17.csv");

a17.quarter1 = get_quarter(a17.month);

boxplot(a17.temp,a17.quarter1);

% Note the use of arrayfun() ... a very useful function
a17.quarter2 = arrayfun(@get_quarter_simple,a17.month);