mpg = readtable("mpg.xlsx");
mpg.manufacturer = string(mpg.manufacturer);
mpg.class = string(mpg.class);

audi1 = mpg(mpg.manufacturer=="audi",:);
honda = mpg(mpg.manufacturer=="honda",:);






