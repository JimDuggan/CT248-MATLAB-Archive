function [v1,v2] = get_gt_mean(v)
%This function returns values greater than mean

lv = v > mean(v);
% We would add error checking too
v1 = v(lv);
v2 = v(~lv);
end

