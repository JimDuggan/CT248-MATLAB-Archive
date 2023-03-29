% (c) write a script that will explore the following scenario
% Assume that a remains at 0.10
% explore and plot 100 model runs where b is [0,1]
% and plot the number of adopters
% what is significant about the value for b, and under what 
% circumstances will the number of adopters grown and remain
% at 10000

f = @(t,x,a,b)[-a*x(1);
                a*x(1)-b*x(2);
                b*x(2)]

a = 0.10;
b = linspace(0,1,100);

for i = b
    [t, y] = ode45(f,[1 100], [10000 0 0], odeset,a, i);
    plot(t,y(:,2));
    hold on;
end
