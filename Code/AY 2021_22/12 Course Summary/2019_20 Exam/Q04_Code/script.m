clear;
[t,y] = ode45(@goal, [0 10], 40);
 
plot(t, y,'-o');
