function dV_dt = new_variant(t, x, r)
% This model will run logistic growth to model 
% the spread of a  new variant

% The model is dV/dt = r*V*(1-V/100)
    V = x(1);

    dV_dt = r * V *(1-V/100);

end