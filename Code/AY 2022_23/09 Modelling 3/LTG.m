function dp_dt = LTG(t,x,r,K)
   P = x(1);

   dp_dt = r * P * (1 - P/K);
   
end