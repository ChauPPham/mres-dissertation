options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79CYA_supplement.dat' lrecl=119 missover DSD DLM=' ' print;
input
  C0000100
  C0000200
  C0003800
  C0003900
  C0004000
  C0004100
  C0004200
  C0004300
  C0004400
  C0004500
  C0004600
  C0004700
  C0004710
  C0004720
  C0004730
  C0004740
  C0004741
  C0004742
  C0004743
  C0004744
  C0004745
  C0004746
  C0004747
  C0004748
  C0005300
  C0005400
  C0005700
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
  label C0003800 = "AGE OF CHILD (MOS) AT INT OF MOTHER 79";
  label C0003900 = "AGE OF CHILD (MOS) AT INT OF MOTHER 80";
  label C0004000 = "AGE OF CHILD (MOS) AT INT OF MOTHER 81";
  label C0004100 = "AGE OF CHILD (MOS) AT INT OF MOTHER 82";
  label C0004200 = "AGE OF CHILD (MOS) AT INT OF MOTHER 83";
  label C0004300 = "AGE OF CHILD (MOS) AT INT OF MOTHER 84";
  label C0004400 = "AGE OF CHILD (MOS) AT INT OF MOTHER 85";
  label C0004500 = "AGE OF CHILD (MOS) AT INT OF MOTHER 86";
  label C0004600 = "AGE OF CHILD (MOS) AT INT OF MOTHER 87";
  label C0004700 = "AGE OF CHILD (MOS) AT INT OF MOTHER 88";
  label C0004710 = "AGE OF CHILD (MOS) AT INT OF MOTHER 89";
  label C0004720 = "AGE OF CHILD (MOS) AT INT OF MOTHER 90";
  label C0004730 = "AGE OF CHILD (MOS) AT INT OF MOTHER 91";
  label C0004740 = "AGE OF CHILD (MOS) AT INT OF MOTHER 92";
  label C0004741 = "AGE OF CHILD (MOS) AT INT OF MOTHER 93";
  label C0004742 = "AGE OF CHILD (MOS) AT INT OF MOTHER 94";
  label C0004743 = "AGE OF CHILD (MOS) AT INT OF MOTHER 96";
  label C0004744 = "AGE OF CHILD (MOS) AT INT OF MOTHER 1998";
  label C0004745 = "AGE OF CHILD (MOS) AT INT OF MOTHER 2000";
  label C0004746 = "AGE OF CHILD (MOS) AT INT OF MOTHER 2002";
  label C0004747 = "AGE OF CHILD (MOS) AT INT OF MOTHER 2004";
  label C0004748 = "AGE OF CHILD (MOS) AT INT OF MOTHER 2006";
  label C0005300 = "RACE OF CHILD (FROM MOTHERS SCREENER 79)";
  label C0005400 = "SEX OF CHILD";
  label C0005700 = "DATE OF BIRTH OF CHILD - YEAR";
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
  C0003800 = 'AGECH1979_1979'n
  C0003900 = 'AGECH1980_1980'n
  C0004000 = 'AGECH1981_1981'n
  C0004100 = 'AGECH1982_1982'n
  C0004200 = 'AGECH1983_1983'n
  C0004300 = 'AGECH1984_1984'n
  C0004400 = 'AGECH1985_1985'n
  C0004500 = 'AGECH1986_1986'n
  C0004600 = 'AGECH1987_1987'n
  C0004700 = 'AGECH1988_1988'n
  C0004710 = 'AGECH1989_1989'n
  C0004720 = 'AGECH1990_1990'n
  C0004730 = 'AGECH1991_1991'n
  C0004740 = 'AGECH1992_1992'n
  C0004741 = 'AGECH1993_1993'n
  C0004742 = 'AGECH1994_1994'n
  C0004743 = 'AGECH1996_1996'n
  C0004744 = 'AGECH1998_1998'n
  C0004745 = 'AGECH2000_2000'n
  C0004746 = 'AGECH2002_2002'n
  C0004747 = 'AGECH2004_2004'n
  C0004748 = 'AGECH2006_2006'n
  C0005300 = 'CRACE_XRND'n
  C0005400 = 'CSEX_XRND'n
  C0005700 = 'CYRB_XRND'n
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
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx3f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx4f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx5f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx6f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx7f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx8f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx9f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx10f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx11f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx12f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx13f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx14f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx15f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx16f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx17f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx18f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180+ MONTHS'
;
value vx19f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx20f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx21f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx22f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx23f
  0-11='0 TO 11: 0-11 MONTHS'
  12-23='12 TO 23: 12-23 MONTHS'
  24-35='24 TO 35: 24-35 MONTHS'
  36-47='36 TO 47: 36-47 MONTHS'
  48-59='48 TO 59: 48-59 MONTHS'
  60-71='60 TO 71: 60-71 MONTHS'
  72-83='72 TO 83: 72-83 MONTHS'
  84-95='84 TO 95: 84-95 MONTHS'
  96-107='96 TO 107: 96-107 MONTHS'
  108-119='108 TO 119: 108-119 MONTHS'
  120-131='120 TO 131: 120-131 MONTHS'
  132-143='132 TO 143: 132-143 MONTHS'
  144-155='144 TO 155: 144-155 MONTHS'
  156-167='156 TO 167: 156-167 MONTHS'
  168-179='168 TO 179: 168-179 MONTHS'
  180-999='180 TO 999: 180 + MONTHS'
