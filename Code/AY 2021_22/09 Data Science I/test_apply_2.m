clear;

d = readtable("weather.xlsx");

q1 = (d.station=="DUBLIN AIRPORT" | ...
      d.station=="MACE HEAD") & ...
     d.month==1;

 % filter operation
d1 = d(q1,:);

T1 =  d1(:,{'station','day'});
[G,Test] = findgroups(T1);

Test.SumRain = splitapply(@sum,d1.rain,G);

G1 = findgroups(d1.station,d1.rain);

test1 = splitapply(@sum,d1.rain,G);
test1 = reshape(test1,[],2);
