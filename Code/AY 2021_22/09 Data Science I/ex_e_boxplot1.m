clear;

mpg = readtable("mpg.xlsx");

subplot(1,2,1);
boxplot(mpg.cty);
title("City MPG");
hold on;
subplot(1,2,2);
boxplot(mpg.hwy);
title("Highway MPG");

