clear;

mod = @(t,x,p,q)p*x - q*x;

[t, y] = ode45(mod,[2018:2030], ...
                     10000, odeset(), 0.1,0.02);
                 
plot(t,y);