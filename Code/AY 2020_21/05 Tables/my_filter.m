clear;

mpg = readtable("mpg.xlsx");

cl = unique(mpg.class);

lv = string(mpg.class) == string(cl(2));

sub_mpg = mpg(lv,:);

plot(sub_mpg.displ,sub_mpg.cty,"or");
