clear;

mpg = readtable("mpg.xlsx");

boxplot(mpg.cty,mpg.class);

% add a boxplot for hwy by manufacturer
% how many manufacturers are there?

boxplot(mpg.hwy,mpg.manufacturer);