;
value vx24f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx25f
  1='MALE'
  2='FEMALE'
;
value vx26f
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
value vx27f
  532='532'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format C0000100 vx0f.;
  format C0000200 vx1f.;
  format C0003800 vx2f.;
  format C0003900 vx3f.;
  format C0004000 vx4f.;
  format C0004100 vx5f.;
  format C0004200 vx6f.;
  format C0004300 vx7f.;
  format C0004400 vx8f.;
  format C0004500 vx9f.;
  format C0004600 vx10f.;
  format C0004700 vx11f.;
  format C0004710 vx12f.;
  format C0004720 vx13f.;
  format C0004730 vx14f.;
  format C0004740 vx15f.;
  format C0004741 vx16f.;
  format C0004742 vx17f.;
  format C0004743 vx18f.;
  format C0004744 vx19f.;
  format C0004745 vx20f.;
  format C0004746 vx21f.;
  format C0004747 vx22f.;
  format C0004748 vx23f.;
  format C0005300 vx24f.;
  format C0005400 vx25f.;
  format C0005700 vx26f.;
  format Y2267000 vx27f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'CPUBID_XRND'n vx0f.;
  format 'MPUBID_XRND'n vx1f.;
  format 'AGECH1979_1979'n vx2f.;
  format 'AGECH1980_1980'n vx3f.;
  format 'AGECH1981_1981'n vx4f.;
  format 'AGECH1982_1982'n vx5f.;
  format 'AGECH1983_1983'n vx6f.;
  format 'AGECH1984_1984'n vx7f.;
  format 'AGECH1985_1985'n vx8f.;
  format 'AGECH1986_1986'n vx9f.;
  format 'AGECH1987_1987'n vx10f.;
  format 'AGECH1988_1988'n vx11f.;
  format 'AGECH1989_1989'n vx12f.;
  format 'AGECH1990_1990'n vx13f.;
  format 'AGECH1991_1991'n vx14f.;
  format 'AGECH1992_1992'n vx15f.;
  format 'AGECH1993_1993'n vx16f.;
  format 'AGECH1994_1994'n vx17f.;
  format 'AGECH1996_1996'n vx18f.;
  format 'AGECH1998_1998'n vx19f.;
  format 'AGECH2000_2000'n vx20f.;
  format 'AGECH2002_2002'n vx21f.;
  format 'AGECH2004_2004'n vx22f.;
  format 'AGECH2006_2006'n vx23f.;
  format 'CRACE_XRND'n vx24f.;
  format 'CSEX_XRND'n vx25f.;
  format 'CYRB_XRND'n vx26f.;
  format 'VERSION_R29_XRND'n vx27f.;
run;
*/