clear;

mpg = readtable("mpg.xlsx");

mpg(1:2,1:5)

mpg.cty(1:3)

mpg(1:3,{'cty' 'hwy'})

summary(mpg);

string(mpg.manufacturer)




