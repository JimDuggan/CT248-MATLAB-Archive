model     = @(beta_0, beta_1, x_vals) beta_0 + beta_1.*x_vals;

% residual = observed value - predicted value
residuals = @(data, model) data - model;


x = 0:10;
b = 3;
a = 1.5;

y = model(b,a,x);

plot(x,y,"o-");
ylim([0,30]);
grid;