options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79_CYA_supplement.dat' lrecl=406 missover DSD DLM=' ' print;
input
  C0000100
  C0000200
  C0005300
  C0005400
  C0005700
  C0007000
  C0127410
  C0127610
  C0127810
  C0127910
  C0128010
  C0571600
  C0571700
  C0580100
  C0580400
  C0580700
  C0792000
  C0792100
  C0799600
  C0799900
  C0800200
  C0992000
  C0992100
  C0998800
  C0999100
  C0999400
  C1192300
  C1192400
  C1198800
  C1199100
  C1199400
  C1500100
  C1500200
  C1507800
  C1508100
  C1508400
  C1557000
  C1557100
  C1564700
  C1565000
  C1565300
  C1792700
  C1792800
  C1800100
  C1800400
  C1800700
  C1987300
  C2493300
  C2502600
  C2502800
  C2503700
  C2503900
  C2504300
  C2521100
  C2531100
  C2531300
  C2532200
  C2532400
  C2532800
  C2791600
  C2802400
  C2802600
  C2803000
  C2803200
  C2803600
  C3101100
  C3110400
  C3110600
  C3111500
  C3111700
  C3112100
  C3603400
  C3614100
  C3614300
  C3615200
  C3615400
  C3615800
  C3983400
  C3992700
  C3992900
  C3993800
  C3994000
  C3994400
  C5527300
  C5536700
  C5536900
  C5537800
  C5538000
  C5538400
  C5803600
  C5812500
  C5812700
  C5813600
  C5813800
  C5814200
  Y2267000
;
array nvarlist _numeric_;


*---Recode missing values to SAS custom system missing. See SAS
      documentation for use of MISSING option in procedures, e.g. PROC FREQ;

do over nvarlist;
  if nvarlist = -1 then nvarlist = .R;  /* Refused */
  if nvarlist = -2 then nvarlist = .D;  /* Dont know */
  if nvarlist = -3 then nvarlist = .I;  /* Invalid missing */
  if nvarlist = -7 then nvarlist = .M;  /* Missing */
