function y = model_01(t, x)
    persistent counter; 
    if isempty(counter)
        counter = 1;
    else
        counter = counter + 1;
    end

    fprintf("Calling model_01 T=%f x=%f Counter=%d\n",t,x,counter);
    y = 10;
end