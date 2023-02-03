function [sum_rH, sum_cH] = get_handles()
    sum_rH = @sum_rows;
    sum_cH = @sum_cols;
end

function sr = sum_rows(m)
    sr = sum(m');
end

function sc = sum_cols(m)
    sc = sum(m);
end