end;

  label C0000100 = "ID CODE OF CHILD";
  label C0000200 = "ID CODE OF MOTHER OF CHILD";
  label C0005300 = "RACE OF CHILD (FROM MOTHERS SCREENER 79)";
  label C0005400 = "SEX OF CHILD";
  label C0005700 = "DATE OF BIRTH OF CHILD - YEAR";
  label C0007000 = "AGE OF MOTHER AT BIRTH OF CHILD";
  label C0127410 = "# OF MEMBERS UNDER 18 IN HH OF MOTHER 91";
  label C0127610 = "# OF MEMBERS UNDER 18 IN HH OF MOTHER 92";
  label C0127810 = "# OF MEMBERS UNDER 18 IN HH OF MOTHER 93";
  label C0127910 = "# OF MEMBERS UNDER 18 IN HH OF MOTHER 94";
  label C0128010 = "# OF MEMBERS UNDER 18 IN HH OF MOTHER 96";
  label C0571600 = "HOME: COG STIM STANDARD SCORE";
  label C0571700 = "HOME: EMO SUPP STANDARD SCORE";
  label C0580100 = "PIAT MATH: TOTAL STD SCORE 86";
  label C0580400 = "PIAT READ REC: TOTAL STD SCORE 86";
  label C0580700 = "PIAT READ COMP: TOTAL STD SCORE 86";
  label C0792000 = "HOME: COG STIM STANDARD SCORE";
  label C0792100 = "HOME: EMO SUPP STANDARD SCORE";
  label C0799600 = "PIAT MATH: TOTAL STD SCORE 88";
  label C0799900 = "PIAT READ REC: TOTAL STD SCORE 88";
  label C0800200 = "PIAT READ COMP: TOTAL STD SCORE 88";
  label C0992000 = "HOME: COG STIM STANDARD SCORE";
  label C0992100 = "HOME: EMO SUPP STANDARD SCORE";
  label C0998800 = "PIAT MATH: TOTAL STD SCORE 90";
  label C0999100 = "PIAT READ REC: TOTAL STD SCORE 90";
  label C0999400 = "PIAT READ COMP: TOTAL STD SCORE 90";
  label C1192300 = "HOME: COG STIM STANDARD SCORE";
  label C1192400 = "HOME: EMO SUPP STANDARD SCORE";
  label C1198800 = "PIAT MATH: TOTAL STANDARD SCORE - 92";
  label C1199100 = "PIAT READ REC: TOTAL STNDRD SCORE - 92";
  label C1199400 = "PIAT READ COMP: TOTAL STAND SCORE - 92";
  label C1500100 = "HOME: COG STIM STANDARD SCORE";
  label C1500200 = "HOME: EMO SUPP STANDARD SCORE";
  label C1507800 = "PIAT MATH: TOTAL STANDARD SCORE - 94";
  label C1508100 = "PIAT READ REC: TOTAL STNDRD SCORE - 94";
  label C1508400 = "PIAT READ COMP: TOTAL STAND SCORE - 94";
  label C1557000 = "HOME: COG STIM STANDARD SCORE";
  label C1557100 = "HOME: EMO SUPP STANDARD SCORE";
  label C1564700 = "PIAT MATH: TOTAL STANDARD SCORE 96";
  label C1565000 = "PIAT READ REC: TOTAL STNDRD SCORE 96";
  label C1565300 = "PIAT READ COMP: TOTAL STAND SCORE 96";
  label C1792700 = "HOME: COG STIM STANDARD SCORE 1998";
  label C1792800 = "HOME: EMO SUPP STANDARD SCORE 1998";
  label C1800100 = "PIAT MATH: TOTAL STANDARD SCORE 1998";
  label C1800400 = "PIAT READ REC: TOTAL STNDRD SCORE 1998";
  label C1800700 = "PIAT READ COMP: TOTAL STAND SCORE 1998";
  label C1987300 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 1998";
  label C2493300 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2000";
  label C2502600 = "HOME: COG STIM STANDARD SCORE 2000";
  label C2502800 = "HOME: EMO SUPP STANDARD SCORE 2000";
  label C2503700 = "PIAT MATH: TOTAL STANDARD SCORE 2000";
  label C2503900 = "PIAT READ REC: TOTAL STNDRD SCORE 2000";
  label C2504300 = "PIAT READ COMP: TOTAL STAND SCORE 2000";
  label C2521100 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2002";
  label C2531100 = "HOME: COG STIM STANDARD SCORE 2002";
  label C2531300 = "HOME: EMO SUPP STANDARD SCORE 2002";
  label C2532200 = "PIAT MATH: TOTAL STANDARD SCORE 2002";
  label C2532400 = "PIAT READ REC: TOTAL STNDRD SCORE 2002";
  label C2532800 = "PIAT READ COMP: TOTAL STAND SCORE 2002";
  label C2791600 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2004";
  label C2802400 = "HOME: COG STIM STANDARD SCORE 2004";
  label C2802600 = "HOME: EMO SUPP STANDARD SCORE 2004";
  label C2803000 = "PIAT MATH: TOTAL STANDARD SCORE 2004";
  label C2803200 = "PIAT READ REC: TOTAL STNDRD SCORE 2004";
  label C2803600 = "PIAT READ COMP: TOTAL STAND SCORE 2004";
  label C3101100 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2006";
  label C3110400 = "HOME: COG STIM STANDARD SCORE 2006";
  label C3110600 = "HOME: EMO SUPP STANDARD SCORE 2006";
  label C3111500 = "PIAT MATH: TOTAL STANDARD SCORE 2006";
  label C3111700 = "PIAT READ REC: TOTAL STNDRD SCORE 2006";
  label C3112100 = "PIAT READ COMP: TOTAL STAND SCORE 2006";
  label C3603400 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2008";
  label C3614100 = "HOME: COG STIM STANDARD SCORE 2008";
  label C3614300 = "HOME: EMO SUPP STANDARD SCORE 2008";
  label C3615200 = "PIAT MATH: TOTAL STANDARD SCORE 2008";
  label C3615400 = "PIAT READ REC: TOTAL STNDRD SCORE 2008";
  label C3615800 = "PIAT READ COMP: TOTAL STAND SCORE 2008";
  label C3983400 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2010";
  label C3992700 = "HOME: COG STIM STANDARD SCORE 2010";
  label C3992900 = "HOME: EMO SUPP STANDARD SCORE 2010";
  label C3993800 = "PIAT MATH: TOTAL STANDARD SCORE 2010";
  label C3994000 = "PIAT READ REC: TOTAL STNDRD SCORE 2010";
  label C3994400 = "PIAT READ COMP: TOTAL STAND SCORE 2010";
  label C5527300 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2012";
  label C5536700 = "HOME: COG STIM STANDARD SCORE 2012";
  label C5536900 = "HOME: EMO SUPP STANDARD SCORE 2012";
  label C5537800 = "PIAT MATH: TOTAL STANDARD SCORE 2012";
  label C5538000 = "PIAT READ REC: TOTAL STNDRD SCORE 2012";
  label C5538400 = "PIAT READ COMP: TOTAL STAND SCORE 2012";
  label C5803600 = "#  MEMBERS UNDER 18 IN HH OF MOTHER 2014";
  label C5812500 = "HOME: COG STIM STANDARD SCORE 2014";
  label C5812700 = "HOME: EMO SUPP STANDARD SCORE 2014";
  label C5813600 = "PIAT MATH: TOTAL STANDARD SCORE 2014";
  label C5813800 = "PIAT READ REC: TOTAL STNDRD SCORE 2014";
  label C5814200 = "PIAT READ COMP: TOTAL STAND SCORE 2014";
  label Y2267000 = "VERSION_R29 CHILD/YOUNG ADULT XRND";

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
  C0000100 = 'CPUBID_XRND'n
  C0000200 = 'MPUBID_XRND'n
  C0005300 = 'CRACE_XRND'n
  C0005400 = 'CSEX_XRND'n
  C0005700 = 'CYRB_XRND'n
  C0007000 = 'MAGEBIR_XRND'n
  C0127410 = 'NHCHLD1991_1991'n
  C0127610 = 'NHCHLD1992_1992'n
  C0127810 = 'NHCHLD1993_1993'n
  C0127910 = 'NHCHLD1994_1994'n
  C0128010 = 'NHCHLD1996_1996'n
  C0571600 = 'COGNZ1986_1986'n
  C0571700 = 'EMOTZ1986_1986'n
  C0580100 = 'MATHZ1986_1986'n
  C0580400 = 'RECOGZ1986_1986'n
  C0580700 = 'COMPZ1986_1986'n
  C0792000 = 'COGNZ1988_1988'n
  C0792100 = 'EMOTZ1988_1988'n
  C0799600 = 'MATHZ1988_1988'n
  C0799900 = 'RECOGZ1988_1988'n
  C0800200 = 'COMPZ1988_1988'n
  C0992000 = 'COGNZ1990_1990'n
  C0992100 = 'EMOTZ1990_1990'n
  C0998800 = 'MATHZ1990_1990'n
  C0999100 = 'RECOGZ1990_1990'n
  C0999400 = 'COMPZ1990_1990'n
  C1192300 = 'COGNZ1992_1992'n
  C1192400 = 'EMOTZ1992_1992'n
  C1198800 = 'MATHZ1992_1992'n
  C1199100 = 'RECOGZ1992_1992'n
  C1199400 = 'COMPZ1992_1992'n
  C1500100 = 'COGNZ1994_1994'n
  C1500200 = 'EMOTZ1994_1994'n
  C1507800 = 'MATHZ1994_1994'n
  C1508100 = 'RECOGZ1994_1994'n
  C1508400 = 'COMPZ1994_1994'n
  C1557000 = 'COGNZ1996_1996'n
  C1557100 = 'EMOTZ1996_1996'n
  C1564700 = 'MATHZ1996_1996'n
  C1565000 = 'RECOGZ1996_1996'n
  C1565300 = 'COMPZ1996_1996'n
  C1792700 = 'COGNZ1998_1998'n
  C1792800 = 'EMOTZ1998_1998'n
  C1800100 = 'MATHZ1998_1998'n
  C1800400 = 'RECOGZ1998_1998'n
  C1800700 = 'COMPZ1998_1998'n
  C1987300 = 'NHCHLD1998_1998'n
  C2493300 = 'NHCHLD2000_2000'n
  C2502600 = 'COGNZ2000_2000'n
  C2502800 = 'EMOTZ2000_2000'n
  C2503700 = 'MATHZ2000_2000'n
  C2503900 = 'RECOGZ2000_2000'n
  C2504300 = 'COMPZ2000_2000'n
  C2521100 = 'NHCHLD2002_2002'n
  C2531100 = 'COGNZ2002_2002'n
  C2531300 = 'EMOTZ2002_2002'n
  C2532200 = 'MATHZ2002_2002'n
  C2532400 = 'RECOGZ2002_2002'n
  C2532800 = 'COMPZ2002_2002'n
  C2791600 = 'NHCHLD2004_2004'n
  C2802400 = 'COGNZ2004_2004'n
  C2802600 = 'EMOTZ2004_2004'n
  C2803000 = 'MATHZ2004_2004'n
  C2803200 = 'RECOGZ2004_2004'n
  C2803600 = 'COMPZ2004_2004'n
  C3101100 = 'NHCHLD2006_2006'n
  C3110400 = 'COGNZ2006_2006'n
  C3110600 = 'EMOTZ2006_2006'n
  C3111500 = 'MATHZ2006_2006'n
  C3111700 = 'RECOGZ2006_2006'n
  C3112100 = 'COMPZ2006_2006'n
  C3603400 = 'NHCHLD2008_2008'n
  C3614100 = 'COGNZ2008_2008'n
  C3614300 = 'EMOTZ2008_2008'n
  C3615200 = 'MATHZ2008_2008'n
  C3615400 = 'RECOGZ2008_2008'n
  C3615800 = 'COMPZ2008_2008'n
  C3983400 = 'NHCHLD2010_2010'n
  C3992700 = 'COGNZ2010_2010'n
  C3992900 = 'EMOTZ2010_2010'n
  C3993800 = 'MATHZ2010_2010'n
  C3994000 = 'RECOGZ2010_2010'n
  C3994400 = 'COMPZ2010_2010'n
  C5527300 = 'NHCHLD2012_2012'n
  C5536700 = 'COGNZ2012_2012'n
  C5536900 = 'EMOTZ2012_2012'n
  C5537800 = 'MATHZ2012_2012'n
  C5538000 = 'RECOGZ2012_2012'n
  C5538400 = 'COMPZ2012_2012'n
  C5803600 = 'NHCHLD2014_2014'n
  C5812500 = 'COGNZ2014_2014'n
  C5812700 = 'EMOTZ2014_2014'n
  C5813600 = 'MATHZ2014_2014'n
  C5813800 = 'RECOGZ2014_2014'n
  C5814200 = 'COMPZ2014_2014'n
  Y2267000 = 'VERSION_R29_XRND'n
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
value vx0f
  1-9999999='1 TO 9999999: See Min & Max values below for range as of this release'
