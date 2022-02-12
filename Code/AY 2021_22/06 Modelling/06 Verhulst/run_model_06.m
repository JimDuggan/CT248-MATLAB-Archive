[t,y] = ode45(@model_06, [1 150], 1000, odeset,0.07,100000);
 
plot(t, y,'-ob');


