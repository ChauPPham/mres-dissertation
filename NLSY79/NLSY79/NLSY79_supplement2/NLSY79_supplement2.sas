options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79_supplement2.dat' lrecl=275 missover DSD DLM=' ' print;
input
  R0000100
  R0172500
  R0173600
  R0214700
  R0214800
  R0216400
  R0226100
  R0329200
  R0405700
  R0413700
  R0530700
  R0602810
  R0659600
  R0809900
  R0897910
  R0902900
  R1045700
  R1144800
  R1202700
  R1427500
  R1520000
  R1602000
  R1794600
  R1890700
  R1902000
  R2156200
  R2257800
  R2302000
  R2365700
  R2445200
  R2503100
  R2742500
  R2870800
  R2903100
  R2986100
  R3074500
  R3104500
  R3302500
  R3401200
  R3504500
  R3573400
  R3656600
  R3704500
  R3917600
  R4007100
  R4100200
  R4123200
  R4418200
  R4500201
  R4519200
  R5081200
  R5166500
  R5200201
  R5218200
  R5817700
  R6435301
  R6479100
  R6749700
  R6963301
  R7006800
  R7396900
  R7656301
  R7704100
  R7800501
  R8090200
  R8496500
  T0000901
  T0321700
  T0988300
  T1200701
  T1471300
  T2210300
  T2260601
  T2520200
  T3108200
  T3195601
  T3506500
  T4112700
  T4181101
  T4478200
  T5023100
  T5150001
  T5424100
  T5771000
  T7720001
  T7979900
  T8219100
  T8330001
  T8584600
  T8788300
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
  label R0172500 = "INT REM INT DATE - MONTH 79";
  label R0173600 = "SAMPLE ID  79 INT";
  label R0214700 = "RACL/ETHNIC COHORT /SCRNR 79";
  label R0214800 = "SEX OF R 79";
  label R0216400 = "REGION OF CURRENT RESIDENCE 79";
  label R0226100 = "# WEEKS WRKD BY SP 79 80";
  label R0329200 = "INT REM INT DATE - MONTH 80";
  label R0405700 = "REGION OF CURRENT RESIDENCE 80";
  label R0413700 = "# WEEKS WRKD BY SP 80 81";
  label R0530700 = "INT REM INT DATE - MONTH 81";
  label R0602810 = "REGION OF CURRENT RESIDENCE 81";
  label R0659600 = "# WEEKS WRKD BY SP 81 82";
  label R0809900 = "INT REM INT DATE - MONTH 82";
  label R0897910 = "REGION OF CURRENT RESIDENCE 82";
  label R0902900 = "# WEEKS WRKD BY SP 82 83";
  label R1045700 = "INT REM INT DATE - MONTH 83";
  label R1144800 = "REGION OF CURRENT RESIDENCE 83";
  label R1202700 = "# WEEKS WRKD BY SP 83 84";
  label R1427500 = "INT REM INT DATE - MONTH 84";
  label R1520000 = "REGION OF CURRENT RESIDENCE 84";
  label R1602000 = "# WEEKS WRKD BY SP 84 85";
  label R1794600 = "INT REM INT DATE - MONTH 85";
  label R1890700 = "REGION OF CURRENT RESIDENCE 85";
  label R1902000 = "# WEEKS WRKD BY SP 85 86";
  label R2156200 = "INT REM INT DATE - MONTH 86";
  label R2257800 = "REGION OF CURRENT RESIDENCE 86";
  label R2302000 = "# WEEKS WRKD BY SP 86 87";
  label R2365700 = "INT REM INT DATE - MONTH 87";
  label R2445200 = "REGION OF CURRENT RESIDENCE 87";
  label R2503100 = "# WEEKS WRKD BY SP 87 88";
  label R2742500 = "INT REM INT DATE - MONTH 88";
  label R2870800 = "REGION OF CURRENT RESIDENCE 88";
  label R2903100 = "# WEEKS WRKD BY SP 88 89";
  label R2986100 = "INT REM INT DATE - MONTH 89";
  label R3074500 = "REGION OF CURRENT RESIDENCE 89";
  label R3104500 = "# WEEKS WRKD BY SP 89 90";
  label R3302500 = "INT REM INT DATE - MONTH 90";
  label R3401200 = "REGION OF CURRENT RESIDENCE 90";
  label R3504500 = "# WEEKS WRKD BY SP 90 91";
  label R3573400 = "INT REM INT DATE - MONTH 91";
  label R3656600 = "REGION OF CURRENT RESIDENCE 91";
  label R3704500 = "# WEEKS WRKD BY SP 91 92";
  label R3917600 = "INT REM INT DATE - MONTH 92";
  label R4007100 = "REGION OF CURRENT RESIDENCE 92";
  label R4100200 = "DATE OF INTERVIEW 93:MO";
  label R4123200 = "NUMBER OF WEEKS WORKED BY SP IN 1993";
  label R4418200 = "REGION OF RESIDENCE 93";
  label R4500201 = "DATE OF INTERVIEW 94";
  label R4519200 = "NUM OF WKS WRKD SP-PAR 1993 94";
  label R5081200 = "REGION OF RESIDENCE 94";
  label R5166500 = "REGION OF RESIDENCE 96";
  label R5200201 = "DATE OF INTERVIEW 96";
  label R5218200 = "# WKS WRKD SP-PAR 1995 96";
  label R5817700 = "NUM OF WKS WRKD SP-PAR 1997 1998";
  label R6435301 = "DATE OF INTERVIEW - MONTH 1998";
  label R6479100 = "REGION OF RESIDENCE 1998";
  label R6749700 = "NUM OF WKS WRKD SP-PAR 1999 2000";
  label R6963301 = "DATE OF INTERVIEW - MONTH 2000";
  label R7006800 = "REGION OF RESIDENCE 2000";
  label R7396900 = "NUM OF WKS WRKD SP-PAR 2001 2002";
  label R7656301 = "DATE OF INTERVIEW - MONTH 2002";
  label R7704100 = "REGION OF RESIDENCE 2002";
  label R7800501 = "DATE OF INTERVIEW - MONTH 2004";
  label R8090200 = "NUM OF WKS WRKD SP-PAR 2003 2004";
  label R8496500 = "REGION OF RESIDENCE 2004";
  label T0000901 = "DATE OF INTERVIEW - MONTH 2006";
  label T0321700 = "NUM OF WKS WRKD SP-PAR 2005 2006";
  label T0988300 = "REGION OF RESIDENCE 2006";
  label T1200701 = "DATE OF INTERVIEW - MONTH 2008";
  label T1471300 = "NUM OF WKS WRKD SP-PAR 2007 2008";
  label T2210300 = "REGION OF RESIDENCE 2008";
  label T2260601 = "DATE OF INTERVIEW - MONTH 2010";
  label T2520200 = "NUM OF WKS WRKD SP-PAR 2009 2010";
  label T3108200 = "REGION OF RESIDENCE 2010";
  label T3195601 = "DATE OF INTERVIEW - MONTH 2012";
  label T3506500 = "NUM OF WKS WRKD SP-PAR 2011 2012";
  label T4112700 = "REGION OF RESIDENCE 2012";
  label T4181101 = "DATE OF INTERVIEW - MONTH 2014";
  label T4478200 = "NUM OF WKS WRKD SP-PAR PCY 2014";
  label T5023100 = "REGION OF RESIDENCE 2014";
  label T5150001 = "DATE OF INTERVIEW - MONTH 2016";
  label T5424100 = "NUM OF WKS WRKD SP-PAR PCY 2016";
  label T5771000 = "REGION OF RESIDENCE 2016";
  label T7720001 = "DATE OF INTERVIEW - MONTH 2018";
  label T7979900 = "NUM OF WKS WRKD SP-PAR PCY 2018";
  label T8219100 = "REGION OF RESIDENCE 2018";
  label T8330001 = "DATE OF INTERVIEW - MONTH 2020";
  label T8584600 = "NUM OF WKS WRKD SP-PAR PCY 2020";
  label T8788300 = "REGION OF RESIDENCE 2020";

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
  R0172500 = 'CURDATE~M_1979'n
  R0173600 = 'SAMPLE_ID_1979'n
  R0214700 = 'SAMPLE_RACE_78SCRN'n
  R0214800 = 'SAMPLE_SEX_1979'n
  R0216400 = 'REGION_1979'n
  R0226100 = 'Q2-15A_1980'n
  R0329200 = 'CURDATE~M_1980'n
  R0405700 = 'REGION_1980'n
  R0413700 = 'Q2-15A_1981'n
  R0530700 = 'CURDATE~M_1981'n
  R0602810 = 'REGION_1981'n
  R0659600 = 'Q2-15A_1982'n
  R0809900 = 'CURDATE~M_1982'n
  R0897910 = 'REGION_1982'n
  R0902900 = 'Q2-15A_1983'n
  R1045700 = 'CURDATE~M_1983'n
  R1144800 = 'REGION_1983'n
  R1202700 = 'Q2-15A_1984'n
  R1427500 = 'CURDATE~M_1984'n
  R1520000 = 'REGION_1984'n
  R1602000 = 'Q2-15A_1985'n
  R1794600 = 'CURDATE~M_1985'n
  R1890700 = 'REGION_1985'n
  R1902000 = 'Q2-15A_1986'n
  R2156200 = 'CURDATE~M_1986'n
  R2257800 = 'REGION_1986'n
  R2302000 = 'Q2-15A_1987'n
  R2365700 = 'CURDATE~M_1987'n
  R2445200 = 'REGION_1987'n
  R2503100 = 'Q2-15A_1988'n
  R2742500 = 'CURDATE~M_1988'n
  R2870800 = 'REGION_1988'n
  R2903100 = 'Q2-15A_1989'n
  R2986100 = 'CURDATE~M_1989'n
  R3074500 = 'REGION_1989'n
  R3104500 = 'Q2-15A_1990'n
  R3302500 = 'CURDATE~M_1990'n
  R3401200 = 'REGION_1990'n
  R3504500 = 'Q2-15A_1991'n
  R3573400 = 'CURDATE~M_1991'n
  R3656600 = 'REGION_1991'n
  R3704500 = 'Q2-15A_1992'n
  R3917600 = 'CURDATE~M_1992'n
  R4007100 = 'REGION_1992'n
  R4100200 = 'CURDATE~M_1993'n
  R4123200 = 'Q2-15A_1993'n
  R4418200 = 'REGION_1993'n
  R4500201 = 'CURDATE~M_1994'n
  R4519200 = 'Q2-15A_1994'n
  R5081200 = 'REGION_1994'n
  R5166500 = 'REGION_1996'n
  R5200201 = 'CURDATE~M_1996'n
  R5218200 = 'Q2-15A_1996'n
  R5817700 = 'Q2-15A_1998'n
  R6435301 = 'CURDATE~M_1998'n
  R6479100 = 'REGION_1998'n
  R6749700 = 'Q2-15A_2000'n
  R6963301 = 'CURDATE~M_2000'n
  R7006800 = 'REGION_2000'n
  R7396900 = 'Q2-15A_2002'n
  R7656301 = 'CURDATE~M_2002'n
  R7704100 = 'REGION_2002'n
  R7800501 = 'CURDATE~M_2004'n
  R8090200 = 'Q2-15A_2004'n
  R8496500 = 'REGION_2004'n
  T0000901 = 'CURDATE~M_2006'n
  T0321700 = 'Q2-15A_2006'n
  T0988300 = 'REGION_2006'n
  T1200701 = 'CURDATE~M_2008'n
  T1471300 = 'Q2-15A_2008'n
  T2210300 = 'REGION_2008'n
  T2260601 = 'CURDATE~M_2010'n
  T2520200 = 'Q2-15A_2010'n
  T3108200 = 'REGION_2010'n
  T3195601 = 'CURDATE~M_2012'n
  T3506500 = 'Q2-15A_2012'n
  T4112700 = 'REGION_2012'n
  T4181101 = 'CURDATE~M_2014'n
  T4478200 = 'Q2-15A_2014'n
  T5023100 = 'REGION_2014'n
  T5150001 = 'CURDATE~M_2016'n
  T5424100 = 'Q2-15A_2016'n
  T5771000 = 'REGION_2016'n
  T7720001 = 'CURDATE~M_2018'n
  T7979900 = 'Q2-15A_2018'n
  T8219100 = 'REGION_2018'n
  T8330001 = 'CURDATE~M_2020'n
  T8584600 = 'Q2-15A_2020'n
  T8788300 = 'REGION_2020'n
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
value vx2f
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
value vx3f
  1='HISPANIC'
  2='BLACK'
  3='NON-BLACK, NON-HISPANIC'
