options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79_supplement1.dat' lrecl=367 missover DSD DLM=' ' print;
input
  R0000100
  R0000500
  R0000600
  R0001900
  R0173600
  R0214700
  R0214800
  R0215700
  R0217500
  R0217502
  R0405210
  R0405600
  R0407200
  R0618600
  R0646300
  R0647103
  R0780300
  R0896710
  R0896900
  R0898400
  R1021900
  R1144410
  R1144900
  R1145300
  R1391000
  R1395700
  R1404100
  R1404700
  R1405300
  R1519610
  R1520100
  R1520500
  R1774600
  R1890210
  R1890800
  R1891200
  R2257410
  R2257900
  R2258300
  R2444610
  R2445300
  R2445700
  R2716600
  R2721100
  R2721200
  R2870110
  R2870900
  R2871500
  R2968200
  R3073910
  R3074600
  R3075200
  R3400600
  R3401300
  R3401900
  R3656000
  R3656700
  R3657300
  R3915300
  R3915400
  R3915800
  R4006500
  R4007200
  R4007800
  R4417600
  R4418300
  R4418900
  R4979200
  R5053400
  R5053500
  R5053900
  R5080600
  R5081300
  R5081900
  R5165900
  R5166600
  R5167200
  R6430700
  R6430800
  R6431200
  R6478600
  R6479200
  R6480000
  R7006400
  R7006900
  R7007700
  R7606400
  R7703600
  R7704200
  R7705000
  R8496000
  R8496600
  R8497400
  R9909800
  T0911100
  T0987600
  T0988400
  T0989200
  T2075400
  T2209900
  T2210400
  T2211000
  T3044000
  T3107700
  T3108300
  T3108900
  T3976200
  T4112200
  T4112800
  T4113400
  T4914500
  T5022500
  T5023200
  T5024800
  T5770700
  T5771100
  T5772800
  T8218600
  T8219200
  T8220000
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
  label R0000500 = "DATE OF BIRTH - YR 79";
  label R0000600 = "AGE OF R 79";
  label R0001900 = "WITH WHOM DID R LIVE @ AGE 14 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R0215700 = "# WEEKS WRKD IN P-C YR 79";
  label R0217500 = "MARITAL STATUS (COLLAPSED) 79";
  label R0217502 = "FAMILY SIZE 79";
  label R0405210 = "FAMILY SIZE 80";
  label R0405600 = "MARITAL STATUS (COLLAPSED) 80";
  label R0407200 = "# WEEKS WRKD IN P-C YR 80";
  label R0618600 = "MARITAL STATUS (COLLAPSED) 81";
  label R0646300 = "# WEEKS WRKD IN P-C YR 81";
  label R0647103 = "FAMILY SIZE 81";
  label R0780300 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 82";
  label R0896710 = "FAMILY SIZE 82";
  label R0896900 = "# WEEKS WRKD IN P-C YR 82";
  label R0898400 = "MARITAL STATUS (COLLAPSED) 82";
  label R1021900 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 83";
  label R1144410 = "FAMILY SIZE 83";
  label R1144900 = "MARITAL STATUS (COLLAPSED) 83";
  label R1145300 = "# WEEKS WRKD IN P-C YR 83";
  label R1391000 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 84";
  label R1395700 = "DRUG #TMS USE MARJ/HASH PAST 30 DAYS 84";
  label R1404100 = "DRUG #TMS USE COCAINE 84";
  label R1404700 = "DRUG #TMS USE OTHER NARCOTICS 84";
  label R1405300 = "DRUG #TMS USE OTHER DRUGS 84";
  label R1519610 = "FAMILY SIZE 84";
  label R1520100 = "MARITAL STATUS (COLLAPSED) 84";
  label R1520500 = "# WEEKS WRKD IN P-C YR 84";
  label R1774600 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 85";
  label R1890210 = "FAMILY SIZE 85";
  label R1890800 = "MARITAL STATUS (COLLAPSED) 85";
  label R1891200 = "# WEEKS WRKD IN P-C YR 85";
  label R2257410 = "FAMILY SIZE 86";
  label R2257900 = "MARITAL STATUS (COLLAPSED) 86";
  label R2258300 = "# WEEKS WRKD IN P-C YR 86";
  label R2444610 = "FAMILY SIZE 87";
  label R2445300 = "MARITAL STATUS (COLLAPSED) 87";
  label R2445700 = "# WEEKS WRKD IN P-C YR 87";
  label R2716600 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 88";
  label R2721100 = "DRUG #TMS USE MARJ/HASH PAST 30 DAYS 88";
  label R2721200 = "DRUG #TMS USE OCCASIONS USED COCAINE 88";
  label R2870110 = "FAMILY SIZE 88";
  label R2870900 = "MARITAL STATUS (COLLAPSED) 88";
  label R2871500 = "# WEEKS WRKD IN P-C YR 88";
  label R2968200 = "ALCHL-HAD ANY ALCHL BVRGS LAST MO 89";
  label R3073910 = "FAMILY SIZE 89";
  label R3074600 = "MARITAL STATUS (COLLAPSED) 89";
  label R3075200 = "# WEEKS WRKD IN P-C YR 89";
  label R3400600 = "FAMILY SIZE 90";
  label R3401300 = "MARITAL STATUS (COLLAPSED) 90";
  label R3401900 = "# WEEKS WRKD IN P-C YR 90";
  label R3656000 = "FAMILY SIZE 91";
  label R3656700 = "MARITAL STATUS (COLLAPSED) 91";
  label R3657300 = "# WEEKS WRKD IN P-C YR 91";
  label R3915300 = "DRUG #TMS USE MARJ PAST 30 DAYS 92";
  label R3915400 = "DRUG #TMS USE OCCASIONS USED COCAINE 92";
  label R3915800 = "DRUG #TMS USE COCAINE PAST 30 DAYS 92";
  label R4006500 = "FAMILY SIZE 92";
  label R4007200 = "MARITAL STATUS (COLLAPSED) 92";
  label R4007800 = "# WEEKS WRKD IN P-C YR 92";
  label R4417600 = "FAMILY SIZE 93";
  label R4418300 = "MARITAL STATUS (COLLAPSED) 93";
  label R4418900 = "WKS WRKD IN PAST CAL YR 93";
  label R4979200 = "HAD ALCHOLC BEVERAGE IN LAST 30 94";
  label R5053400 = "NMBR TIMES POT PAST 30 DAYS 94";
  label R5053500 = "HOW MANY OCCASIONS USED COCAINE 94";
  label R5053900 = "HOW MANY OCCASIONS USED CRACK 94";
  label R5080600 = "FAMILY SIZE 94";
  label R5081300 = "MARITAL STATUS (COLLAPSED) 94";
  label R5081900 = "WKS WRKD IN PAST CAL YR 94";
  label R5165900 = "FAMILY SIZE 96";
  label R5166600 = "MARITAL STATUS (COLLAPSED) 96";
  label R5167200 = "WKS WRKD IN PAST CAL YR 96";
  label R6430700 = "NMBR TIMES POT PAST 30 DAYS 1998";
  label R6430800 = "HOW MANY OCCASIONS USED COCAINE 1998";
  label R6431200 = "HOW MANY OCCASIONS USED CRACK 1998";
  label R6478600 = "FAMILY SIZE 1998";
  label R6479200 = "MARITAL STATUS (COLLAPSED) 1998";
  label R6480000 = "WKS WRKD IN PAST CAL YR 1998";
  label R7006400 = "FAMILY SIZE 2000";
  label R7006900 = "MARITAL STATUS (COLLAPSED) 2000";
  label R7007700 = "WKS WRKD IN PAST CAL YR 2000";
  label R7606400 = "HAD ALCOHOLC BEVERAGE LAST 30 DAYS 2002";
  label R7703600 = "FAMILY SIZE 2002";
  label R7704200 = "MARITAL STATUS (COLLAPSED) 2002";
  label R7705000 = "WKS WRKD IN PAST CAL YR 2002";
  label R8496000 = "FAMILY SIZE 2004";
  label R8496600 = "MARITAL STATUS (COLLAPSED) 2004";
  label R8497400 = "WKS WRKD IN PAST CAL YR 2004";
  label R9909800 = "WAS 1ST MARRIAGE BEFORE 1ST BIRTH? XRND";
  label T0911100 = "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2006";
  label T0987600 = "FAMILY SIZE 2006";
  label T0988400 = "MARITAL STATUS (COLLAPSED) 2006";
  label T0989200 = "WKS WRKD IN PAST CAL YR 2006";
  label T2075400 = "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2008";
  label T2209900 = "FAMILY SIZE 2008";
  label T2210400 = "MARITAL STATUS (COLLAPSED) 2008";
  label T2211000 = "WKS WRKD IN PAST CAL YR 2008";
  label T3044000 = "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2010";
  label T3107700 = "FAMILY SIZE 2010";
  label T3108300 = "MARITAL STATUS (COLLAPSED) 2010";
  label T3108900 = "WKS WRKD IN PAST CAL YR 2010";
  label T3976200 = "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2012";
  label T4112200 = "FAMILY SIZE 2012";
  label T4112800 = "MARITAL STATUS (COLLAPSED) 2012";
  label T4113400 = "WKS WRKD IN PAST CAL YR 2012";
  label T4914500 = "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2014";
  label T5022500 = "FAMILY SIZE 2014";
  label T5023200 = "MARITAL STATUS (COLLAPSED) 2014";
  label T5024800 = "WKS WRKD IN PAST CAL YR 2014";
  label T5770700 = "FAMILY SIZE 2016";
  label T5771100 = "MARITAL STATUS (COLLAPSED) 2016";
  label T5772800 = "WKS WRKD IN PAST CAL YR 2016";
  label T8218600 = "FAMILY SIZE 2018";
  label T8219200 = "MARITAL STATUS (COLLAPSED) 2018";
  label T8220000 = "WKS WRKD IN PAST CAL YR 2018";

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
  R0000500 = 'Q1-3_A~Y_1979'n
  R0000600 = 'FAM-1B_1979'n
  R0001900 = 'FAM-7_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R0215700 = 'WKSWK-PCY_1979'n
  R0217500 = 'MARSTAT-COL_1979'n
  R0217502 = 'FAMSIZE_1979'n
  R0405210 = 'FAMSIZE_1980'n
  R0405600 = 'MARSTAT-COL_1980'n
  R0407200 = 'WKSWK-PCY_1980'n
  R0618600 = 'MARSTAT-COL_1981'n
  R0646300 = 'WKSWK-PCY_1981'n
  R0647103 = 'FAMSIZE_1981'n
  R0780300 = 'Q12-3_1982'n
  R0896710 = 'FAMSIZE_1982'n
  R0896900 = 'WKSWK-PCY_1982'n
  R0898400 = 'MARSTAT-COL_1982'n
  R1021900 = 'Q12-3_1983'n
  R1144410 = 'FAMSIZE_1983'n
  R1144900 = 'MARSTAT-COL_1983'n
  R1145300 = 'WKSWK-PCY_1983'n
  R1391000 = 'Q12-3_1984'n
  R1395700 = 'DS-11_1984'n
  R1404100 = 'DS-12_1984'n
  R1404700 = 'DRUG-27_1984'n
  R1405300 = 'DRUG-33_1984'n
  R1519610 = 'FAMSIZE_1984'n
  R1520100 = 'MARSTAT-COL_1984'n
  R1520500 = 'WKSWK-PCY_1984'n
  R1774600 = 'Q12-3_1985'n
  R1890210 = 'FAMSIZE_1985'n
  R1890800 = 'MARSTAT-COL_1985'n
  R1891200 = 'WKSWK-PCY_1985'n
  R2257410 = 'FAMSIZE_1986'n
  R2257900 = 'MARSTAT-COL_1986'n
  R2258300 = 'WKSWK-PCY_1986'n
  R2444610 = 'FAMSIZE_1987'n
  R2445300 = 'MARSTAT-COL_1987'n
  R2445700 = 'WKSWK-PCY_1987'n
  R2716600 = 'Q12-3_1988'n
  R2721100 = 'DS-11_1988'n
  R2721200 = 'DS-12_1988'n
  R2870110 = 'FAMSIZE_1988'n
  R2870900 = 'MARSTAT-COL_1988'n
  R2871500 = 'WKSWK-PCY_1988'n
  R2968200 = 'Q12-3_1989'n
  R3073910 = 'FAMSIZE_1989'n
  R3074600 = 'MARSTAT-COL_1989'n
  R3075200 = 'WKSWK-PCY_1989'n
  R3400600 = 'FAMSIZE_1990'n
  R3401300 = 'MARSTAT-COL_1990'n
  R3401900 = 'WKSWK-PCY_1990'n
  R3656000 = 'FAMSIZE_1991'n
  R3656700 = 'MARSTAT-COL_1991'n
  R3657300 = 'WKSWK-PCY_1991'n
  R3915300 = 'DS-11_1992'n
  R3915400 = 'DS-12_1992'n
  R3915800 = 'DS-16_1992'n
  R4006500 = 'FAMSIZE_1992'n
  R4007200 = 'MARSTAT-COL_1992'n
  R4007800 = 'WKSWK-PCY_1992'n
  R4417600 = 'FAMSIZE_1993'n
  R4418300 = 'MARSTAT-COL_1993'n
  R4418900 = 'WKSWK-PCY_1993'n
  R4979200 = 'Q12-3_1994'n
  R5053400 = 'DS-11_1994'n
  R5053500 = 'DS-12_1994'n
  R5053900 = 'DS-16_1994'n
  R5080600 = 'FAMSIZE_1994'n
  R5081300 = 'MARSTAT-COL_1994'n
  R5081900 = 'WKSWK-PCY_1994'n
  R5165900 = 'FAMSIZE_1996'n
  R5166600 = 'MARSTAT-COL_1996'n
  R5167200 = 'WKSWK-PCY_1996'n
  R6430700 = 'DS-11_1998'n
  R6430800 = 'DS-12_1998'n
  R6431200 = 'DS-16_1998'n
  R6478600 = 'FAMSIZE_1998'n
  R6479200 = 'MARSTAT-COL_1998'n
  R6480000 = 'WKSWK-PCY_1998'n
  R7006400 = 'FAMSIZE_2000'n
  R7006900 = 'MARSTAT-COL_2000'n
  R7007700 = 'WKSWK-PCY_2000'n
  R7606400 = 'Q12-3_2002'n
  R7703600 = 'FAMSIZE_2002'n
  R7704200 = 'MARSTAT-COL_2002'n
  R7705000 = 'WKSWK-PCY_2002'n
  R8496000 = 'FAMSIZE_2004'n
  R8496600 = 'MARSTAT-COL_2004'n
  R8497400 = 'WKSWK-PCY_2004'n
  R9909800 = 'FL1M1B_XRND'n
  T0911100 = 'Q12-3_2006'n
  T0987600 = 'FAMSIZE_2006'n
  T0988400 = 'MARSTAT-COL_2006'n
  T0989200 = 'WKSWK-PCY_2006'n
  T2075400 = 'Q12-3_2008'n
  T2209900 = 'FAMSIZE_2008'n
  T2210400 = 'MARSTAT-COL_2008'n
  T2211000 = 'WKSWK-PCY_2008'n
  T3044000 = 'Q12-3_2010'n
  T3107700 = 'FAMSIZE_2010'n
  T3108300 = 'MARSTAT-COL_2010'n
  T3108900 = 'WKSWK-PCY_2010'n
  T3976200 = 'Q12-3_2012'n
  T4112200 = 'FAMSIZE_2012'n
  T4112800 = 'MARSTAT-COL_2012'n
  T4113400 = 'WKSWK-PCY_2012'n
  T4914500 = 'Q12-3_2014'n
  T5022500 = 'FAMSIZE_2014'n
  T5023200 = 'MARSTAT-COL_2014'n
  T5024800 = 'WKSWK-PCY_2014'n
  T5770700 = 'FAMSIZE_2016'n
  T5771100 = 'MARSTAT-COL_2016'n
  T5772800 = 'WKSWK-PCY_2016'n
  T8218600 = 'FAMSIZE_2018'n
  T8219200 = 'MARSTAT-COL_2018'n
  T8220000 = 'WKSWK-PCY_2018'n
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
  0-56='0 TO 56: < 57'
  57='57'
  58='58'
  59='59'
  60='60'
  61='61'
  62='62'
  63='63'
  64='64'
  65='65'
  66='66'
  67='67'
  68='68'
  69='69'
  70='70'
  71='71'
  72='72'
  73-99999='73 TO 99999: 73+'
