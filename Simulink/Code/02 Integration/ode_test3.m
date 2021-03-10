f3 = @(t,x,k,K) k*x*(1-x/C);
 
START = 0; END = 100;
 
r = 0.15;

C = 100000;
 
[t,y] = ode45(f3,[START END],100,odeset(),r,C);
 
plot(t, y,'-o');


