clear;

 f = @(x,a,b,c) a*x.^2+b*x+c;

 x = -50:50;

 y = f(x,2,4,10);

 plot(x,y);