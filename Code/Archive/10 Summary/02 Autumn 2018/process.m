function o = process(a, v)

   log_vec = a > v;
   
   o = a .* log_vec;

end