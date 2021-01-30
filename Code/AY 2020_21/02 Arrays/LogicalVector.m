clear;

v = 1:5;

lv = v > 3;

disp('Using logical vector to filter v');
disp(v);
disp(lv);
disp(v(lv));
