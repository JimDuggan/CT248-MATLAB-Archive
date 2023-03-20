% what is a table in MATLAB, and how does it differ from
% an array
% given the following variables, show how the following variable
% can be combined in a table structure
% Age, Gender, Height, Smoker, Weight
% Convert the Gender variable to a string
load patients;

data = table(Age, Gender, Height, Smoker, Weight);

data.Gender = string(data.Gender);




