f = @(t,x,k) ((20+10*sin(2*pi*t/24)) - x) * k;
 
[t,y] = ode45(f, 0:.5:200, 20,odeset,0.5);

plot(t, y,'-o');

