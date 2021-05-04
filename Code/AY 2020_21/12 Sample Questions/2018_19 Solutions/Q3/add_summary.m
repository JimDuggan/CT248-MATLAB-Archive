function mout = add_summary(m, margin, fH)

   if margin == 1
      tm = m';
   else
       tm = m;
   end
   
   new_d = fH(tm);
   
   if margin == 1
      mout = [m new_d'];
   else
      mout = [m; new_d];
   end
   
end
