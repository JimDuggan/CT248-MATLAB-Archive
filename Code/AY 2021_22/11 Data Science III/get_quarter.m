function q = get_quarter(m)
   q = zeros(height(m),1);

   for i = 1:height(m)
       if m (i) <= 3 
        q(i) = 1;
    elseif m(i) <= 6
        q(i) = 2;
    elseif m(i) <= 9
        q(i)=3;
    else
        q(i)=4;
    end

   end

    
    
end