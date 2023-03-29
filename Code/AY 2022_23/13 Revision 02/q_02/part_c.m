% part c
% What are the advantages of using an anyonmous function
% write an anonmous function that returns the values
% less than the median, and the values greater than 
% the median
% 

f = @(v) [v(v<median(v));
          v(v>median(v))]
      
f(1:10)