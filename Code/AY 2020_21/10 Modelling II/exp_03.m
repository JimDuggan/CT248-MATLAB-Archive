% a model of dp/dt = -1*P
f = @(t,x) -.1*x;
 
[t,y] = ode45(f, [0 20], 1000);
 
plot(t, y,'-o');