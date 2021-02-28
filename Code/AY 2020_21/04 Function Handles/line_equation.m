%Write an anonymous function that returns the response to the equation of a line
%Inputs should be:
%An x vectors of line points
%The slope of the line (m)
%The intercept (c)
%Plot the results on a graph
clear;

lm = @(x1,m1,c1) m1.*x1 + c1;


x = 1:20;
m = 1.5;
c = 4;
m2 = 1;

y = lm(x,m,c);

plot(x,y);

hold on;
y1 = lm(x,m2,c);
plot(x,y1);

y3 = lm(x,m2,0);
plot(x,y3);





