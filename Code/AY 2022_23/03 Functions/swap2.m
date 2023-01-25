function o = swap2(in, target, replace)
   o = in;
   o(o==target) = replace;
end