;
value vx2f
  0-13='0 TO 13: < 14'
  14='14'
  15='15'
  16='16'
  17='17'
  18='18'
  19='19'
  20='20'
  21='21'
  22='22'
  23='23'
  24='24'
  25='25'
  26='26'
  27='27'
  28='28'
  29='29'
  30-99999='30 TO 99999: 30+'
;
value vx3f
  11='FATHER-MOTHER'
  12='FATHER-STEPMOTHER'
  13='FATHER-OTHER WOMAN RELATIVE'
  14='FATHER-OTHER WOMAN'
  15='FATHER-NO WOMAN'
  19='FATHER-MISSING WOMAN'
  21='STEPFATHER-MOTHER'
  22='STEPFATHER-STEPMOTHER'
  23='STEPFATHER-WOMAN RELATIVE'
  24='STEPFATHER-OTHER WOMAN'
  25='STEPFATHER-NO WOMAN'
  31='MAN RELATIVE-MOTHER'
  32='MAN RELATIVE-STEPMOTHER'
  33='MAN RELATIVE-WOMAN RELATIVE'
  34='MAN RELATIVE-OTHER WOMAN'
  35='MAN RELATIVE-NO WOMAN'
  41='OTHER MAN-MOTHER'
  42='OTHER MAN-STEPMOTHER'
  43='OTHER MAN-WOMAN RELATIVE'
  44='OTHER MAN-OTHER WOMAN'
  45='OTHER MAN-NO WOMAN'
  51='NO MAN-MOTHER'
  52='NO MAN-STEPMOTHER'
  53='NO MAN-WOMAN RELATIVE'
  54='NO MAN-OTHER WOMAN'
  55='NO MAN-NO WOMAN'
  80='OTHER ARRANGEMENT'
  90='ON MY OWN'
  91='MISSING MAN-MOTHER'
  93='MISSING MAN-WOMAN RELATIVE'
