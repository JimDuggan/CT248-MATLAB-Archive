function [y] = thermostat_model(t,x)


y = [0]; % we have one derivative as the output

k      = 0.10;   % insulation constant
Te    = -20.0;   % Outside temperature
Tg    = 20.0;    % Initial temperature
l       = 0.75;    % Heater efficiency


if(mod(floor(t),3) == 0) 
    HeatOn=1;
else
    HeatOn=0;
end

disp([t HeatOn]);
y = (Te - x)*k + (Tg - x) * l *HeatOn;

end
