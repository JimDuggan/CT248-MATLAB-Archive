clear;

mpg = readtable("mpg.xlsx");



lv = mpg.displ > 6.0;

sub_mpg = mpg(lv,:);

sub_mpg(:,1:3)

