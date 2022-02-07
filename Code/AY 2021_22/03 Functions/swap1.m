function na = swap1(a, t, r)
    na = a;

    na(na==t) = r;
end