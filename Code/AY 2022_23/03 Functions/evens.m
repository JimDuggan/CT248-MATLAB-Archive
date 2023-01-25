function v_out = evens(v)
% Filters even values from a vector
    v_out = v(mod(v,2)==0);
end