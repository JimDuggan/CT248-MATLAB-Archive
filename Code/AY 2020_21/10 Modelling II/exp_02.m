f = @(t,x,r) r*x;
 

r = linspace(0.005,0.030,10);

for c = r
  [t,y] = ode45(f, [1960 2010], 3e9,odeset,c);
  plot(t, y,'-o');
  hold on;
end

