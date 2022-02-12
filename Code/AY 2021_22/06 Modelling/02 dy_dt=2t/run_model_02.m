[t,y] = ode45(@model_02, [0 10], 100);
 
plot(t, y,'-ob');


