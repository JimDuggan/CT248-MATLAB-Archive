clear;

STUDENTS = 10;
rng(100)
CX100 = randi([50 90],10,1);
CX101 = randi([40 80],10,1);
CX102 = randi([45 75],10,1);
CX103 = randi([25 90],10,1);
CX104 = randi([60 80],10,1);

% SHow how to access elemenst CX100(1), CX100(1:10)

MinG   = zeros(STUDENTS,1);
MaxG   = zeros(STUDENTS,1);
MeanG  = zeros(STUDENTS,1);

Full1  = [CX100 CX101 CX102 CX103 CX104 MinG MaxG MeanG];
Full2  = [CX100 CX101 CX102 CX103 CX104 MinG MaxG MeanG];

% With a loop
for i = 1:STUDENTS
    
    Full1(i,6) = min(Full1(i,1:5));
    Full1(i,7) = max(Full1(i,1:5));
    Full1(i,8) = mean(Full1(i,1:5));
   
end

% Using vectorisation, see how that If X is a matrix,
% the result is a row vector containing the minimum element from each column

Full2 = Full2';
Full2(6,:) = min(Full2(1:5,:));
Full2(7,:) = max(Full2(1:5,:));
Full2(8,:) = mean(Full2(1:5,:));

Full2 = Full2';

Check = Full1 - Full2;
