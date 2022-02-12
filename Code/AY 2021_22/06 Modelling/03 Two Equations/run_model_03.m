[t,y] = ode45(@model_03, [0 10], [100 100]);
 
plot(t, y,'-ob');


