function [even_v] = even(v)
%Returns a vector with only even values in v

even_v = v(mod(v,2) == 0);

end

