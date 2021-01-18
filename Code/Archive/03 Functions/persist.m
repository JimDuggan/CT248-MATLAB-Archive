function persist
persistent counter

if isempty(counter)
    counter = 1;
else
    counter = counter + 1;
end

disp(['The current counter = ' ...
       num2str(counter)]);
