clear;

line_f = @(m,c)@(x)m.*x+c;

m = [-10:0.1:-0.2 0.2:0.1:10];

for i = m
    f = line_f(i,0);
    plot(m,f(m));
    hold on
end
