f = @(x,a,b,c)(a*x.^2+b*x+c)'

y = f(-10:.1:10, 3, 4, 5);

plot(-10:.1:10,y)