clear;

mpg = readtable("mpg.xlsx");
mpg.manufacturer = string(mpg.manufacturer);
mpg.model = string(mpg.model);

mpg(1:3,{'manufacturer', 'model', 'displ', 'cty', 'class'})



mpg.cty_kms  = mpg.cty *1.6;

mpg(1:3,{'manufacturer', 'model', 'displ', 'cty', 'class','cty_kms'})
