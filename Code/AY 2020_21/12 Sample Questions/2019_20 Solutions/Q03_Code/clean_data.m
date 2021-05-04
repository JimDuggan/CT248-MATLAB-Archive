function cm = clean_data(m, fh)
cm = m;
err = fh(cm);

cm(err) = 0;

end