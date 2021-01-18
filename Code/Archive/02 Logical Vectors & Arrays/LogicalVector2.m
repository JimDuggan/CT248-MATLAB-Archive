v = 1:5;

lv = logical([0 1 0 1 0]);

disp('Using logical vector from logical() to filter v');
disp(v);
disp(lv);
disp(v(lv));


