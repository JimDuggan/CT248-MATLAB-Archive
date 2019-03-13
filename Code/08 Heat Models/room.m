function dT_dt = room(t,x,Te,k)
    dT_dt = [0];
    
    if (t >= 12)
        Te = 3*t - 46;
    end
    
    fprintf("At time %f the outside temp = %f\n",t,Te);
    
    dT_dt = k*(Te - x);
end
    
    