/* Generated Code (IMPORT) */
/* Source File: age_discrimination.csv */
/* Source Path: /folders/myfolders/DS6371/Assignment/Unit2 */
/* Code generated on: 9/4/19, 12:25 AM */

%web_drop_table(WORK.age_discrimination);


FILENAME REFFILE '/folders/myfolders/DS6371/Assignment/Unit2/age_discrimination.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.age_discrimination;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.age_discrimination; RUN;
%web_open_table(WORK.age_discrimination);

proc print data=work.age_discrimination;run;

proc ttest alpha=.05 data=work.age_discrimination h0=0 sides=2;
class type;
var age;
run;

/* 45.7727 | 43.9333 */
proc power;
twosamplemeans test=diff_satt alpha=.05 sides=2 meandiff=1.8394 stddev=6.0955 power=0.8 ntotal= . ;
plot x=effect min=0.5 max=2;
run;

proc power;
twosamplemeans test=diff_satt alpha=.05 sides=2 meandiff=1.8394 stddev=6.0955 power=0.8 0.7 0.6 ntotal= . ;
plot x=effect min=0.5 max=2;
run;

proc power;
twosamplemeans test=diff_satt alpha=.05 sides=2 meandiff=1.8394 stddev=6.0955 power=0.8 0.6 ntotal= . ;
plot x=effect min=0.8 max=0.8;
run;
