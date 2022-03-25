% An example to show how aggregating data on **two groups** can be performed
%
% For 2 days in the year, two stations are explored
% This is a total of 96 records (24x2x2)
%
% We want to get the sum of rainfall by station and daynumber
% This gives 4 results: (Station 1, Day 1)(Station 1, Day 2)
%                                  (Station 2, Day 1)(Station 2, Day 2)
%
% The number of results is dependent on the number of unique values for
% each group. Here is will be 2 stations x 2 Days = 4
%
% We use findgroups() and splitapply()
%
% This approach can work over much larger data sets
%

clear;

a17 = readtable("aimsir17.csv");

% find the rainiest hour in the year
% See https://www.rte.ie/news/ireland/2017/0904/902231-malin-head-wet-august/ 

q = a17(a17.rain == max(a17.rain),:);

% get the data for that day and the previous day for 2 station
a17_sub = a17((a17.station=="MALIN HEAD" | a17.station == "DUBLIN AIRPORT" ) & ...
                         a17.month==8 & ...
                         (a17.day==22 | a17.day==21),:);


[G, Station, DayNumber] = findgroups(a17_sub.station, a17_sub.DayNumber);

TotalRain = splitapply(@sum,a17_sub.rain,G);

test1 = sum(a17_sub{1:24,6});
test2 = sum(a17_sub{25:48,6});
test3 = sum(a17_sub{49:72,6});
test4 = sum(a17_sub{73:96,6});

TestResults = [test1;test2;test3;test4];

res = table(Station, DayNumber, TotalRain, TestResults);

% for the full data set
a17_c = a17(~isnan(a17.rain),:);
[G, Station, DayNumber] = findgroups(a17_c.station, a17_c.DayNumber);

TotalRain = splitapply(@sum,a17_c.rain,G);

res_all = sortrows(table(Station, DayNumber, TotalRain),'TotalRain','descend');




