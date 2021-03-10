f2 = @(t,x,k) r*x;
 
START = 0; END = 30;
 
r = 0.07;
 
[t,y] = ode45(f2, [START END], 1000,odeset,r);
 
plot(t, y,'-o');


