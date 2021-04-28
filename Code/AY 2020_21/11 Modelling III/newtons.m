% dT/dt = k (Te - t)
f = @(t,x,Tenv,k) (Tenv - x) * k;
 

r = linspace(0,1,10);


for v = r
 
    [t,y] = ode45(f, 0:.5:50, 80,odeset,20,v);
    plot(t, y,'-o');
    hold on;

end
