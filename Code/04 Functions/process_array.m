function [r_min, r_max] = process_array(m)

[r,c] = size(m);

% setup the output variables, size is the number of rows.
r_min = zeros(r,1);
r_max = zeros(r,1);

% process array row by row
for i = 1:r
  r_min(i) = get_min(m(i,:));
  r_max(i) = get_max(m(i,:));
end

end

function r_min = get_min(r)
% example of a local function to get the min
  r_min = r(1);
  for i = 2:length(r)
       if r(i) < r_min 
          r_min = r(i); 
      end
  end

end

function r_max = get_max(r)
% example of a local function to get the max
  r_max = r(1);
  for i = 2:length(r)
       if r(i) > r_max 
          r_max = r(i); 
      end
  end

end


