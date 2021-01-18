function o = apply(m, margin, fh)

if margin == 1
   m = m';
end

o = fh(m);

end