;
value vx4f
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
value vx5f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx6f
  1='MALE'
  2='FEMALE'
;
value vx7f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx8f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx9f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx10f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx11f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx12f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx13f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx14f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx15f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx16f
  0='NO'
  1='YES'
;
value vx17f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx18f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx19f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx20f
  0='NO'
  1='YES'
;
value vx21f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx22f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx23f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx24f
  0='NO'
  1='YES'
;
value vx25f
  0='NONE'
  1='1-2 OCCASIONS'
  2='3-5 OCCASIONS'
  3='6-9 OCCASIONS'
  4='10-19 OCCASIONS'
  5='20-39 OCCASIONS'
  6='40 OR MORE OCCASIONS'
;
value vx26f
  0='NEVER USED'
  1='1-9 OCCASIONS'
  2='10-39 OCCASIONS'
  3='40-99 OCCASIONS'
  4='100-999 OCCASIONS'
  5='1,000 OR MORE OCCASIONS'
;
value vx27f
  0='NEVER USED'
  1='1-9 OCCASIONS'
  2='10-39 OCCASIONS'
  3='40-99 OCCASIONS'
  4='100-999 OCCASIONS'
  5='1,000 OR MORE OCCASIONS'
;
value vx28f
  0='NEVER USED'
  1='1-9 OCCASIONS'
  2='10-39 OCCASIONS'
  3='40-99 OCCASIONS'
  4='100-999 OCCASIONS'
  5='1,000 OR MORE OCCASIONS'
