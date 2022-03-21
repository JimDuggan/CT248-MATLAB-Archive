function q = get_quarter_simple(m)
       if m  <= 3 
        q  = 1;
    elseif m  <= 6
        q = 2;
    elseif m <= 9
        q = 3;
    else
        q = 4;
    end
end

    