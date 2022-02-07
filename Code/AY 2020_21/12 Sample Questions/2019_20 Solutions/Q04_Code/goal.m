function y = goal(t,x)
 
y = [0]; % we have one derivative as the output
 
k      = 0.10;   % insulation constant
GStar = 100;

if t > 100 
    GStar = 20;
end

y = k * (GStar - x(1));
 
end
