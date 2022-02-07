clear;
x = 0:10;

m = 3;
c =10;

% solution 1 ( no function)
y = m*x + c;

f_lin = @(x_vals, m_param, c_param) m_param*x_vals+c_param;

y_test = f_lin(x, m, c);

plot(x,y_test);
