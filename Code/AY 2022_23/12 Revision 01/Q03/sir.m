function y = sir(t,x,beta,gamma)
    y = [0;0;0];
    S = x(1);
    I = x(2);
    R = x(3);
    
    N = sum(x);


    y(1) = -beta/N*S*I;
    y(2) = beta/N*S*I - gamma*I;
    y(3) = gamma*I;

end