;
value vx29f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx30f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx31f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx32f
  0='NO'
  1='YES'
;
value vx33f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx34f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx35f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx36f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx37f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx38f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx39f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx40f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx41f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx42f
  0='NO'
  1='YES'
;
value vx43f
  0='NONE'
  1='1-2 OCCASIONS'
  2='3-5 OCCASIONS'
  3='6-9 OCCASIONS'
  4='10-19 OCCASIONS'
  5='20-39 OCCASIONS'
  6='40 OR MORE OCCASIONS'
;
value vx44f
  0='NEVER'
  1='1 TO 2 OCCASIONS'
  2='3 TO 9 OCCASIONS'
  3='10 TO 39 OCCASIONS'
  4='40 TO 99 OCCASIONS'
  5='100 OR MORE OCCASIONS'
;
value vx45f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx46f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx47f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx48f
  0='NO'
  1='YES'
;
value vx49f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx50f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx51f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx52f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx53f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx54f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx55f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx56f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx57f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx58f
  1='LESS OFTEN THAN ONCE PER WEEK'
  2='1-2 DAYS PER WEEK'
  3='3-4 DAYS PER WEEK'
  4='5-6 DAYS PER WEEK'
  5='EVERY DAY'
;
value vx59f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
;
value vx60f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
;
value vx61f
  0='0: < 1'
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
  16='16'
  17-99999='17 TO 99999: 17+'
