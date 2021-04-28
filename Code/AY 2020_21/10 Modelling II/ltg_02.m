f = @(t,x,r,K) r*x*(1-x/K);
 
r1 = 0.07;
K1 = 100000;

r_vals = linspace(0.01,0.1, 7);

for i = r_vals
  [t,y] = ode45(f, [1 150], 1000, odeset,i,K1);
 
  plot(t, y,'-o');
  hold on;

end
