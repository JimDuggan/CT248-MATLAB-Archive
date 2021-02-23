function ov = get_odd_values(v1)
%This is a test1
ov = v1(mod(v1,2) ~= 0);
end