;
value vx1f
  1-12686='1 TO 12686: NLSY79 Public ID'
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
  1970-1978='1970 TO 1978: < before 1979'
  1979='1979'
  1980='1980'
  1981='1981'
  1982='1982'
  1983='1983'
  1984='1984'
  1985='1985'
  1986='1986'
  1987='1987'
  1988='1988'
  1989='1989'
  1990='1990'
  1991='1991'
  1992='1992'
  1993='1993'
  1994='1994'
  1995='1995'
  1996='1996'
  1997='1997'
  1998='1998'
  1999='1999'
  2000='2000'
  2001='2001'
  2002='2002'
  2003='2003'
  2004='2004'
  2005='2005'
  2006='2006'
  2007='2007'
  2008='2008'
  2009='2009'
  2010='2010'
  2011='2011'
  2012='2012'
  2013='2013'
  2014='2014'
  2015='2015'
  2016='2016'
  2017='2017'
  2018='2018'
  2019='2019'
  2020='2020'
  2021='2021'
;
value vx5f
  0='0'
  1-4='1 TO 4'
  5-9='5 TO 9'
  10-14='10 TO 14'
  15-19='15 TO 19'
  20-24='20 TO 24'
  25-29='25 TO 29'
  30-34='30 TO 34'
  35-39='35 TO 39'
  40-44='40 TO 44'
  45-49='45 TO 49'
  50-52='50 TO 52'
  53-9999999='53 TO 9999999: 53+'
