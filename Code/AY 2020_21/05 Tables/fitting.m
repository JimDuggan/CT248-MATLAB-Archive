clear;

mpg = readtable("mpg.xlsx");

mod = fitlm(mpg,'cty ~ displ');

