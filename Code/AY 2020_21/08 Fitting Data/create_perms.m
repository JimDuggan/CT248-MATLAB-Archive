function perms = create_perms(intercepts, slopes)
  perms = zeros(length(intercepts)*length(slopes),2);
  perms(:,1) = repelem(intercepts,length(intercepts));
  
  count =1;
  for i = 1:length(intercepts)
    for j = 1:length(slopes)
        perms(count,2) = slopes(j);
        count=count+1;
    end
  end

end

