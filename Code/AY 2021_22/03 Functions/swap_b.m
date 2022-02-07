function na = swap_b(a, t, r)
    na = a;
    na(na==t) = r;
end