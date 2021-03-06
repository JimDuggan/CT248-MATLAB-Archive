clear;

mpg = readtable("mpg.xlsx");

plot(mpg.displ,mpg.cty,"or");
grid();
title("Engine Size v City MPG");
xlabel("Displacement");
ylabel("Miles per Gallon");



