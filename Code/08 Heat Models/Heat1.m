f1 = @(t,x,Te,k) k*(Te-x);

[t, y] = ode45(f1, [0:18],[25], odeset, -10,1/6);

plot(t, y,'-o');

