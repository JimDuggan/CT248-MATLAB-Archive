function y = model_04(t, x, r)
    fprintf("r=%f t = %f\n P=%f\n",r,t,x(1));
    y = r*x;
end