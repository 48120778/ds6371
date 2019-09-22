/* load data */
data seedlingloss;
infile '/folders/myfolders/DS6371/Assignment/Unit4/ex0429.csv' dlm=',' firstobs=2;
input Plot$ Action$ Seedlings2004 Seedlings2005 PercentLost;
run;

proc print data=seedlingloss; run;
/* ODS rtf;  - write to rtf file */

/* check data */
proc univariate data=seedlingloss;
var Seedlings2004 Seedlings2005;
class Action;
histogram Seedlings2004 Seedlings2005;
qqplot Seedlings2004 Seedlings2005;
run;
/* ODS rtf close; */

/* rank-sum test */
proc npar1way data=seedlingloss wilcoxon;
var PercentLost;
class Action;
exact wilcoxon / mc;
run;