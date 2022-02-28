[t,y] = ode45(@model_06, 0:.5:50, 80,odeset,20,0.12);
 
plot(t, y,'-ob');


