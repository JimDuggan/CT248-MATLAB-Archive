clear;

mpg = readtable("mpg.xlsx");
mpg.manufacturer = string(mpg.manufacturer);
mpg.model = string(mpg.model);

% the longer solution
cty = mpg.cty;
hwy = mpg.hwy;

diff = hwy - cty;

mpg.diff = mpg.hwy - mpg.cty;


