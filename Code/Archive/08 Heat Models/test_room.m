 [t, y] = ode45(@room, [0:18], [25], odeset, -10,1/6);
 
 plot(t, y,'-o');
 
 
 