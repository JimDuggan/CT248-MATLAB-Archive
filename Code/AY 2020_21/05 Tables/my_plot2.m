clear;

mpg = readtable("mpg.xlsx");

plot(mpg.displ,mpg.cty,"or");
hold on;
plot(mpg.displ,mpg.hwy,"xg");

grid();
title("Engine Size v City MPG");
xlabel("Displacement");
ylabel("Miles per Gallon");

hold off;