;
value vx6f
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
  15='15'
  16-99999='16 TO 99999: 16+'
;
value vx7f
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
  15='15'
  16-99999='16 TO 99999: 16+'
;
value vx8f
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
  15='15'
  16-99999='16 TO 99999: 16+'
;
value vx9f
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
  15='15'
  16-99999='16 TO 99999: 16+'
;
value vx10f
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
  11-999999='11 TO 999999: > 10'
;
value vx11f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx12f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx13f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx14f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx15f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx16f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx17f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx18f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx19f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx20f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx21f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx22f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx23f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx24f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx25f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx26f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx27f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx28f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx29f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx30f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx31f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx32f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-1099='1000 TO 1099'
  1100-1199='1100 TO 1199'
  1200-1299='1200 TO 1299'
  1300-1399='1300 TO 1399'
  1400-1499='1400 TO 1499'
  1500-9999999='1500 TO 9999999: 1500+'
;
value vx33f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx34f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx35f
  0-64='0 TO 64'
  65-69='65 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-144='130 TO 144'
  145-9999='145 TO 9999: 145 +'
;
value vx36f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx37f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx38f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx39f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx40f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx41f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999'
;
value vx42f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999'
;
value vx43f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999'
;
value vx44f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999'
;
value vx45f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999'
;
value vx46f
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
  11-9999='11 TO 9999'
