
% Based on https://r4ds.had.co.nz/model-basics.html

clear;
D = readtable("data/sim1.xlsx");

% General form r = a + (b-a).*rand(N,1).
% see https://uk.mathworks.com/help/matlab/ref/rand.html

N = 1000;
% generate random slope values between -5 and +5
beta1 = -5 + (5+5)*rand(N,1);
% generate random intercept values between -5 and +5
beta0 = -20 + (40+20)*rand(N,1);

scatter(D.x, D.y);
hold on;

for i = 1:N
    y_pred = beta0(i) + beta1(i).*D.x;
    plot(D.x, y_pred);
    hold on;
end

