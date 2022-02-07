function [srH, scH] = get_functions()
    fprintf("Hello from function get_functions()\n");
    srH = @sum_rows;
    scH = @sum_cols;
end

function sum_r = sum_rows(a)
    fprintf("Hello from function sum_rows()\n");
    sum_r = sum(a');
end

function sum_c = sum_cols(a)
    fprintf("Hello from function sum_cols()\n");
    sum_c = sum(a);
end