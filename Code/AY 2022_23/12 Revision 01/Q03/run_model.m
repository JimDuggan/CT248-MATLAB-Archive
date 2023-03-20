[t,y] = ode45(@sir, [0 50],[9999 1 0],odeset,4.0,1);

plot(t, y,'-o');
