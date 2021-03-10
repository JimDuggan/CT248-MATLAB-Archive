% See also x = normrnd(0,1,[100000 1]);

clear;

mpg = readtable("mpg.xlsx");

subplot(1,2,1);
histogram(mpg.cty,'BinWidth',5);
subplot(1,2,2);
histogram(mpg.hwy,'BinWidth',5);


