clear;

weather = readtable("weather.xlsx");

weather.datef = c2date(weather.date);

W = table(weather.station, ...
          weather.month, ...
                 weather.day, ...
                 weather.hour,...
                 weather.temp);

W.Properties.VariableNames = {'Station', ...
                              'Month', ...
                              'Day', ...
                              'Hour', ...
                              'Temp'};

DayMin = W(W.Temp==min(W.Temp),:);

q_mh = W.Station=="MACE HEAD" & ...
       W.Month==DayMin.Month & ...
       W.Day==DayMin.Day;

q_da = W.Station=="DUBLIN AIRPORT" & ...
       W.Month==DayMin.Month & ...
       W.Day==DayMin.Day;
 

m_h = W(q_mh,:);
d_a = W(q_da,:);


plot(m_h.Hour,m_h.Temp,"-or");
hold on;
plot(d_a.Hour,d_a.Temp,"-ob");

legend('Mace Head','Dublin Airport');
grid on;
hold off;







mpg = readtable("mpg.xlsx");

mpg = table(string(mpg.manufacturer),...
            string(mpg.model),...
            string(mpg.class),...
            mpg.displ, ...
            mpg.cty);
        
mpg.Properties.VariableNames = {'manufacturer' 'model' 'class' 'displ' 'cty'};

% Select all cars with a displacement greater than the mean
q1 = mpg.displ > mean(mpg.displ);

ans_q1 = mpg(q1,:);

% Select all compact cars
q2 = mpg.class == "compact";
ans_q2 = mpg(q2,:);