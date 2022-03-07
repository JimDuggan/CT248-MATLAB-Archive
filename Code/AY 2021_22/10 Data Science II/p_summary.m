load patients;

T1 = table(LastName,Height,Gender,Smoker,Systolic,Diastolic);
T1 = T1(1:10,:);

[G,gender] = findgroups(T1.Gender);

mean_height = splitapply(@mean,T1.Height,G);

results = table(gender,mean_height);





