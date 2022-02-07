function na = swap_a(a, t, r)
    na = a;
            
    [row,col] = size(na);

    for i = 1:row
        for j = 1:col
            if na(i,j) == t 
                na(i,j) = r;
            end
        end
    end
end
   