;
value vx62f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx63f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx64f
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
value vx65f
  1='NEVER MARRIED'
  2='MARRIED, SPOUSE PRESENT'
  3='OTHER'
;
value vx66f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx67f
  0='NO'
  1='YES'
;
value vx68f
  1='LESS OFTEN THAN ONCE A WEEK'
  2='1-2 DAYS PER WEEK'
  3='3-4 DAYS PER WEEK'
  4='5-6 DAYS PER WEEK'
  5='EVERY DAY'
;
value vx69f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
;
value vx70f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
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
  10-999='10 TO 999: 10+'
;
value vx72f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx73f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx74f
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
  10-999='10 TO 999: 10+'
;
value vx75f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx76f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx77f
  1='LESS OFTEN THAN ONCE A WEEK'
  2='1-2 DAYS PER WEEK'
  3='3-4 DAYS PER WEEK'
  4='5-6 DAYS PER WEEK'
  5='EVERY DAY'
;
value vx78f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
;
value vx79f
  0='NEVER'
  1='1 OR 2 TIMES'
  2='3 TO 5 TIMES'
  3='6 TO 10 TIMES'
  4='11 TO 49 TIMES'
  5='50 TO 99 TIMES'
  6='100 OR MORE TIMES'
;
value vx80f
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
  10-999='10 TO 999: 10+'
