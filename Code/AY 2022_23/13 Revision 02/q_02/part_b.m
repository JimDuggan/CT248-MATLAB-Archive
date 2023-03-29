% part_b. write a function that takes  in a set of exam
% grades, and a summary function. It should then return
% the data with a new column containing the summary function
% If any of the data in a row is zero, then it should be
% assumed that the subject was not taken, and so that data
% point should be excluded from the calculation

function n_m = part_b(m, s_fun)
 [nr, nc] = size(m);
 
 n_m = [m zeros(nr,1)];
 
 for i = 1:nr
     grades = m(i,:);
     valid_grades = grades(grades > 0);
     n_m(i,end) = s_fun(valid_grades); 
 end
 

end