function o = swap1(in, target, replace)
    o = in;
    [r, c] = size(in);

    for i = 1:r
        for j = 1:c
            if o(i,j) == target
                o(i,j) = replace;
            end
        end
    end
end