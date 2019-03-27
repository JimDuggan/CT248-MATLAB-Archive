clear;

C = readtable("data/CarData.xlsx");

subplot(2,1,1); scatter(C.displ,C.cty);title("City MPG");
subplot(2,1,2); scatter(C.displ,C.hwy);title("Highway MPG");






