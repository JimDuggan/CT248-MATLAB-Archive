[t,y] = ode45(@model_01, [0:10], 0);
 
plot(t, y,'-ob');


