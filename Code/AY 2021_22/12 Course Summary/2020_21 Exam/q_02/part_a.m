% Given that, in an M file,  subfunctions, and are visible only to the primary function 
% modify this m file so that the subfunction my_sum can be accessed from
% the main workspace
% File name part_a.m
function [s,f] = part_a(m)

  s = my_sum(m);
  f = @my_sum;
   
end

function ms = my_sum(m)

  ms = sum(m);
end



