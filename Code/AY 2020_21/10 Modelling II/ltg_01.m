% dp/dt = rP(1-P/K)
% r = 0.07
% K = 100000
% P(0) = 1000


f = @(t,x) 0.07*x*(1-x/100000);
 
[t,y] = ode45(@LTG, [1 150], 1000);
 
plot(t, y,'-o');
