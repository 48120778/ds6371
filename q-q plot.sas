data instate;
input datain;
datalines;
1000
4000
5000
8000
40000
;
proc print data=instate; run;
proc ttest ; run;

data outofstate;
input dataout;
datalines;
3000
8000
30000
32000
40000
;
proc print data=outofstate; run;
proc ttest ; run;
