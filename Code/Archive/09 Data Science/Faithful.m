clear;

F = readtable("data/faithful.xlsx");

scatter(F.waiting,F.eruptions);xlabel("Waiting Time");
ylabel("Eruption Time");

b = polyfit(F.waiting, F.eruptions, 1);












