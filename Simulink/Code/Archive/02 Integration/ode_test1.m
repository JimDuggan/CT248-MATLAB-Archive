f1 = @(t,x,C) C;
 
START = 0; END = 10;
 
constant = 10;
 
[t,y] = ode45(f1, [START END], 0,odeset,constant);
 
plot(t, y,'-o');


