/* load data */
data seedlingloss;
infile '/folders/myfolders/DS6371/Assignment/Unit4/ex0429.csv' dlm=',' firstobs=2;
input Plot$ Action$ Seedlings2004 Seedlings2005 PercentLost;
run;

proc print data=seedlingloss; run;

/* Confidence Interval for the Location Parameter (Median) */
/* Hodges Lehman Confidence Interval */
proc npar1way data=seedlingloss wilcoxon alpha=0.01;
var PercentLost;
class Action;
exact HL;
run;