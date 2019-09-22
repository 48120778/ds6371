/* load data */
data autism;
infile '/folders/myfolders/DS6371/Assignment/Unit4/autism.csv' dlm=',' firstobs=2;
input Child before after;
run;

proc print data=autism; run;

proc ttest data=autism alpha=0.05 side=U;
paired before*after;
run;

