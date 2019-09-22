data education;
infile '/folders/myfolders/DS6371/Assignment/Unit4/ex0330.csv' dlm=',' firstobs=2;
input Subject Educ Income2005;
run;

proc print data=education;run;

proc sort data=education out=education_sort;
by descending Educ;
run;

proc print data=education_sort;run;

proc ttest alpha=.05 data=education_sort h0=0 sides=U order=data;
var Income2005;
class Educ;
run;