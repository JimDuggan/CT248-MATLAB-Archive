clear;

STUDENTS = 10;

% Call rng() function
rng(100);

% Build sample results
CX100 = randi([50 90],STUDENTS,1);
CX101 = randi([40 80],STUDENTS,1);
CX102 = randi([45 75],STUDENTS,1);
CX103 = randi([25 90],STUDENTS,1);
CX104 = randi([60 80],STUDENTS,1);

% Create three new column vectors, and initialise
MinG = zeros(STUDENTS,1);
MaxG = zeros(STUDENTS,1);
MeanG = zeros(STUDENTS,1);

% Create a 2 dimensional array/matrix
Full1 = [CX100 CX101 CX102 CX103 CX104 MinG MaxG MeanG];

for i = 1:STUDENTS
    Full1(i,6) = min(Full1(i,1:5));
    Full1(i,7) = max(Full1(i,1:5));
    Full1(i,8) = mean(Full1(i,1:5));
end


Data = Full1(:,1:5);