;
value vx81f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx82f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
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
  10-999='10 TO 999: 10+'
;
value vx84f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx85f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx86f
  0='No'
  1='Yes'
;
value vx87f
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
  10-999='10 TO 999: 10+'
;
value vx88f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx89f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx90f
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
  10-999='10 TO 999: 10+'
;
value vx91f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx92f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx93f
  -999='-999: MISSING DATE'
  -998='-998: NO CHILDREN'
  -997='-997: NEVER MARRIED'
  0='0: 1ST MARRIAGE AFTER 1ST BIRTH'
  1='1: 1ST MARRIAGE BEFORE 1ST BIRTH'
;
value vx94f
  0='No'
  1='Yes'
;
value vx95f
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
  10-999='10 TO 999: 10+'
;
value vx96f
  1='1: 1  NEVER MARRIED'
  2='2: 2  MARRIED, SPOUSE PRESENT'
  3='3: 3  OTHER'
;
value vx97f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx98f
  0='No'
  1='Yes'
;
value vx99f
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
  10-999='10 TO 999: 10+'
;
value vx100f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx101f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx102f
  0='No'
  1='Yes'
;
value vx103f
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
  10-999='10 TO 999: 10+'
;
value vx104f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx105f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx106f
  0='No'
  1='Yes'
;
value vx107f
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
  10-999='10 TO 999: 10+'
;
value vx108f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx109f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx110f
  0='No'
  1='Yes'
;
value vx111f
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
  10-999='10 TO 999: 10+'
;
value vx112f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx113f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx114f
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
  10-999='10 TO 999: 10+'
;
value vx115f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx116f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx117f
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
  10-999='10 TO 999: 10+'
;
value vx118f
  1='1: NEVER MARRIED'
  2='2: MARRIED, SPOUSE PRESENT'
  3='3: OTHER'
