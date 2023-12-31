options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79_financial_supplement.dat' lrecl=186 missover DSD DLM=' ' print;
input
  R0000100
  R0173600
  R0214700
  R0214800
  R2736100
  R2736201
  R2983600
  R2983701
  R3294000
  R3294101
  R3911700
  R3911801
  R4393100
  R4393201
  R5047900
  R5048001
  R5729300
  R5729401
  R6427300
  R6427401
  R6946100
  R6946201
  R8365400
  R8376100
  R8376400
  T2129100
  T2139800
  T2140100
  T4030400
  T4042600
  T4042900
  T5668100
  T5681500
  T5681800
  X0045800
  X0045900
  X0061200
  X0061300
  X0061400
  X0061500
  X0062000
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -4 then nvarlist = .V;  /* Valid missing */
  if nvarlist = -5 then nvarlist = .N;  /* Non-interview */
end;

  label R0000100 = "ID# (1-12686) 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R2736100 = "R/SP HAVE STOCK/BONDS/MUTUAL FUNDS 88";
  label R2736201 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R2983600 = "R/SP HAVE STOCK/BONDS/MUTUAL FUNDS 89";
  label R2983701 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R3294000 = "R/SP HAVE STOCK/BONDS/MUTUAL FUNDS 90";
  label R3294101 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R3911700 = "R/SP HAVE STOCK/BONDS/MUTUAL FUNDS 92";
  label R3911801 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R4393100 = "R/SP HAVE COMMON STOCK,BONDS? 93";
  label R4393201 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R5047900 = "R/SP HAVE COMMON STOCK,BONDS? 94";
  label R5048001 = "MKT VAL OF STOCKS,BONDS R-SP HAVE (TRUNC)";
  label R5729300 = "R/SP HAVE COMMON STOCK,BONDS? 96";
  label R5729401 = "MKT VAL OF STOCKS,BONDS R-SP HAVE 96";
  label R6427300 = "R/SP HAVE COMMON STOCK,BONDS? 1998";
  label R6427401 = "MKT VAL OF STOCKS,BONDS R-SP HAVE 1998";
  label R6946100 = "R/SP HAVE COMMON STOCK,BONDS? 2000";
  label R6946201 = "MKT VAL OF STOCKS,BONDS R-SP HAVE 2000";
  label R8365400 = "R-SPOUSE OWN MUTUAL FUNDS 2004";
  label R8376100 = "R-SPOUSE OWN ANY SHARES OF STOCK 2004";
  label R8376400 = "AMT R-SP HAVE IF SOLD/PAY STOCKS 2004";
  label T2129100 = "R-SPOUSE OWN MUTUAL FUNDS 2008";
  label T2139800 = "R-SPOUSE OWN ANY SHARES OF STOCK 2008";
  label T2140100 = "AMT R-SP HAVE IF SOLD/PAY STOCKS 2008";
  label T4030400 = "R-SPOUSE OWN MUTUAL FUNDS 2012";
  label T4042600 = "R-SPOUSE OWN ANY SHARES OF STOCK 2012";
  label T4042900 = "AMT R-SP HAVE IF SOLD/PAY STOCKS 2012";
  label T5668100 = "R-SPOUSE OWN MUTUAL FUNDS 2016";
  label T5681500 = "R-SPOUSE OWN ANY SHARES OF STOCK 2016";
  label T5681800 = "AMT R-SP HAVE IF SOLD/PAY STOCKS 2016";
  label X0045800 = "R EVER OWNED A BUSINESS XRND";
  label X0045900 = "NUMBER OF BUSINESSES R EVER OWNED XRND";
  label X0061200 = "ANY R FAM MEM EVER OWNED A BUS PRIOR TO ACQ R BUS XRND";
  label X0061300 = "ANY OF R FAMILY MEMBERS EVER OWED A BUS XRND";
  label X0061400 = "R WRK FOR ANY OF THOSE FAM MEM PRIOR ACQ R BUS XRND";
  label X0061500 = "R WORKED FOR ANY OF THOSE FAMILY MEMBERS XRND";
  label X0062000 = "R CONSIDERS R TO BE AN ENTREPRENEUR XRND";

