
% Based on the mpg data set, show how the following
% diagram can be generated. The x axis is displ, the y is cty
% use the function fitlm(), and explain what this function does

% is teh relationship a positive on or a negative one?

mpg = readtable("mpg.xlsx");

mpg = table(string(mpg.manufacturer),...
            string(mpg.model),...
            string(mpg.class),...
            mpg.displ, ...
            mpg.cty);
        
mpg.Properties.VariableNames = {'manufacturer' 'model' 'class' 'displ' 'cty'};


%LM = fitlm(X,Y) fits a linear regression model using the column vector
%    Y as a response variable and the columns of the matrix X as predictor
%    variables, and returns the linear model LM.

mod = fitlm(mpg.displ,mpg.cty);

% Get the coefficients
disp(mod.Coefficients);
beta_0 = mod.Coefficients.Estimate(1);
beta_1 = mod.Coefficients.Estimate(2);

% Plot as a red line
plot(mpg.displ,mpg.cty,"or");
hold on;
lbf = refline(beta_1,beta_0);
lbf.Color = 'r';
