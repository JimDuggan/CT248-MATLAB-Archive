function y = goal(t,x)
 
y = [0]; % we have one derivative as the output
 
k      = 0.10;   % insulation constant
GStar = 100;

y = k * (GStar - x(1));
 
end
