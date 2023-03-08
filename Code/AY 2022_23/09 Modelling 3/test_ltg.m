clear;

N= 100;
K = 1000000;

r = linspace(.05,.20,N);
time_vec = 0:300;
y_out = zeros(length(time_vec),N);

init_vec = 1000;

for i = 1:N
    [t,y] = ode45(@LTG,time_vec,init_vec,odeset,r(i),K);
    y_out(:,i) = y;
end

plot(t,y_out)

