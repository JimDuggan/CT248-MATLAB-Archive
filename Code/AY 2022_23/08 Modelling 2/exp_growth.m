function dp_dt = exp_growth(t,x,r)
    P = x;

    % fprintf("Time = %f, P = %f, r = %f\n",t,P,r);

    dp_dt = r * P;

end