;
value vx4f
  1='MALE'
  2='FEMALE'
;
value vx5f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx6f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx7f
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
value vx8f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx9f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
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
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
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
value vx14f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx15f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx16f
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
value vx17f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
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
value vx20f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx21f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx22f
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
value vx23f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx24f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx25f
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
value vx26f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx27f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx28f
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
value vx29f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx30f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx31f
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
value vx32f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx33f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx34f
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
value vx35f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx36f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx37f
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
value vx38f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx39f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx40f
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
value vx41f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx42f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx43f
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
value vx44f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
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
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-9999999='53 TO 9999999: > 52'
;
value vx47f
  1='NORTHEAST'
  2='NORTH CENTRAL'
  3='SOUTH'
  4='WEST'
;
value vx48f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx49f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx50f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx51f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx52f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx53f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx54f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx55f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx56f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx57f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx58f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx59f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx60f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx61f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx62f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx63f
  0='0: Month not reported'
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx64f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx65f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx66f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx67f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx68f
  1='1: 1  NORTHEAST'
  2='2: 2  NORTH CENTRAL'
  3='3: 3  SOUTH'
  4='4: 4  WEST'
;
value vx69f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx70f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx71f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx72f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
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
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx75f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
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
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx78f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx79f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx80f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx81f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
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
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx84f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
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
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
value vx87f
  1='1: January'
  2='2: February'
  3='3: March'
  4='4: April'
  5='5: May'
  6='6: June'
  7='7: July'
  8='8: August'
  9='9: September'
  10='10: October'
  11='11: November'
  12='12: December'
