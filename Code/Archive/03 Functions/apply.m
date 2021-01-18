function o1 = apply(m, code, f)

if code == 1
   m = m';
end

o1 = f(m);

end