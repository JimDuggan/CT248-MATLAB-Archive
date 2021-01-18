clear;


f = @(m,c)@(x)m.*x+c;

f1 = f(2,10);


x = 0:10;

y = f1(x);

plot(x,y);

hold on

f2 = f(1.5,10);
y = f2(x);
plot(x,y);






 
 
 