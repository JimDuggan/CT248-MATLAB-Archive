clear;

mpg = readtable("mpg.xlsx");



lv = mpg.displ > 6.0;

sub_mpg = mpg(lv,:);

sub_mpg(:,1:3)

sub_mpg((end-1):end,(end-1):end)

