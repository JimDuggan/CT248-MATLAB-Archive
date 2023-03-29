% (a) describe the workings of the following line
% of code, and 
% What are the advantages and disadvantges of anonymous
% functions

f = @(m1, m2)[min(m1) min(m2);
              max(m1) max(m2);
              sum(m1) sum(m2)];
          

m1 = 1:10;
m2 = 11:20;

res = f(m1,m2);