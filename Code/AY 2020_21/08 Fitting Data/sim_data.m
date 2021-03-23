clear;

% Calculate output y based on two parameters and the x values 
% beta_0 is the intercept, beta_1 the slope
model     = @(beta_0, beta_1, x_vals) beta_0 + beta_1.*x_vals;

% residual = obsered value - predicted value
residuals = @(data, model) data - model;



% read in the simulated data (R4Data Science. modelr package)
sim1 = readtable("Sim1.xlsx");

% Plot the data (dependent v independent variable)


plot(sim1.x,sim1.y,"or");
xlim([0 15]);
hold on;

% Explore a section of the parameter space that 
% contains the solution
% Intercept (beta_0) from 4-5
% slope (beta_1) from 1.5 to 2.5
NUM_TRIALS = 3;
intercepts = linspace(4,5,NUM_TRIALS);
slopes = linspace(1.5,2.5,NUM_TRIALS);

% Create permutations for plotting 9 models.
perms = create_perms(intercepts, slopes);

[nr nc] = size(perms);

perms   = [perms zeros(nr,1)];

% Draw the models on teh x-y plot
% Get the quality of each model using "Root mean squared deviation"
for i = 1:nr
    refline(perms(i,2),perms(i,1));
    
    mod_y = model(perms(i,1),perms(i,2),sim1.x);
    diff_y = sim1.y - mod_y;
    rmsd = sqrt(mean(diff_y .^ 2));
    
    perms(i,3) = rmsd;
end



% find the model with the lowest penalty

best_loc = find(perms(:,3) == min(perms(:,3)))

% plot the data and curve
hold off;
plot(sim1.x,sim1.y,"or");
xlim([0 15]);
hold on;

refline(perms(best_loc,2),perms(best_loc,1));


% Use the linear model process to get the line of 
% best fit
mod = fitlm(sim1.x,sim1.y);

% Get the coefficients
disp(mod.Coefficients);
beta_0 = mod.Coefficients.Estimate(1);
beta_1 = mod.Coefficients.Estimate(2);

% Plot as a red line
hold on;
lbf = refline(beta_1,beta_0);
lbf.Color = 'r';


% Compare the residuals
lbf_res = mod.Residuals.Raw;
mod_test = model(beta_0,beta_1,sim1.x);
res_test = residuals(sim1.y,mod_test);






