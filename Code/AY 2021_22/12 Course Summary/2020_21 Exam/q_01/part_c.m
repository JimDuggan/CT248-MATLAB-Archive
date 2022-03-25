% (c) Generate the following plot for a cubic equation.
% The x value consists of 100 equally space points 
% between -10 and + 10. Assume a = 2, b = -2, c = 5 and d = 100
%
% write a command that finds the value of y when x is closest to
% 0 and draws this point on the graph.
% 
% Outline the benefits of element-wise operators in MATLAB

x = linspace(-10,10,1000);

a = 10;
b = -20;
c = 45;
d = 100;

y = a*x.^3 + b*x.^2 + c*x + d;

plot(x,y);

hold all;

close_value = min(abs(x));

x_loc = find(x==close_value);
x_val = x(x_loc);
y_val = y(x_loc);
plot(x_val,y_val,"o");
grid;