/*---------------------------------------------------------------------*
 *  Crosswalk for Reference number & Question name                     *
 *---------------------------------------------------------------------*
 * Uncomment and edit this RENAME statement to rename variables
 * for ease of use.  You may need to use  name literal strings
 * e.g.  'variable-name'n   to create valid SAS variable names, or 
 * alter variables similarly named across years.
 * This command does not guarantee uniqueness

 * See SAS documentation for use of name literals and use of the
 * VALIDVARNAME=ANY option.     
 *---------------------------------------------------------------------*/
  /* *start* */

* RENAME
  R0000100 = 'CASEID_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R2736100 = 'Q13-124_1988'n
  R2736201 = 'Q13-125_REVISED_1988'n
  R2983600 = 'Q13-124_1989'n
  R2983701 = 'Q13-125_REVISED_1989'n
  R3294000 = 'Q13-124_1990'n
  R3294101 = 'Q13-125_REVISED_1990'n
  R3911700 = 'Q13-124_1992'n
  R3911801 = 'Q13-125_REVISED_1992'n
  R4393100 = 'Q13-124_1993'n
  R4393201 = 'Q13-125_REVISED_1993'n
  R5047900 = 'Q13-124_1994'n
  R5048001 = 'Q13-125_REVISED_1994'n
  R5729300 = 'Q13-124_1996'n
  R5729401 = 'Q13-125_REVISED_1996'n
  R6427300 = 'Q13-124_1998'n
  R6427401 = 'Q13-125_REVISED_1998'n
  R6946100 = 'Q13-124_2000'n
  R6946201 = 'Q13-125_REVISED_2000'n
  R8365400 = 'FA_4_2004'n
  R8376100 = 'FA_9_2004'n
  R8376400 = 'FA_9A_TRUNC_2004'n
  T2129100 = 'FA_4_2008'n
  T2139800 = 'FA_9_2008'n
  T2140100 = 'FA_9A_TRUNC_2008'n
  T4030400 = 'FA_4_2012'n
  T4042600 = 'FA_9_2012'n
  T4042900 = 'FA_9A_TRUNC_2012'n
  T5668100 = 'FA_4_2016'n
  T5681500 = 'FA_9_2016'n
  T5681800 = 'FA_9A_TRUNC_2016'n
  X0045800 = 'BUSOWN-1_XRND'n
  X0045900 = 'BUSOWN-2_XRND'n
  X0061200 = 'BUSOWN-23A_XRND'n
  X0061300 = 'BUSOWN-23B_XRND'n
  X0061400 = 'BUSOWN-24A_XRND'n
  X0061500 = 'BUSOWN-24B_XRND'n
  X0062000 = 'BUSOWN-29_XRND'n
;
  /* *finish* */

run;

proc means data=new_data n mean min max;
run;


/*---------------------------------------------------------------------*
 *  FORMATTED TABULATIONS                                              *
 *---------------------------------------------------------------------*
 * You can uncomment and edit the PROC FORMAT and PROC FREQ statements 
 * provided below to obtain formatted tabulations. The tabulations 
 * should reflect codebook values.
 * 
 * Please edit the formats below reflect any renaming of the variables
 * you may have done in the first data step. 
 *---------------------------------------------------------------------*/

