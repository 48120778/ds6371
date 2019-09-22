/* load data */
data expenditure;
infile '/folders/myfolders/DS6371/Assignment/Unit4/ex0318.csv' dlm=',' firstobs=2;
input group expenditure;
run;

proc print data=expenditure; run;

proc ttest alpha=.05 data=expenditure h0=0 sides=U;
var expenditure;
class group;
run;

/* rank-sum test for p-value */
proc npar1way data=expenditure wilcoxon;
var expenditure;
class group;
exact wilcoxon / mc;
run;

/* Hodges-Lehmann procedure Confidence Interval */
proc npar1way data=expenditure wilcoxon alpha=0.01;
var expenditure;
class group;
exact HL;
run;