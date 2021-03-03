clear;

% y = ax**2 + bx + c
a = 2;
b = 10;
c = -10;

x = -100:.1:100;

f_quad = @(x,a1,b1,c1) a1 * x.^2 + b1*x + c1;

% y1 = a * x.^2 + b*x + c;
y1 = f_quad(x,a,b,c);

for i = 1:10
    y = f_quad(x,i,b,c);
    plot(x,y);
    hold on;
end



