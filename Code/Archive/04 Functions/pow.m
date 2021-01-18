function [powH, getH,setH] = pow(n)

function o1 = f(x)
    o1 =  x.^n;
end

function o2 = get()
   o2 = n;
end

function [] = setN(n1)
   n = n1;
end

powH = @f;
getH   = @get;
setH   = @setN;
end