;
value vx119f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0000500 vx1f.;
  format R0000600 vx2f.;
  format R0001900 vx3f.;
  format R0173600 vx4f.;
  format R0214700 vx5f.;
  format R0214800 vx6f.;
  format R0215700 vx7f.;
  format R0217500 vx8f.;
  format R0217502 vx9f.;
  format R0405210 vx10f.;
  format R0405600 vx11f.;
  format R0407200 vx12f.;
  format R0618600 vx13f.;
  format R0646300 vx14f.;
  format R0647103 vx15f.;
  format R0780300 vx16f.;
  format R0896710 vx17f.;
  format R0896900 vx18f.;
  format R0898400 vx19f.;
  format R1021900 vx20f.;
  format R1144410 vx21f.;
  format R1144900 vx22f.;
  format R1145300 vx23f.;
  format R1391000 vx24f.;
  format R1395700 vx25f.;
  format R1404100 vx26f.;
  format R1404700 vx27f.;
  format R1405300 vx28f.;
  format R1519610 vx29f.;
  format R1520100 vx30f.;
  format R1520500 vx31f.;
  format R1774600 vx32f.;
  format R1890210 vx33f.;
  format R1890800 vx34f.;
  format R1891200 vx35f.;
  format R2257410 vx36f.;
  format R2257900 vx37f.;
  format R2258300 vx38f.;
  format R2444610 vx39f.;
  format R2445300 vx40f.;
  format R2445700 vx41f.;
  format R2716600 vx42f.;
  format R2721100 vx43f.;
  format R2721200 vx44f.;
  format R2870110 vx45f.;
  format R2870900 vx46f.;
  format R2871500 vx47f.;
  format R2968200 vx48f.;
  format R3073910 vx49f.;
  format R3074600 vx50f.;
  format R3075200 vx51f.;
  format R3400600 vx52f.;
  format R3401300 vx53f.;
  format R3401900 vx54f.;
  format R3656000 vx55f.;
  format R3656700 vx56f.;
  format R3657300 vx57f.;
  format R3915300 vx58f.;
  format R3915400 vx59f.;
  format R3915800 vx60f.;
  format R4006500 vx61f.;
  format R4007200 vx62f.;
  format R4007800 vx63f.;
  format R4417600 vx64f.;
  format R4418300 vx65f.;
  format R4418900 vx66f.;
  format R4979200 vx67f.;
  format R5053400 vx68f.;
  format R5053500 vx69f.;
  format R5053900 vx70f.;
  format R5080600 vx71f.;
  format R5081300 vx72f.;
  format R5081900 vx73f.;
  format R5165900 vx74f.;
  format R5166600 vx75f.;
  format R5167200 vx76f.;
  format R6430700 vx77f.;
  format R6430800 vx78f.;
  format R6431200 vx79f.;
  format R6478600 vx80f.;
  format R6479200 vx81f.;
  format R6480000 vx82f.;
  format R7006400 vx83f.;
  format R7006900 vx84f.;
  format R7007700 vx85f.;
  format R7606400 vx86f.;
  format R7703600 vx87f.;
  format R7704200 vx88f.;
  format R7705000 vx89f.;
  format R8496000 vx90f.;
  format R8496600 vx91f.;
  format R8497400 vx92f.;
  format R9909800 vx93f.;
  format T0911100 vx94f.;
  format T0987600 vx95f.;
  format T0988400 vx96f.;
  format T0989200 vx97f.;
  format T2075400 vx98f.;
  format T2209900 vx99f.;
  format T2210400 vx100f.;
  format T2211000 vx101f.;
  format T3044000 vx102f.;
  format T3107700 vx103f.;
  format T3108300 vx104f.;
  format T3108900 vx105f.;
  format T3976200 vx106f.;
  format T4112200 vx107f.;
  format T4112800 vx108f.;
  format T4113400 vx109f.;
  format T4914500 vx110f.;
  format T5022500 vx111f.;
  format T5023200 vx112f.;
  format T5024800 vx113f.;
  format T5770700 vx114f.;
  format T5771100 vx115f.;
  format T5772800 vx116f.;
  format T8218600 vx117f.;
  format T8219200 vx118f.;
  format T8220000 vx119f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'Q1-3_A~Y_1979'n vx1f.;
  format 'FAM-1B_1979'n vx2f.;
  format 'FAM-7_1979'n vx3f.;
  format 'SAMPLE_ID_1979'n vx4f.;
  format 'SAMPLE_RACE_78SCRN'n vx5f.;
  format 'SAMPLE_SEX_1979'n vx6f.;
  format 'WKSWK-PCY_1979'n vx7f.;
  format 'MARSTAT-COL_1979'n vx8f.;
  format 'FAMSIZE_1979'n vx9f.;
  format 'FAMSIZE_1980'n vx10f.;
  format 'MARSTAT-COL_1980'n vx11f.;
  format 'WKSWK-PCY_1980'n vx12f.;
  format 'MARSTAT-COL_1981'n vx13f.;
  format 'WKSWK-PCY_1981'n vx14f.;
  format 'FAMSIZE_1981'n vx15f.;
  format 'Q12-3_1982'n vx16f.;
  format 'FAMSIZE_1982'n vx17f.;
  format 'WKSWK-PCY_1982'n vx18f.;
  format 'MARSTAT-COL_1982'n vx19f.;
  format 'Q12-3_1983'n vx20f.;
  format 'FAMSIZE_1983'n vx21f.;
  format 'MARSTAT-COL_1983'n vx22f.;
  format 'WKSWK-PCY_1983'n vx23f.;
  format 'Q12-3_1984'n vx24f.;
  format 'DS-11_1984'n vx25f.;
  format 'DS-12_1984'n vx26f.;
  format 'DRUG-27_1984'n vx27f.;
  format 'DRUG-33_1984'n vx28f.;
  format 'FAMSIZE_1984'n vx29f.;
  format 'MARSTAT-COL_1984'n vx30f.;
  format 'WKSWK-PCY_1984'n vx31f.;
  format 'Q12-3_1985'n vx32f.;
  format 'FAMSIZE_1985'n vx33f.;
  format 'MARSTAT-COL_1985'n vx34f.;
  format 'WKSWK-PCY_1985'n vx35f.;
  format 'FAMSIZE_1986'n vx36f.;
  format 'MARSTAT-COL_1986'n vx37f.;
  format 'WKSWK-PCY_1986'n vx38f.;
  format 'FAMSIZE_1987'n vx39f.;
  format 'MARSTAT-COL_1987'n vx40f.;
  format 'WKSWK-PCY_1987'n vx41f.;
  format 'Q12-3_1988'n vx42f.;
  format 'DS-11_1988'n vx43f.;
  format 'DS-12_1988'n vx44f.;
  format 'FAMSIZE_1988'n vx45f.;
  format 'MARSTAT-COL_1988'n vx46f.;
  format 'WKSWK-PCY_1988'n vx47f.;
  format 'Q12-3_1989'n vx48f.;
  format 'FAMSIZE_1989'n vx49f.;
  format 'MARSTAT-COL_1989'n vx50f.;
  format 'WKSWK-PCY_1989'n vx51f.;
  format 'FAMSIZE_1990'n vx52f.;
  format 'MARSTAT-COL_1990'n vx53f.;
  format 'WKSWK-PCY_1990'n vx54f.;
  format 'FAMSIZE_1991'n vx55f.;
  format 'MARSTAT-COL_1991'n vx56f.;
  format 'WKSWK-PCY_1991'n vx57f.;
  format 'DS-11_1992'n vx58f.;
  format 'DS-12_1992'n vx59f.;
  format 'DS-16_1992'n vx60f.;
  format 'FAMSIZE_1992'n vx61f.;
  format 'MARSTAT-COL_1992'n vx62f.;
  format 'WKSWK-PCY_1992'n vx63f.;
  format 'FAMSIZE_1993'n vx64f.;
  format 'MARSTAT-COL_1993'n vx65f.;
  format 'WKSWK-PCY_1993'n vx66f.;
  format 'Q12-3_1994'n vx67f.;
  format 'DS-11_1994'n vx68f.;
  format 'DS-12_1994'n vx69f.;
  format 'DS-16_1994'n vx70f.;
  format 'FAMSIZE_1994'n vx71f.;
  format 'MARSTAT-COL_1994'n vx72f.;
  format 'WKSWK-PCY_1994'n vx73f.;
  format 'FAMSIZE_1996'n vx74f.;
  format 'MARSTAT-COL_1996'n vx75f.;
  format 'WKSWK-PCY_1996'n vx76f.;
  format 'DS-11_1998'n vx77f.;
  format 'DS-12_1998'n vx78f.;
  format 'DS-16_1998'n vx79f.;
  format 'FAMSIZE_1998'n vx80f.;
  format 'MARSTAT-COL_1998'n vx81f.;
  format 'WKSWK-PCY_1998'n vx82f.;
  format 'FAMSIZE_2000'n vx83f.;
  format 'MARSTAT-COL_2000'n vx84f.;
  format 'WKSWK-PCY_2000'n vx85f.;
  format 'Q12-3_2002'n vx86f.;
  format 'FAMSIZE_2002'n vx87f.;
  format 'MARSTAT-COL_2002'n vx88f.;
  format 'WKSWK-PCY_2002'n vx89f.;
  format 'FAMSIZE_2004'n vx90f.;
  format 'MARSTAT-COL_2004'n vx91f.;
  format 'WKSWK-PCY_2004'n vx92f.;
  format 'FL1M1B_XRND'n vx93f.;
  format 'Q12-3_2006'n vx94f.;
  format 'FAMSIZE_2006'n vx95f.;
  format 'MARSTAT-COL_2006'n vx96f.;
  format 'WKSWK-PCY_2006'n vx97f.;
  format 'Q12-3_2008'n vx98f.;
  format 'FAMSIZE_2008'n vx99f.;
  format 'MARSTAT-COL_2008'n vx100f.;
  format 'WKSWK-PCY_2008'n vx101f.;
  format 'Q12-3_2010'n vx102f.;
  format 'FAMSIZE_2010'n vx103f.;
  format 'MARSTAT-COL_2010'n vx104f.;
  format 'WKSWK-PCY_2010'n vx105f.;
  format 'Q12-3_2012'n vx106f.;
  format 'FAMSIZE_2012'n vx107f.;
  format 'MARSTAT-COL_2012'n vx108f.;
  format 'WKSWK-PCY_2012'n vx109f.;
  format 'Q12-3_2014'n vx110f.;
  format 'FAMSIZE_2014'n vx111f.;
  format 'MARSTAT-COL_2014'n vx112f.;
  format 'WKSWK-PCY_2014'n vx113f.;
  format 'FAMSIZE_2016'n vx114f.;
  format 'MARSTAT-COL_2016'n vx115f.;
  format 'WKSWK-PCY_2016'n vx116f.;
  format 'FAMSIZE_2018'n vx117f.;
  format 'MARSTAT-COL_2018'n vx118f.;
  format 'WKSWK-PCY_2018'n vx119f.;
run;
*/