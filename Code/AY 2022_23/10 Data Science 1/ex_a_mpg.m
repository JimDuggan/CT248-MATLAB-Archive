clear;

mpg = readtable("mpg.xlsx");
mpg.manufacturer = string(mpg.manufacturer);

mpg(1:2,1:5)

mpg.cty(1:3)

mpg(1:3,{'cty' 'hwy'})

summary(mpg);

string(mpg.manufacturer)

x = mpg.displ;
y = mpg.cty;
plot(x,y,"or");
hold on;
y1 = mpg.hwy;
plot(x,y1,"ob");








