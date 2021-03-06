clear;

mpg = readtable("mpg.xlsx");

subplot(2,1,1);
histogram(mpg.cty,'BinWidth',5);
subplot(2,1,2);
histogram(mpg.hwy,'BinWidth',5);
