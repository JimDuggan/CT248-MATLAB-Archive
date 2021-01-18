clear;

C = readtable("data/CarData.xlsx");

scatter(C.displ,C.cty);

hold on;
scatter(C.displ,C.hwy);
