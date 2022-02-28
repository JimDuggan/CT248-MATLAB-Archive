[t,y] = ode45(@model_04, [1960 2010], 3e9,odeset,0.015);
 
plot(t, y,'-ob');
hold all;


[t,y] = ode45(@model_04, [1960 2010], 3e9,odeset,0.03);

plot(t, y,'-or');
