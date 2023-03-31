exams = readtable("ExamDataNarrow.csv");

exams.StudentID = string(exams.StudentID);
exams.Subject= string(exams.Subject);

[G,Students] = findgroups(exams.StudentID);

avr = splitapply(@mean,exams.Grade,G);


min_g = splitapply(@min,exams.Grade,G);
max_g = splitapply(@max,exams.Grade,G);

student_summary = table(Students,avr,min_g,max_g);


[G1,Subjects] = findgroups(exams.Subject);

avr = splitapply(@mean,exams.Grade,G1);


min_g = splitapply(@min,exams.Grade,G1);
max_g = splitapply(@max,exams.Grade,G1);

subject_summary = table(Subjects,avr,min_g,max_g);

