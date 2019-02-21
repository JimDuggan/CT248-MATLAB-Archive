clear;

[t, y] = ode23(@ode_test, [0:30], ...
                     [0,0,0], odeset(), 2,4,8);  

plot(t, y,'-o');