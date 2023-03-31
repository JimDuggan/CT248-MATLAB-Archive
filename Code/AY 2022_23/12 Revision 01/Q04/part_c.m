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
DayMax = W(W.Temp==max(W.Temp),:);

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

