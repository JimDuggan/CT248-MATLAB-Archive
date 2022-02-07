[t,y] = ode45(@goal, 0:200, 40);
 
plot(t, y,'-o');
