clear;
x = 1:5;
x_bar_test = mean(x);
x_bar = sum(x)/length(x);

x_sd_test = std(x);

x_sd = sqrt(sum((x-x_bar).^2)/(length(x)-1));



