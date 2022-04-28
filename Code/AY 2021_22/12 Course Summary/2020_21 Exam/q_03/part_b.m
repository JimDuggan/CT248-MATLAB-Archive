 % show how you would perform the following queries from
% the mpg data set
% explain how the filtering process works


mpg = readtable("mpg.xlsx");

mpg = table(string(mpg.manufacturer),...
            string(mpg.model),...
            string(mpg.class),...
            mpg.displ, ...
            mpg.cty);
        
mpg.Properties.VariableNames = {'manufacturer' 'model' 'class' 'displ' 'cty'};

% Select all cars with a displacement greater than the mean
q1 = mpg.displ > mean(mpg.displ);

ans_q1 = mpg(q1,:);

% Select all compact cars
q2 = mpg.class == "compact";
ans_q2 = mpg(q2,:);

