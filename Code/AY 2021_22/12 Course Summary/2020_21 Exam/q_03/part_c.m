% using the following example, explain (using a diagram) how the splitapply process 
% works. assume you wnat to get the average cty for toyota and
% volkswagen.
% show the splitapply code too

mpg = readtable("mpg_compact.xlsx");

mpg = table(string(mpg.manufacturer),...
            string(mpg.model),...
            string(mpg.class),...
            mpg.displ, ...
            mpg.cty);
        
mpg.Properties.VariableNames = {'manufacturer' 'model' 'class' 'displ' 'cty'};

% show how you would create the following results table

[G,manufacturer] = findgroups(mpg.manufacturer);

mean_cty = splitapply(@mean,mpg.cty,G);

results = table(manufacturer,mean_cty);