;
value vx47f
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
  11-9999='11 TO 9999'
;
value vx48f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx49f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx50f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx51f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx52f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx53f
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
  11-9999='11 TO 9999'
;
value vx54f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx55f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx56f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx57f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx58f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx59f
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
  11-9999='11 TO 9999'
;
value vx60f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx61f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx62f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx63f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx64f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx65f
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
  11-9999='11 TO 9999'
;
value vx66f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx67f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx68f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx69f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx70f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx71f
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
  11-9999='11 TO 9999'
;
value vx72f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx73f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx74f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx75f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx76f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx77f
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
  11-9999='11 TO 9999'
;
value vx78f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx79f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx80f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx81f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx82f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx83f
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
  11-9999='11 TO 9999'
;
value vx84f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx85f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx86f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx87f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx88f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx89f
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
  11-9999='11 TO 9999'
;
value vx90f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx91f
  0='0'
  1-99='1 TO 99'
  100-199='100 TO 199'
  200-299='200 TO 299'
  300-399='300 TO 399'
  400-499='400 TO 499'
  500-599='500 TO 599'
  600-699='600 TO 699'
  700-799='700 TO 799'
  800-899='800 TO 899'
  900-999='900 TO 999'
  1000-99999999='1000 TO 99999999: 1000+'
;
value vx92f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx93f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx94f
  0-69='0 TO 69'
  70-84='70 TO 84'
  85-99='85 TO 99'
  100-114='100 TO 114'
  115-129='115 TO 129'
  130-999999='130 TO 999999: 130 +'
