clear;
load patients;

T1 = table(LastName,Height,Gender,Smoker,Systolic,Diastolic);
T1_sub = T1(1:10,:);

[G,smoker] = findgroups(T1_sub.Smoker);

median_systolic = splitapply(@median,T1_sub.Systolic,G);

results = table(smoker,median_systolic);

[G,smoker] = findgroups(T1.Smoker);
median_systolic = splitapply(@median,T1.Systolic,G);

boxplot(T1.Systolic, T1.Smoker);




