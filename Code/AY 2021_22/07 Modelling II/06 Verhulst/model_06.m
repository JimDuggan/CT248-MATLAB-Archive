function y = model_06(t, x, r, K)
% this aligns well with the actual model
    P = x(1);
    trace(t,P,r,K);
    y=r*x*(1-P/K);
end

function trace(t,P,r,K)
    fprintf("Time = %f\n",t);
    fprintf("x (or P) = %f\n",P);
    fprintf("r = %f\n",r);
    fprintf("1-P/K = %f\n\n",1-P/K);
end