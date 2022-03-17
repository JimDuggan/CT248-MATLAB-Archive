clear;

% Add a new column to mpg that contains ratio of the number of cylinders (cyl) 
% to the displacement (displ) for each car.

% What kind of operator do you think needs to be used and why?

mpg = readtable("mpg.xlsx");
mpg.manufacturer = string(mpg.manufacturer);
mpg.model = string(mpg.model);

mpg.cyl_displ_ratio = mpg.cyl ./ mpg.displ;

cyl = mpg.cyl;
displ = mpg.displ;