;
value vx95f
  532='532'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format C0000100 vx0f.;
  format C0000200 vx1f.;
  format C0005300 vx2f.;
  format C0005400 vx3f.;
  format C0005700 vx4f.;
  format C0007000 vx5f.;
  format C0127410 vx6f.;
  format C0127610 vx7f.;
  format C0127810 vx8f.;
  format C0127910 vx9f.;
  format C0128010 vx10f.;
  format C0571600 vx11f.;
  format C0571700 vx12f.;
  format C0580100 vx13f.;
  format C0580400 vx14f.;
  format C0580700 vx15f.;
  format C0792000 vx16f.;
  format C0792100 vx17f.;
  format C0799600 vx18f.;
  format C0799900 vx19f.;
  format C0800200 vx20f.;
  format C0992000 vx21f.;
  format C0992100 vx22f.;
  format C0998800 vx23f.;
  format C0999100 vx24f.;
  format C0999400 vx25f.;
  format C1192300 vx26f.;
  format C1192400 vx27f.;
  format C1198800 vx28f.;
  format C1199100 vx29f.;
  format C1199400 vx30f.;
  format C1500100 vx31f.;
  format C1500200 vx32f.;
  format C1507800 vx33f.;
  format C1508100 vx34f.;
  format C1508400 vx35f.;
  format C1557000 vx36f.;
  format C1557100 vx37f.;
  format C1564700 vx38f.;
  format C1565000 vx39f.;
  format C1565300 vx40f.;
  format C1792700 vx41f.;
  format C1792800 vx42f.;
  format C1800100 vx43f.;
  format C1800400 vx44f.;
  format C1800700 vx45f.;
  format C1987300 vx46f.;
  format C2493300 vx47f.;
  format C2502600 vx48f.;
  format C2502800 vx49f.;
  format C2503700 vx50f.;
  format C2503900 vx51f.;
  format C2504300 vx52f.;
  format C2521100 vx53f.;
  format C2531100 vx54f.;
  format C2531300 vx55f.;
  format C2532200 vx56f.;
  format C2532400 vx57f.;
  format C2532800 vx58f.;
  format C2791600 vx59f.;
  format C2802400 vx60f.;
  format C2802600 vx61f.;
  format C2803000 vx62f.;
  format C2803200 vx63f.;
  format C2803600 vx64f.;
  format C3101100 vx65f.;
  format C3110400 vx66f.;
  format C3110600 vx67f.;
  format C3111500 vx68f.;
  format C3111700 vx69f.;
  format C3112100 vx70f.;
  format C3603400 vx71f.;
  format C3614100 vx72f.;
  format C3614300 vx73f.;
  format C3615200 vx74f.;
  format C3615400 vx75f.;
  format C3615800 vx76f.;
  format C3983400 vx77f.;
  format C3992700 vx78f.;
  format C3992900 vx79f.;
  format C3993800 vx80f.;
  format C3994000 vx81f.;
  format C3994400 vx82f.;
  format C5527300 vx83f.;
  format C5536700 vx84f.;
  format C5536900 vx85f.;
  format C5537800 vx86f.;
  format C5538000 vx87f.;
  format C5538400 vx88f.;
  format C5803600 vx89f.;
  format C5812500 vx90f.;
  format C5812700 vx91f.;
  format C5813600 vx92f.;
  format C5813800 vx93f.;
  format C5814200 vx94f.;
  format Y2267000 vx95f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'CPUBID_XRND'n vx0f.;
  format 'MPUBID_XRND'n vx1f.;
  format 'CRACE_XRND'n vx2f.;
  format 'CSEX_XRND'n vx3f.;
  format 'CYRB_XRND'n vx4f.;
  format 'MAGEBIR_XRND'n vx5f.;
  format 'NHCHLD1991_1991'n vx6f.;
  format 'NHCHLD1992_1992'n vx7f.;
  format 'NHCHLD1993_1993'n vx8f.;
  format 'NHCHLD1994_1994'n vx9f.;
  format 'NHCHLD1996_1996'n vx10f.;
  format 'COGNZ1986_1986'n vx11f.;
  format 'EMOTZ1986_1986'n vx12f.;
  format 'MATHZ1986_1986'n vx13f.;
  format 'RECOGZ1986_1986'n vx14f.;
  format 'COMPZ1986_1986'n vx15f.;
  format 'COGNZ1988_1988'n vx16f.;
  format 'EMOTZ1988_1988'n vx17f.;
  format 'MATHZ1988_1988'n vx18f.;
  format 'RECOGZ1988_1988'n vx19f.;
  format 'COMPZ1988_1988'n vx20f.;
  format 'COGNZ1990_1990'n vx21f.;
  format 'EMOTZ1990_1990'n vx22f.;
  format 'MATHZ1990_1990'n vx23f.;
  format 'RECOGZ1990_1990'n vx24f.;
  format 'COMPZ1990_1990'n vx25f.;
  format 'COGNZ1992_1992'n vx26f.;
  format 'EMOTZ1992_1992'n vx27f.;
  format 'MATHZ1992_1992'n vx28f.;
  format 'RECOGZ1992_1992'n vx29f.;
  format 'COMPZ1992_1992'n vx30f.;
  format 'COGNZ1994_1994'n vx31f.;
  format 'EMOTZ1994_1994'n vx32f.;
  format 'MATHZ1994_1994'n vx33f.;
  format 'RECOGZ1994_1994'n vx34f.;
  format 'COMPZ1994_1994'n vx35f.;
  format 'COGNZ1996_1996'n vx36f.;
  format 'EMOTZ1996_1996'n vx37f.;
  format 'MATHZ1996_1996'n vx38f.;
  format 'RECOGZ1996_1996'n vx39f.;
  format 'COMPZ1996_1996'n vx40f.;
  format 'COGNZ1998_1998'n vx41f.;
  format 'EMOTZ1998_1998'n vx42f.;
  format 'MATHZ1998_1998'n vx43f.;
  format 'RECOGZ1998_1998'n vx44f.;
  format 'COMPZ1998_1998'n vx45f.;
  format 'NHCHLD1998_1998'n vx46f.;
  format 'NHCHLD2000_2000'n vx47f.;
  format 'COGNZ2000_2000'n vx48f.;
  format 'EMOTZ2000_2000'n vx49f.;
  format 'MATHZ2000_2000'n vx50f.;
  format 'RECOGZ2000_2000'n vx51f.;
  format 'COMPZ2000_2000'n vx52f.;
  format 'NHCHLD2002_2002'n vx53f.;
  format 'COGNZ2002_2002'n vx54f.;
  format 'EMOTZ2002_2002'n vx55f.;
  format 'MATHZ2002_2002'n vx56f.;
  format 'RECOGZ2002_2002'n vx57f.;
  format 'COMPZ2002_2002'n vx58f.;
  format 'NHCHLD2004_2004'n vx59f.;
  format 'COGNZ2004_2004'n vx60f.;
  format 'EMOTZ2004_2004'n vx61f.;
  format 'MATHZ2004_2004'n vx62f.;
  format 'RECOGZ2004_2004'n vx63f.;
  format 'COMPZ2004_2004'n vx64f.;
  format 'NHCHLD2006_2006'n vx65f.;
  format 'COGNZ2006_2006'n vx66f.;
  format 'EMOTZ2006_2006'n vx67f.;
  format 'MATHZ2006_2006'n vx68f.;
  format 'RECOGZ2006_2006'n vx69f.;
  format 'COMPZ2006_2006'n vx70f.;
  format 'NHCHLD2008_2008'n vx71f.;
  format 'COGNZ2008_2008'n vx72f.;
  format 'EMOTZ2008_2008'n vx73f.;
  format 'MATHZ2008_2008'n vx74f.;
  format 'RECOGZ2008_2008'n vx75f.;
  format 'COMPZ2008_2008'n vx76f.;
  format 'NHCHLD2010_2010'n vx77f.;
  format 'COGNZ2010_2010'n vx78f.;
  format 'EMOTZ2010_2010'n vx79f.;
  format 'MATHZ2010_2010'n vx80f.;
  format 'RECOGZ2010_2010'n vx81f.;
  format 'COMPZ2010_2010'n vx82f.;
  format 'NHCHLD2012_2012'n vx83f.;
  format 'COGNZ2012_2012'n vx84f.;
  format 'EMOTZ2012_2012'n vx85f.;
  format 'MATHZ2012_2012'n vx86f.;
  format 'RECOGZ2012_2012'n vx87f.;
  format 'COMPZ2012_2012'n vx88f.;
  format 'NHCHLD2014_2014'n vx89f.;
  format 'COGNZ2014_2014'n vx90f.;
  format 'EMOTZ2014_2014'n vx91f.;
  format 'MATHZ2014_2014'n vx92f.;
  format 'RECOGZ2014_2014'n vx93f.;
  format 'COMPZ2014_2014'n vx94f.;
  format 'VERSION_R29_XRND'n vx95f.;
run;
*/