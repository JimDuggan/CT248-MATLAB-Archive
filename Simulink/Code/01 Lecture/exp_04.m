% dp/dt = -rP
f = @(t,x,r) -r*x;
 
r = linspace(0,1,101);

for c = r
  [t,y] = ode45(f, [0 20], 1000,odeset,c);
  plot(t, y,'-o');
  hold on;
end
