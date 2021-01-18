clear;
N = 10;
ids = (1:N)';

mean1 = 55;  sd1 = 5;
mean2 = 79;  sd2 = 8;
mean3 = 46;  sd3 = 15;
mean4 = 85;  sd4 = 20;
mean5 = 67;  sd5 = 2;
mean6 = 54;  sd6  = 40;

rng(100);
sub1 =  sd1 .* randn(N,1 ) + mean1;
sub2 =  sd2 .* randn(N,1 ) + mean2;
sub3 =  sd3 .* randn(N,1 ) + mean3;
sub4 =  sd4 .* randn(N,1 ) + mean4;
sub5 =  sd5 .* randn(N,1 ) + mean5;
sub6 =  sd6 .* randn(N,1 ) + mean6;

subplot(2,3,1); histogram(sub1);title('Subject N(55,5)');
subplot(2,3,2); histogram(sub2);title('Subject N(79,8)');
subplot(2,3,3); histogram(sub3);title('Subject N(46,15)');
subplot(2,3,4); histogram(sub4);title('Subject N(85,20)');
subplot(2,3,5); histogram(sub5);title('Subject N(67,2)');
subplot(2,3,6); histogram(sub6);title('Subject N(54,40)');


% create results matrix
res = [sub1 sub2 sub3 sub4 sub5 sub6];
disp(['Initial simulated data...']);
disp(res);

% Remove outliers (> 100 )
res(res > 100) = 100;

disp(['Modifying outliers > 100...']);
disp(res);

% Remove outliers (< 0 )
res(res < 0) = 0;
disp(['Modifying outliers < 0...']);
disp(res);

% Add the ids column
res = [ids res];
disp(['Added ids column']);
disp(res);

% add columns for average and grade
res = [res zeros(N,2)];
disp(['Added columns for average and grade']);
disp(res);

% Add mean mark for each student
for i = 1: N
    res(i,8) = mean(res(i,2:7));
end

disp(['Added the mean mark..']);
disp(res);

% Add the grade for each student
for i = 1: N
   if res(i,8) < 40
       res(i,9) = 5;
   elseif res(i,8) < 50
       res(i,9) = 4;
   elseif res(i,8) < 60
       res(i,9) = 3;
   elseif res(i,8) < 70
       res(i,9) = 2;
   else
       res(i,9) = 1;
   end
end

disp(['Added the grade..']);
disp(res);

% Create a frequency table for overall grades

grades = sort(unique(res(:,9)));
freq     = zeros(1,length(grades));

for i = 1:length(grades)
    freq(i) = sum(res(:,9) == grades(i));
end

disp(['Frequency Table for Grades']);
disp(grades');
disp(freq);