;
value vx88f
  0='0'
  1-13='1 TO 13'
  14-26='14 TO 26'
  27-39='27 TO 39'
  40-48='40 TO 48'
  49-51='49 TO 51'
  52='52'
  53-99999999='53 TO 99999999: > 52'
;
value vx89f
  1='1: NORTHEAST'
  2='2: NORTH CENTRAL'
  3='3: SOUTH'
  4='4: WEST'
;
*/

/* 
 *--- Tabulations using reference number variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format R0172500 vx1f.;
  format R0173600 vx2f.;
  format R0214700 vx3f.;
  format R0214800 vx4f.;
  format R0216400 vx5f.;
  format R0226100 vx6f.;
  format R0329200 vx7f.;
  format R0405700 vx8f.;
  format R0413700 vx9f.;
  format R0530700 vx10f.;
  format R0602810 vx11f.;
  format R0659600 vx12f.;
  format R0809900 vx13f.;
  format R0897910 vx14f.;
  format R0902900 vx15f.;
  format R1045700 vx16f.;
  format R1144800 vx17f.;
  format R1202700 vx18f.;
  format R1427500 vx19f.;
  format R1520000 vx20f.;
  format R1602000 vx21f.;
  format R1794600 vx22f.;
  format R1890700 vx23f.;
  format R1902000 vx24f.;
  format R2156200 vx25f.;
  format R2257800 vx26f.;
  format R2302000 vx27f.;
  format R2365700 vx28f.;
  format R2445200 vx29f.;
  format R2503100 vx30f.;
  format R2742500 vx31f.;
  format R2870800 vx32f.;
  format R2903100 vx33f.;
  format R2986100 vx34f.;
  format R3074500 vx35f.;
  format R3104500 vx36f.;
  format R3302500 vx37f.;
  format R3401200 vx38f.;
  format R3504500 vx39f.;
  format R3573400 vx40f.;
  format R3656600 vx41f.;
  format R3704500 vx42f.;
  format R3917600 vx43f.;
  format R4007100 vx44f.;
  format R4100200 vx45f.;
  format R4123200 vx46f.;
  format R4418200 vx47f.;
  format R4500201 vx48f.;
  format R4519200 vx49f.;
  format R5081200 vx50f.;
  format R5166500 vx51f.;
  format R5200201 vx52f.;
  format R5218200 vx53f.;
  format R5817700 vx54f.;
  format R6435301 vx55f.;
  format R6479100 vx56f.;
  format R6749700 vx57f.;
  format R6963301 vx58f.;
  format R7006800 vx59f.;
  format R7396900 vx60f.;
  format R7656301 vx61f.;
  format R7704100 vx62f.;
  format R7800501 vx63f.;
  format R8090200 vx64f.;
  format R8496500 vx65f.;
  format T0000901 vx66f.;
  format T0321700 vx67f.;
  format T0988300 vx68f.;
  format T1200701 vx69f.;
  format T1471300 vx70f.;
  format T2210300 vx71f.;
  format T2260601 vx72f.;
  format T2520200 vx73f.;
  format T3108200 vx74f.;
  format T3195601 vx75f.;
  format T3506500 vx76f.;
  format T4112700 vx77f.;
  format T4181101 vx78f.;
  format T4478200 vx79f.;
  format T5023100 vx80f.;
  format T5150001 vx81f.;
  format T5424100 vx82f.;
  format T5771000 vx83f.;
  format T7720001 vx84f.;
  format T7979900 vx85f.;
  format T8219100 vx86f.;
  format T8330001 vx87f.;
  format T8584600 vx88f.;
  format T8788300 vx89f.;
run;
*/

