[t,y] = ode45(@model_06, [1:150],...
              1000, odeset,0.07,100000);
 
res(:,1) = t;
res(:,2) = y;

plot(t, y,'-ob');
hold on;



[t,y] = ode45(@model_06, [1:150],...
              1000, odeset,0.05,100000);
plot(t, y,'-or');

res(:,3) = y;

hold on;
[t,y] = ode45(@model_06, [1:150],...
              1000, odeset,0.10,100000);

plot(t, y,'-og');

res(:,4) = y;


