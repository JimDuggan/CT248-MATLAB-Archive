[t,y] = ode45(@(t,x)[2*t;3*t],  ...
              [0 100],           ...
              [200 100]);
 
plot(t, y,'-o');

