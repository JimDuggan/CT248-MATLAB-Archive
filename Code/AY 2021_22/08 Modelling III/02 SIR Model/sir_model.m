function y = sir_model(t, x)
    global beta;  % to be defined in the workspace
    global gamma; % to be defined in the workspace

    y = [0;0;0];

    S = x(1);   % dS/dt = - beta * I * S/N
    I = x(2);   % dI/dt =   Beta * I * S/N - gamma * I
    R = x(3);   % dR/dt =   gamma * I

    N = S + I + R;

    y(1) = - beta * I * S/N;
    y(2) =   beta * I * S/N - gamma * I;
    y(3) =   gamma * I;

end