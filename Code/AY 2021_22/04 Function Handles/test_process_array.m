clear;

v = 1:5;

f1 = @sum;
f2 = @min;
f3 = @max;

an1 = process_array(v, f1);
an2 = process_array(v, f2);
an3 = process_array(v, f3);

