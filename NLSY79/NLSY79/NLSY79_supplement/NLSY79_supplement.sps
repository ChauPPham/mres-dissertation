file handle pcdat/name='NLSY79_supplement.dat' /lrecl=95.
data list file pcdat free /
  R0000100 (F5)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
  T3094800 (F2)
  T3094900 (F2)
  T3094901 (F2)
  T3094902 (F2)
  T3094903 (F2)
  T3094904 (F2)
  T3094905 (F2)
  T3094906 (F2)
  T4093500 (F2)
  T4093900 (F2)
  T4094000 (F2)
  T4094001 (F2)
  T4094002 (F2)
  T4094003 (F2)
  T4094004 (F2)
  T4094005 (F2)
  T4094006 (F2)
  T4998700 (F2)
  T4999100 (F2)
  T4999200 (F2)
  T4999201 (F2)
  T4999202 (F2)
  T4999203 (F2)
  T4999204 (F2)
  T4999205 (F2)
  T4999206 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  T3094800  "R IS RISK-AVERSE OR RISK-TAKING 2010"
  T3094900  "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2010"
  T3094901  "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2010"
  T3094902  "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2010"
  T3094903  "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2010"
  T3094904  "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2010"
  T3094905  "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2010"
  T3094906  "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2010"
  T4093500  "R INTERVIEWED IN 2010? 2012"
  T4093900  "R IS RISK-AVERSE OR RISK-TAKING 2012"
  T4094000  "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2012"
  T4094001  "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2012"
  T4094002  "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2012"
  T4094003  "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2012"
  T4094004  "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2012"
  T4094005  "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2012"
  T4094006  "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2012"
  T4998700  "R INTERVIEWED IN OR AFTER 2010? 2014"
  T4999100  "R IS RISK-AVERSE OR RISK-TAKING 2014"
  T4999200  "WILLINGNESS TO TAKE RISKS WHILE DRIVING 2014"
  T4999201  "WILLINGNESS TO TAKE RISKS IN FINANCIAL MATTERS 2014"
  T4999202  "WILLINGNESS TO TAKE RISKS IN R OCCUPATION 2014"
  T4999203  "WILLINGNESS TO TAKE RISKS WITH R HEALTH 2014"
  T4999204  "WILLINGNESS TO TAKE RISKS IN R FAITH IN OTHER PP 2014"
  T4999205  "WILLINGNESS TO TAKE RISKS IN R ROMANTIC RE 2014"
  T4999206  "WILLINGNESS TO TAKE RISKS IN MAKING MJ LF CHANGES 2014"
.

* Recode continuous values. 
* recode 
    / 
 T3094800 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 9999 eq 10)
    / 
 T4093900 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 9999 eq 10)
    / 
 T4999100 
    (0 thru 0 eq 0)
    (1 thru 1 eq 1)
    (2 thru 2 eq 2)
    (3 thru 3 eq 3)
    (4 thru 4 eq 4)
    (5 thru 5 eq 5)
    (6 thru 6 eq 6)
    (7 thru 7 eq 7)
    (8 thru 8 eq 8)
    (9 thru 9 eq 9)
    (10 thru 9999 eq 10)
.

