function summary = summarise(data, by, column, func)


my_group = table2array(unique(data(:,by)));
summary  = zeros(length(my_group),1);

for i = 1:length(my_group)
    % extract the data
    lv = data{:,by} == my_group(i);
    target = table2array(data(lv,column));
    summary(i) = func(target);
end


end