/*
proc format; 
value vx1f
  1='CROSS MALE WHITE'
  2='CROSS MALE WH. POOR'
  3='CROSS MALE BLACK'
  4='CROSS MALE HISPANIC'
  5='CROSS FEMALE WHITE'
  6='CROSS FEMALE WH POOR'
  7='CROSS FEMALE BLACK'
  8='CROSS FEMALE HISPANIC'
  9='SUP MALE WH POOR'
  10='SUP MALE BLACK'
  11='SUP MALE HISPANIC'
  12='SUP FEM WH POOR'
  13='SUP FEMALE BLACK'
  14='SUP FEMALE HISPANIC'
  15='MIL MALE WHITE'
  16='MIL MALE BLACK'
  17='MIL MALE HISPANIC'
  18='MIL FEMALE WHITE'
  19='MIL FEMALE BLACK'
  20='MIL FEMALE HISPANIC'
;
value vx2f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx3f
  1='MALE'
  2='FEMALE'
;
value vx4f
  0='NO'
  1='YES'
;
value vx5f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-9999999='150000 TO 9999999: 150000+'
;
value vx6f
  0='NO'
  1='YES'
;
value vx7f
  0='0'
  1-499='1 TO 499'
  500-999='500 TO 999'
  1000-1499='1000 TO 1499'
  1500-1999='1500 TO 1999'
  2000-2499='2000 TO 2499'
  2500-2999='2500 TO 2999'
  3000-3499='3000 TO 3499'
  3500-3999='3500 TO 3999'
  4000-4499='4000 TO 4499'
  4500-4999='4500 TO 4999'
  5000-9999999='5000 TO 9999999: 5000+'
;
value vx8f
  0='NO'
  1='YES'
;
value vx9f
  0='0'
  1-499='1 TO 499'
  500-999='500 TO 999'
  1000-1499='1000 TO 1499'
  1500-1999='1500 TO 1999'
  2000-2499='2000 TO 2499'
  2500-2999='2500 TO 2999'
  3000-3499='3000 TO 3499'
  3500-3999='3500 TO 3999'
  4000-4499='4000 TO 4499'
  4500-4999='4500 TO 4999'
  5000-9999999='5000 TO 9999999: 5000+'
;
value vx10f
  0='NO'
  1='YES'
;
value vx11f
  0='0'
  1-499='1 TO 499'
  500-999='500 TO 999'
  1000-1499='1000 TO 1499'
  1500-1999='1500 TO 1999'
  2000-2499='2000 TO 2499'
  2500-2999='2500 TO 2999'
  3000-3499='3000 TO 3499'
  3500-3999='3500 TO 3999'
  4000-4499='4000 TO 4499'
  4500-4999='4500 TO 4999'
  5000-9999999='5000 TO 9999999: 5000+'
;
value vx12f
  0='NO'
  1='YES'
;
value vx13f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-9999999='150000 TO 9999999: 150000+'
;
value vx14f
  0='NO'
  1='YES'
;
value vx15f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx16f
  0='NO'
  1='YES'
;
value vx17f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx18f
  0='NO'
  1='YES'
;
value vx19f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx20f
  0='NO'
  1='YES'
;
value vx21f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx22f
  0='No'
  1='Yes'
;
value vx23f
  0='No'
  1='Yes'
;
value vx24f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-9999999999='150000 TO 9999999999: 150000+'
;
value vx25f
  0='No'
  1='Yes'
;
value vx26f
  0='No'
  1='Yes'
;
value vx27f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx28f
  0='No'
  1='Yes'
;
value vx29f
  0='No'
  1='Yes'
;
value vx30f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx31f
  0='No'
  1='Yes'
;
value vx32f
  0='No'
  1='Yes'
;
value vx33f
  0='0'
  1-4999='1 TO 4999'
  5000-9999='5000 TO 9999'
  10000-14999='10000 TO 14999'
  15000-19999='15000 TO 19999'
  20000-24999='20000 TO 24999'
  25000-29999='25000 TO 29999'
  30000-39999='30000 TO 39999'
  40000-49999='40000 TO 49999'
  50000-59999='50000 TO 59999'
  60000-69999='60000 TO 69999'
  70000-79999='70000 TO 79999'
  80000-89999='80000 TO 89999'
  90000-99999='90000 TO 99999'
  100000-149999='100000 TO 149999'
  150000-99999999='150000 TO 99999999: 150000+'
;
value vx34f
  0='NO'
  1='YES'
;
value vx35f
  0='0'
  1='1'
  2='2'
  3='3'
  4='4'
  5='5'
  6='6'
  7='7'
  8='8'
  9='9'
  10='10'
  11='11'
  12='12'
  13='13'
  14='14'
  15-99='15 TO 99: 15+'
;
value vx36f
  0='NO'
  1='YES'
;
value vx37f
  0='NO'
  1='YES'
;
value vx38f
  0='NO'
  1='YES'
;
value vx39f
  0='NO'
  1='YES'
;
value vx40f
  0='NO'
  1='YES'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0173600 vx1f.;
  format R0214700 vx2f.;
  format R0214800 vx3f.;
  format R2736100 vx4f.;
  format R2736201 vx5f.;
  format R2983600 vx6f.;
  format R2983701 vx7f.;
  format R3294000 vx8f.;
  format R3294101 vx9f.;
  format R3911700 vx10f.;
  format R3911801 vx11f.;
  format R4393100 vx12f.;
  format R4393201 vx13f.;
  format R5047900 vx14f.;
  format R5048001 vx15f.;
  format R5729300 vx16f.;
  format R5729401 vx17f.;
  format R6427300 vx18f.;
  format R6427401 vx19f.;
  format R6946100 vx20f.;
  format R6946201 vx21f.;
  format R8365400 vx22f.;
  format R8376100 vx23f.;
  format R8376400 vx24f.;
  format T2129100 vx25f.;
  format T2139800 vx26f.;
  format T2140100 vx27f.;
  format T4030400 vx28f.;
  format T4042600 vx29f.;
  format T4042900 vx30f.;
  format T5668100 vx31f.;
  format T5681500 vx32f.;
  format T5681800 vx33f.;
  format X0045800 vx34f.;
  format X0045900 vx35f.;
  format X0061200 vx36f.;
  format X0061300 vx37f.;
  format X0061400 vx38f.;
  format X0061500 vx39f.;
  format X0062000 vx40f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'SAMPLE_ID_1979'n vx1f.;
  format 'SAMPLE_RACE_78SCRN'n vx2f.;
  format 'SAMPLE_SEX_1979'n vx3f.;
  format 'Q13-124_1988'n vx4f.;
  format 'Q13-125_REVISED_1988'n vx5f.;
  format 'Q13-124_1989'n vx6f.;
  format 'Q13-125_REVISED_1989'n vx7f.;
  format 'Q13-124_1990'n vx8f.;
  format 'Q13-125_REVISED_1990'n vx9f.;
  format 'Q13-124_1992'n vx10f.;
  format 'Q13-125_REVISED_1992'n vx11f.;
  format 'Q13-124_1993'n vx12f.;
  format 'Q13-125_REVISED_1993'n vx13f.;
  format 'Q13-124_1994'n vx14f.;
  format 'Q13-125_REVISED_1994'n vx15f.;
  format 'Q13-124_1996'n vx16f.;
  format 'Q13-125_REVISED_1996'n vx17f.;
  format 'Q13-124_1998'n vx18f.;
  format 'Q13-125_REVISED_1998'n vx19f.;
  format 'Q13-124_2000'n vx20f.;
  format 'Q13-125_REVISED_2000'n vx21f.;
  format 'FA_4_2004'n vx22f.;
  format 'FA_9_2004'n vx23f.;
  format 'FA_9A_TRUNC_2004'n vx24f.;
  format 'FA_4_2008'n vx25f.;
  format 'FA_9_2008'n vx26f.;
  format 'FA_9A_TRUNC_2008'n vx27f.;
  format 'FA_4_2012'n vx28f.;
  format 'FA_9_2012'n vx29f.;
  format 'FA_9A_TRUNC_2012'n vx30f.;
  format 'FA_4_2016'n vx31f.;
  format 'FA_9_2016'n vx32f.;
  format 'FA_9A_TRUNC_2016'n vx33f.;
  format 'BUSOWN-1_XRND'n vx34f.;
  format 'BUSOWN-2_XRND'n vx35f.;
  format 'BUSOWN-23A_XRND'n vx36f.;
  format 'BUSOWN-23B_XRND'n vx37f.;
  format 'BUSOWN-24A_XRND'n vx38f.;
  format 'BUSOWN-24B_XRND'n vx39f.;
  format 'BUSOWN-29_XRND'n vx40f.;
run;
*/