/*
*--- Tabulations using default named variables;
proc freq data=new_data;
tables _ALL_ /MISSING;
  format 'CURDATE~M_1979'n vx1f.;
  format 'SAMPLE_ID_1979'n vx2f.;
  format 'SAMPLE_RACE_78SCRN'n vx3f.;
  format 'SAMPLE_SEX_1979'n vx4f.;
  format 'REGION_1979'n vx5f.;
  format 'Q2-15A_1980'n vx6f.;
  format 'CURDATE~M_1980'n vx7f.;
  format 'REGION_1980'n vx8f.;
  format 'Q2-15A_1981'n vx9f.;
  format 'CURDATE~M_1981'n vx10f.;
  format 'REGION_1981'n vx11f.;
  format 'Q2-15A_1982'n vx12f.;
  format 'CURDATE~M_1982'n vx13f.;
  format 'REGION_1982'n vx14f.;
  format 'Q2-15A_1983'n vx15f.;
  format 'CURDATE~M_1983'n vx16f.;
  format 'REGION_1983'n vx17f.;
  format 'Q2-15A_1984'n vx18f.;
  format 'CURDATE~M_1984'n vx19f.;
  format 'REGION_1984'n vx20f.;
  format 'Q2-15A_1985'n vx21f.;
  format 'CURDATE~M_1985'n vx22f.;
  format 'REGION_1985'n vx23f.;
  format 'Q2-15A_1986'n vx24f.;
  format 'CURDATE~M_1986'n vx25f.;
  format 'REGION_1986'n vx26f.;
  format 'Q2-15A_1987'n vx27f.;
  format 'CURDATE~M_1987'n vx28f.;
  format 'REGION_1987'n vx29f.;
  format 'Q2-15A_1988'n vx30f.;
  format 'CURDATE~M_1988'n vx31f.;
  format 'REGION_1988'n vx32f.;
  format 'Q2-15A_1989'n vx33f.;
  format 'CURDATE~M_1989'n vx34f.;
  format 'REGION_1989'n vx35f.;
  format 'Q2-15A_1990'n vx36f.;
  format 'CURDATE~M_1990'n vx37f.;
  format 'REGION_1990'n vx38f.;
  format 'Q2-15A_1991'n vx39f.;
  format 'CURDATE~M_1991'n vx40f.;
  format 'REGION_1991'n vx41f.;
  format 'Q2-15A_1992'n vx42f.;
  format 'CURDATE~M_1992'n vx43f.;
  format 'REGION_1992'n vx44f.;
  format 'CURDATE~M_1993'n vx45f.;
  format 'Q2-15A_1993'n vx46f.;
  format 'REGION_1993'n vx47f.;
  format 'CURDATE~M_1994'n vx48f.;
  format 'Q2-15A_1994'n vx49f.;
  format 'REGION_1994'n vx50f.;
  format 'REGION_1996'n vx51f.;
  format 'CURDATE~M_1996'n vx52f.;
  format 'Q2-15A_1996'n vx53f.;
  format 'Q2-15A_1998'n vx54f.;
  format 'CURDATE~M_1998'n vx55f.;
  format 'REGION_1998'n vx56f.;
  format 'Q2-15A_2000'n vx57f.;
  format 'CURDATE~M_2000'n vx58f.;
  format 'REGION_2000'n vx59f.;
  format 'Q2-15A_2002'n vx60f.;
  format 'CURDATE~M_2002'n vx61f.;
  format 'REGION_2002'n vx62f.;
  format 'CURDATE~M_2004'n vx63f.;
  format 'Q2-15A_2004'n vx64f.;
  format 'REGION_2004'n vx65f.;
  format 'CURDATE~M_2006'n vx66f.;
  format 'Q2-15A_2006'n vx67f.;
  format 'REGION_2006'n vx68f.;
  format 'CURDATE~M_2008'n vx69f.;
  format 'Q2-15A_2008'n vx70f.;
  format 'REGION_2008'n vx71f.;
  format 'CURDATE~M_2010'n vx72f.;
  format 'Q2-15A_2010'n vx73f.;
  format 'REGION_2010'n vx74f.;
  format 'CURDATE~M_2012'n vx75f.;
  format 'Q2-15A_2012'n vx76f.;
  format 'REGION_2012'n vx77f.;
  format 'CURDATE~M_2014'n vx78f.;
  format 'Q2-15A_2014'n vx79f.;
  format 'REGION_2014'n vx80f.;
  format 'CURDATE~M_2016'n vx81f.;
  format 'Q2-15A_2016'n vx82f.;
  format 'REGION_2016'n vx83f.;
  format 'CURDATE~M_2018'n vx84f.;
  format 'Q2-15A_2018'n vx85f.;
  format 'REGION_2018'n vx86f.;
  format 'CURDATE~M_2020'n vx87f.;
  format 'Q2-15A_2020'n vx88f.;
  format 'REGION_2020'n vx89f.;
run;
*/