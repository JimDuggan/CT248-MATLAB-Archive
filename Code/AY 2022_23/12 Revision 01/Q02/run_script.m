M = [1 2 ; 3 4];

[f1, f2] = get_handles();

f1(M,@sum);
f1(M,@min);

f2(M,@sum);
f2(M,@min);