* value labels
 R0173600
    1 "CROSS MALE WHITE"
    2 "CROSS MALE WH. POOR"
    3 "CROSS MALE BLACK"
    4 "CROSS MALE HISPANIC"
    5 "CROSS FEMALE WHITE"
    6 "CROSS FEMALE WH POOR"
    7 "CROSS FEMALE BLACK"
    8 "CROSS FEMALE HISPANIC"
    9 "SUP MALE WH POOR"
    10 "SUP MALE BLACK"
    11 "SUP MALE HISPANIC"
    12 "SUP FEM WH POOR"
    13 "SUP FEMALE BLACK"
    14 "SUP FEMALE HISPANIC"
    15 "MIL MALE WHITE"
    16 "MIL MALE BLACK"
    17 "MIL MALE HISPANIC"
    18 "MIL FEMALE WHITE"
    19 "MIL FEMALE BLACK"
    20 "MIL FEMALE HISPANIC"
    /
 R0214700
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 R0214800
    1 "MALE"
    2 "FEMALE"
    /
 T3094800
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 9999: 10+"
    /
 T3094900
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094901
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094902
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094903
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094904
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094905
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T3094906
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4093500
    0 "0: 0  CONDITION DOES NOT APPLY"
    1 "1: 1  CONDITION APPLIES"
    /
 T4093900
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 9999: 10+"
    /
 T4094000
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094001
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094002
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094003
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094004
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094005
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4094006
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4998700
    0 "0: 0  CONDITION DOES NOT APPLY"
    1 "1: 1  CONDITION APPLIES"
    /
 T4999100
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10 TO 9999: 10+"
    /
 T4999200
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999201
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999202
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999203
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999204
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999205
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
 T4999206
    0 "0"
    1 "1"
    2 "2"
    3 "3"
    4 "4"
    5 "5"
    6 "6"
    7 "7"
    8 "8"
    9 "9"
    10 "10"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (T3094800 = RISK_4_2010) 
  (T3094900 = RISK_5_000001_2010)   /* RISK_5~000001 */
  (T3094901 = RISK_5_000002_2010)   /* RISK_5~000002 */
  (T3094902 = RISK_5_000003_2010)   /* RISK_5~000003 */
  (T3094903 = RISK_5_000004_2010)   /* RISK_5~000004 */
  (T3094904 = RISK_5_000005_2010)   /* RISK_5~000005 */
  (T3094905 = RISK_5_000006_2010)   /* RISK_5~000006 */
  (T3094906 = RISK_5_000007_2010)   /* RISK_5~000007 */
  (T4093500 = RISK_LINT_2012) 
  (T4093900 = RISK_4_2012) 
  (T4094000 = RISK_5_000001_2012)   /* RISK_5~000001 */
  (T4094001 = RISK_5_000002_2012)   /* RISK_5~000002 */
  (T4094002 = RISK_5_000003_2012)   /* RISK_5~000003 */
  (T4094003 = RISK_5_000004_2012)   /* RISK_5~000004 */
  (T4094004 = RISK_5_000005_2012)   /* RISK_5~000005 */
  (T4094005 = RISK_5_000006_2012)   /* RISK_5~000006 */
  (T4094006 = RISK_5_000007_2012)   /* RISK_5~000007 */
  (T4998700 = RISK_LINT_2014) 
  (T4999100 = RISK_4_2014) 
  (T4999200 = RISK_5_000001_2014)   /* RISK_5~000001 */
  (T4999201 = RISK_5_000002_2014)   /* RISK_5~000002 */
  (T4999202 = RISK_5_000003_2014)   /* RISK_5~000003 */
  (T4999203 = RISK_5_000004_2014)   /* RISK_5~000004 */
  (T4999204 = RISK_5_000005_2014)   /* RISK_5~000005 */
  (T4999205 = RISK_5_000006_2014)   /* RISK_5~000006 */
  (T4999206 = RISK_5_000007_2014)   /* RISK_5~000007 */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0173600, 
  R0214700, 
  R0214800, 
  T3094800, 
  T3094900, 
  T3094901, 
  T3094902, 
  T3094903, 
  T3094904, 
  T3094905, 
  T3094906, 
  T4093500, 
  T4093900, 
  T4094000, 
  T4094001, 
  T4094002, 
  T4094003, 
  T4094004, 
  T4094005, 
  T4094006, 
  T4998700, 
  T4999100, 
  T4999200, 
  T4999201, 
  T4999202, 
  T4999203, 
  T4999204, 
  T4999205, 
  T4999206.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  RISK_4_2010, 
  RISK_5_000001_2010, 
  RISK_5_000002_2010, 
  RISK_5_000003_2010, 
  RISK_5_000004_2010, 
  RISK_5_000005_2010, 
  RISK_5_000006_2010, 
  RISK_5_000007_2010, 
  RISK_LINT_2012, 
  RISK_4_2012, 
  RISK_5_000001_2012, 
  RISK_5_000002_2012, 
  RISK_5_000003_2012, 
  RISK_5_000004_2012, 
  RISK_5_000005_2012, 
  RISK_5_000006_2012, 
  RISK_5_000007_2012, 
  RISK_LINT_2014, 
  RISK_4_2014, 
  RISK_5_000001_2014, 
  RISK_5_000002_2014, 
  RISK_5_000003_2014, 
  RISK_5_000004_2014, 
  RISK_5_000005_2014, 
  RISK_5_000006_2014, 
  RISK_5_000007_2014.
