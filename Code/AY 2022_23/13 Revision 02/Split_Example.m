exams = readtable("ExamDataNarrow.csv");

exams.StudentID = string(exams.StudentID);
exams.Subject= string(exams.Subject);

[G,Students] = findgroups(exams.StudentID);

avr = splitapply(@mean,exams.Grade,G);
min_g = splitapply(@min,exams.Grade,G);
max_g = splitapply(@max,exams.Grade,G);

student_summary = table(Students,avr,min_g,max_g);

