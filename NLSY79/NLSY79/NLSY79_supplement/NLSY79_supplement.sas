options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79_supplement.dat' lrecl=95 missover DSD DLM=' ' print;
input
  R0000100
  R0173600
  R0214700
  R0214800
  T3094800
  T3094900
  T3094901
  T3094902
  T3094903
  T3094904
  T3094905
  T3094906
  T4093500
  T4093900
  T4094000
  T4094001
  T4094002
  T4094003
  T4094004
  T4094005
  T4094006
  T4998700
  T4999100
  T4999200
  T4999201
  T4999202
  T4999203
  T4999204
  T4999205
  T4999206
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
  label T3094800 = "R IS RISK-AVERSE OR RISK-TAKING 2010";
  label T3094900 = "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2010";
  label T3094901 = "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2010";
  label T3094902 = "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2010";
  label T3094903 = "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2010";
  label T3094904 = "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2010";
  label T3094905 = "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2010";
  label T3094906 = "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2010";
  label T4093500 = "R INTERVIEWED IN 2010? 2012";
  label T4093900 = "R IS RISK-AVERSE OR RISK-TAKING 2012";
  label T4094000 = "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2012";
  label T4094001 = "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2012";
  label T4094002 = "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2012";
  label T4094003 = "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2012";
  label T4094004 = "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2012";
  label T4094005 = "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2012";
  label T4094006 = "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2012";
  label T4998700 = "R INTERVIEWED IN OR AFTER 2010? 2014";
  label T4999100 = "R IS RISK-AVERSE OR RISK-TAKING 2014";
  label T4999200 = "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2014";
  label T4999201 = "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2014";
  label T4999202 = "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2014";
  label T4999203 = "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2014";
  label T4999204 = "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2014";
  label T4999205 = "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2014";
  label T4999206 = "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2014";

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
  T3094800 = 'RISK_4_2010'n
  T3094900 = 'RISK_5~000001_2010'n
  T3094901 = 'RISK_5~000002_2010'n
  T3094902 = 'RISK_5~000003_2010'n
  T3094903 = 'RISK_5~000004_2010'n
  T3094904 = 'RISK_5~000005_2010'n
  T3094905 = 'RISK_5~000006_2010'n
  T3094906 = 'RISK_5~000007_2010'n
  T4093500 = 'RISK_LINT_2012'n
  T4093900 = 'RISK_4_2012'n
  T4094000 = 'RISK_5~000001_2012'n
  T4094001 = 'RISK_5~000002_2012'n
  T4094002 = 'RISK_5~000003_2012'n
  T4094003 = 'RISK_5~000004_2012'n
  T4094004 = 'RISK_5~000005_2012'n
  T4094005 = 'RISK_5~000006_2012'n
  T4094006 = 'RISK_5~000007_2012'n
  T4998700 = 'RISK_LINT_2014'n
  T4999100 = 'RISK_4_2014'n
  T4999200 = 'RISK_5~000001_2014'n
  T4999201 = 'RISK_5~000002_2014'n
  T4999202 = 'RISK_5~000003_2014'n
  T4999203 = 'RISK_5~000004_2014'n
  T4999204 = 'RISK_5~000005_2014'n
  T4999205 = 'RISK_5~000006_2014'n
  T4999206 = 'RISK_5~000007_2014'n
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
  10-9999='10 TO 9999: 10+'
;
value vx5f
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
;
value vx11f
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
;
value vx12f
  0='0: 0  CONDITION DOES NOT APPLY'
  1='1: 1  CONDITION APPLIES'
;
value vx13f
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
  10-9999='10 TO 9999: 10+'
;
value vx14f
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
;
value vx15f
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
;
value vx16f
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
;
value vx17f
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
;
value vx18f
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
;
value vx19f
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
;
value vx20f
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
;
value vx21f
  0='0: 0  CONDITION DOES NOT APPLY'
  1='1: 1  CONDITION APPLIES'
;
value vx22f
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
  10-9999='10 TO 9999: 10+'
;
value vx23f
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
;
value vx24f
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
;
value vx25f
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
;
value vx26f
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
;
value vx27f
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
;
value vx28f
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
;
value vx29f
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
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0173600 vx1f.;
  format R0214700 vx2f.;
  format R0214800 vx3f.;
  format T3094800 vx4f.;
  format T3094900 vx5f.;
  format T3094901 vx6f.;
  format T3094902 vx7f.;
  format T3094903 vx8f.;
  format T3094904 vx9f.;
  format T3094905 vx10f.;
  format T3094906 vx11f.;
  format T4093500 vx12f.;
  format T4093900 vx13f.;
  format T4094000 vx14f.;
  format T4094001 vx15f.;
  format T4094002 vx16f.;
  format T4094003 vx17f.;
  format T4094004 vx18f.;
  format T4094005 vx19f.;
  format T4094006 vx20f.;
  format T4998700 vx21f.;
  format T4999100 vx22f.;
  format T4999200 vx23f.;
  format T4999201 vx24f.;
  format T4999202 vx25f.;
  format T4999203 vx26f.;
  format T4999204 vx27f.;
  format T4999205 vx28f.;
  format T4999206 vx29f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'SAMPLE_ID_1979'n vx1f.;
  format 'SAMPLE_RACE_78SCRN'n vx2f.;
  format 'SAMPLE_SEX_1979'n vx3f.;
  format 'RISK_4_2010'n vx4f.;
  format 'RISK_5~000001_2010'n vx5f.;
  format 'RISK_5~000002_2010'n vx6f.;
  format 'RISK_5~000003_2010'n vx7f.;
  format 'RISK_5~000004_2010'n vx8f.;
  format 'RISK_5~000005_2010'n vx9f.;
  format 'RISK_5~000006_2010'n vx10f.;
  format 'RISK_5~000007_2010'n vx11f.;
  format 'RISK_LINT_2012'n vx12f.;
  format 'RISK_4_2012'n vx13f.;
  format 'RISK_5~000001_2012'n vx14f.;
  format 'RISK_5~000002_2012'n vx15f.;
  format 'RISK_5~000003_2012'n vx16f.;
  format 'RISK_5~000004_2012'n vx17f.;
  format 'RISK_5~000005_2012'n vx18f.;
  format 'RISK_5~000006_2012'n vx19f.;
  format 'RISK_5~000007_2012'n vx20f.;
  format 'RISK_LINT_2014'n vx21f.;
  format 'RISK_4_2014'n vx22f.;
  format 'RISK_5~000001_2014'n vx23f.;
  format 'RISK_5~000002_2014'n vx24f.;
  format 'RISK_5~000003_2014'n vx25f.;
  format 'RISK_5~000004_2014'n vx26f.;
  format 'RISK_5~000005_2014'n vx27f.;
  format 'RISK_5~000006_2014'n vx28f.;
  format 'RISK_5~000007_2014'n vx29f.;
run;
*/