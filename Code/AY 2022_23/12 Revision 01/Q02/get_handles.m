function [h1, h2] = get_handles()
    h1 = @add_rows;
    h2 = @add_cols;
end

function m_out= add_rows(m_in, fh)
    sum_r = fh(m_in');
    m_out = [m_in sum_r'];
end

function m_out= add_cols(m_in, fh)
    sum_r = fh(m_in);
    m_out = [m_in; sum_r];
end