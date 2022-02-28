[t,y] = ode45(@model_02, [0:1000], 0);
 
plot(t, y,'-ob');


