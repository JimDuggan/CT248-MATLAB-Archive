clear;

mpg = readtable("mpg.xlsx");

mpg.class = string(mpg.class);

cl = unique(mpg.class);

lv = mpg.class == cl(2);

test = find(lv==1);

sub_mpg = mpg(lv,:);

plot(sub_mpg.displ,sub_mpg.cty,"or");
