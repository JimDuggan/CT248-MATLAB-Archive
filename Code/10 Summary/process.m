function [mn,mx] = process(a)
   a_t = a';
   
   mn = min(a_t);
   mx = max(a_t);
   
   mn = mn';
   mx = mx';

end
