model = @(t,x,k)[k*(x(2)-x(1));k*(x(1)-x(2))];


[t, y] = ode45(model, [0:240], [100 50],...
                       odeset, 0);

 plot(t, y,'-o');
 