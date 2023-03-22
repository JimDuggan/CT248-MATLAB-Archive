beta = linspace(1,4,30);

gamma = linspace(1/5,1,30);


for i = beta
    for j = gamma
        [t,y] = ode45(@sir, [0 50],[9999 1 0],odeset,i,j);
        plot(t, y(:,2),'-o');
        hold on;
    end
end


