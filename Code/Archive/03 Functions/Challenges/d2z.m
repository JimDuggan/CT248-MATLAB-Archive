function [m_out] = d2z(m_in)

m_out = m_in;
% just loop through the columns
for i = 1:size(m_out,2)
    m_out(i,i) = 0;
end