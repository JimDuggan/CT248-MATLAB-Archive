clear;

mod = @(t,x,p,q,r)p*x - q*x - r*x;

[t, y] = ode45(mod,[2017:2030], ...
                     1000, odeset(), 0.27,0.25,0.02);
                 
plot(t,y);