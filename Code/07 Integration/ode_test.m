function [y] = ode_test(t,x,a,b,c)
   y = [0;0;0];
   y(1) = a*t;
   y(2) = b*t;
   y(3) = c* t;
end
