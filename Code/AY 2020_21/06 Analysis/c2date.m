function d = c2date(str)
  a1 = strrep(str,"T"," ");
  a2 = strrep(a1,"Z","");
  d = datetime(a2);
end

