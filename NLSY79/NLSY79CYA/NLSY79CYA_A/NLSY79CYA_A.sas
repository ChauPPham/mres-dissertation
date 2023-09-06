options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79CYA_A.dat' lrecl=387 missover DSD DLM=' ' print;
input
  C0000100
  C0000200
  C0005300
  C0005400
  C0005700
  C0540800
  C0540900
  C0541000
  C0541100
  C0541200
  C0541300
  C0541500
  C0541600
  C0751200
  C0751300
  C0751400
  C0751500
  C0751600
  C0751700
  C0751900
  C0752000
  C0952300
  C0952400
  C0952500
  C0952600
  C0952700
  C0952800
  C0953600
  C0953700
  C1150400
  C1150500
  C1150600
  C1150700
  C1150800
  C1150900
  C1151700
  C1151800
  C1401200
  C1401300
  C1401400
  C1401500
  C1401600
  C1401700
  C1402500
  C1402600
  C1602900
  C1603000
  C1603100
  C1603200
  C1603300
  C1603400
  C1603900
  C1604200
  C1943400
  C1943500
  C1943600
  C1943700
  C1943800
  C1943900
  C1944700
  C1944800
  C2264100
  C2264200
  C2264300
  C2264400
  C2264500
  C2264600
  C2265700
  C2265800
  C2708900
  C2709000
  C2709100
  C2709200
  C2709300
  C2709400
  C2710500
  C2710600
  C2985500
  C2985600
  C2985700
  C2985800
  C2985900
  C2986000
  C2987000
  C2987100
  C3388000
  C3388100
  C3388200
  C3388300
  C3388400
  C3388500
  C3389500
  C3389600
  C3913800
  C3913900
  C3914000
  C3914100
  C3914200
  C3914300
  C3915300
  C3915400
  C5165300
  C5165400
  C5165500
  C5165600
  C5165700
  C5165800
  C5166600
  C5166700
  C5741500
  C5741600
  C5741700
  C5741800
  C5741900
  C5742000
  C5743000
  C5743100
  C6080800
  C6080900
  C6081000
  C6081100
  C6081200
  C6081300
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
  label C0540800 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C0540900 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C0541000 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C0541100 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C0541200 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C0541300 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C0541500 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C0541600 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C0751200 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C0751300 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C0751400 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C0751500 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C0751600 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C0751700 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C0751900 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C0752000 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C0952300 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C0952400 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C0952500 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C0952600 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C0952700 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C0952800 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C0953600 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C0953700 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C1150400 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C1150500 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C1150600 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C1150700 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C1150800 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C1150900 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C1151700 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C1151800 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C1401200 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C1401300 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C1401400 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C1401500 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C1401600 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C1401700 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C1402500 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C1402600 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C1602900 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE";
  label C1603000 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS";
  label C1603100 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD";
  label C1603200 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC";
  label C1603300 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS";
  label C1603400 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS";
  label C1603900 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD";
  label C1604200 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY";
  label C1943400 = "HOME A: HOW OFT CH GETS OUT OF HSE 1998";
  label C1943500 = "HOME A: HOW MANY BOOKS DOES CH HAVE 1998";
  label C1943600 = "HOME A: HOW OFT DOES MOM READ TO CH 1998";
  label C1943700 = "HOME A: HOW OFT MOM TAKE CH TO GROC 1998";
  label C1943800 = "HOME A: # SOFT/ROLEPLAY TOYS CH HAS 1998";
  label C1943900 = "HOME A: # PUSH/PULL TOYS CH OWNS 1998";
  label C1944700 = "HOME A: CH SEE FATHER(-FIG) DAILY 1998";
  label C1944800 = "HOME A: HOW OFT CH EATS W/MOM & DAD 1998";
  label C2264100 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2000";
  label C2264200 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2000";
  label C2264300 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2000";
  label C2264400 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2000";
  label C2264500 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2000";
  label C2264600 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2000";
  label C2265700 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2000";
  label C2265800 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2000";
  label C2708900 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2002";
  label C2709000 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2002";
  label C2709100 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2002";
  label C2709200 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2002";
  label C2709300 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2002";
  label C2709400 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2002";
  label C2710500 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2002";
  label C2710600 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2002";
  label C2985500 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2004";
  label C2985600 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2004";
  label C2985700 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2004";
  label C2985800 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2004";
  label C2985900 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2004";
  label C2986000 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2004";
  label C2987000 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2004";
  label C2987100 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2004";
  label C3388000 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2006";
  label C3388100 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2006";
  label C3388200 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2006";
  label C3388300 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2006";
  label C3388400 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2006";
  label C3388500 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2006";
  label C3389500 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2006";
  label C3389600 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2006";
  label C3913800 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2008";
  label C3913900 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2008";
  label C3914000 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2008";
  label C3914100 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2008";
  label C3914200 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2008";
  label C3914300 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2008";
  label C3915300 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2008";
  label C3915400 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2008";
  label C5165300 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2010";
  label C5165400 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2010";
  label C5165500 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2010";
  label C5165600 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2010";
  label C5165700 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2010";
  label C5165800 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2010";
  label C5166600 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2010";
  label C5166700 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2010";
  label C5741500 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2012";
  label C5741600 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2012";
  label C5741700 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2012";
  label C5741800 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2012";
  label C5741900 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2012";
  label C5742000 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2012";
  label C5743000 = "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2012";
  label C5743100 = "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2012";
  label C6080800 = "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2016";
  label C6080900 = "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2016";
  label C6081000 = "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2016";
  label C6081100 = "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2016";
  label C6081200 = "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2016";
  label C6081300 = "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2016";
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
  C0540800 = 'MS860127_1986'n
  C0540900 = 'MS860129_1986'n
  C0541000 = 'MS860130_1986'n
  C0541100 = 'MS860131_1986'n
  C0541200 = 'MS860132_1986'n
  C0541300 = 'MS860134_1986'n
  C0541500 = 'MS860137_1986'n
  C0541600 = 'MS860138_1986'n
  C0751200 = 'MS880244_1988'n
  C0751300 = 'MS880246_1988'n
  C0751400 = 'MS880247_1988'n
  C0751500 = 'MS880248_1988'n
  C0751600 = 'MS880249_1988'n
  C0751700 = 'MS880251_1988'n
  C0751900 = 'MS880254_1988'n
  C0752000 = 'MS880255_1988'n
  C0952300 = 'MS900243_1990'n
  C0952400 = 'MS900245_1990'n
  C0952500 = 'MS900247_1990'n
  C0952600 = 'MS900249_1990'n
  C0952700 = 'MS900251_1990'n
  C0952800 = 'MS900253_1990'n
  C0953600 = 'MS900315_1990'n
  C0953700 = 'MS900317_1990'n
  C1150400 = 'MS920243_1992'n
  C1150500 = 'MS920245_1992'n
  C1150600 = 'MS920247_1992'n
  C1150700 = 'MS920249_1992'n
  C1150800 = 'MS920251_1992'n
  C1150900 = 'MS920253_1992'n
  C1151700 = 'MS920315_1992'n
  C1151800 = 'MS920317_1992'n
  C1401200 = 'MS940243_1994'n
  C1401300 = 'MS940245_1994'n
  C1401400 = 'MS940247_1994'n
  C1401500 = 'MS940249_1994'n
  C1401600 = 'MS940251_1994'n
  C1401700 = 'MS940253_1994'n
  C1402500 = 'MS940315_1994'n
  C1402600 = 'MS940317_1994'n
  C1602900 = 'MS960243_1996'n
  C1603000 = 'MS960245_1996'n
  C1603100 = 'MS960247_1996'n
  C1603200 = 'MS960249_1996'n
  C1603300 = 'MS960251_1996'n
  C1603400 = 'MS960253_1996'n
  C1603900 = 'MS960263_1996'n
  C1604200 = 'MS960315_1996'n
  C1943400 = 'MS981A01_1998'n
  C1943500 = 'MS981A02_1998'n
  C1943600 = 'MS981A03_1998'n
  C1943700 = 'MS981A04_1998'n
  C1943800 = 'MS981A05_1998'n
  C1943900 = 'MS981A06_1998'n
  C1944700 = 'MS981A14_1998'n
  C1944800 = 'MS981A15_1998'n
  C2264100 = 'HOME-A01_2000'n
  C2264200 = 'HOME-A02_2000'n
  C2264300 = 'HOME-A03_2000'n
  C2264400 = 'HOME-A04_2000'n
  C2264500 = 'HOME-A05_2000'n
  C2264600 = 'HOME-A06_2000'n
  C2265700 = 'HOME-A14_2000'n
  C2265800 = 'HOME-A15_2000'n
  C2708900 = 'HOME-A01_2002'n
  C2709000 = 'HOME-A02_2002'n
  C2709100 = 'HOME-A03_2002'n
  C2709200 = 'HOME-A04_2002'n
  C2709300 = 'HOME-A05_2002'n
  C2709400 = 'HOME-A06_2002'n
  C2710500 = 'HOME-A14_2002'n
  C2710600 = 'HOME-A15_2002'n
  C2985500 = 'HOME-A01_2004'n
  C2985600 = 'HOME-A02_2004'n
  C2985700 = 'HOME-A03_2004'n
  C2985800 = 'HOME-A04_2004'n
  C2985900 = 'HOME-A05_2004'n
  C2986000 = 'HOME-A06_2004'n
  C2987000 = 'HOME-A14_2004'n
  C2987100 = 'HOME-A15_2004'n
  C3388000 = 'MS-HOME-A01_2006'n
  C3388100 = 'MS-HOME-A02_2006'n
  C3388200 = 'MS-HOME-A03_2006'n
  C3388300 = 'MS-HOME-A04_2006'n
  C3388400 = 'MS-HOME-A05_2006'n
  C3388500 = 'MS-HOME-A06_2006'n
  C3389500 = 'MS-HOME-A14_2006'n
  C3389600 = 'MS-HOME-A15_2006'n
  C3913800 = 'MS-HOME-A01_2008'n
  C3913900 = 'MS-HOME-A02_2008'n
  C3914000 = 'MS-HOME-A03_2008'n
  C3914100 = 'MS-HOME-A04_2008'n
  C3914200 = 'MS-HOME-A05_2008'n
  C3914300 = 'MS-HOME-A06_2008'n
  C3915300 = 'MS-HOME-A14_2008'n
  C3915400 = 'MS-HOME-A15_2008'n
  C5165300 = 'MS-HOME-A01_2010'n
  C5165400 = 'MS-HOME-A02_2010'n
  C5165500 = 'MS-HOME-A03_2010'n
  C5165600 = 'MS-HOME-A04_2010'n
  C5165700 = 'MS-HOME-A05_2010'n
  C5165800 = 'MS-HOME-A06_2010'n
  C5166600 = 'MS-HOME-A14_2010'n
  C5166700 = 'MS-HOME-A15_2010'n
  C5741500 = 'MS-HOME-A01_2012'n
  C5741600 = 'MS-HOME-A02_2012'n
  C5741700 = 'MS-HOME-A03_2012'n
  C5741800 = 'MS-HOME-A04_2012'n
  C5741900 = 'MS-HOME-A05_2012'n
  C5742000 = 'MS-HOME-A06_2012'n
  C5743000 = 'MS-HOME-A14_2012'n
  C5743100 = 'MS-HOME-A15_2012'n
  C6080800 = 'MS-HOME-A01_2016'n
  C6080900 = 'MS-HOME-A02_2016'n
  C6081000 = 'MS-HOME-A03_2016'n
  C6081100 = 'MS-HOME-A04_2016'n
  C6081200 = 'MS-HOME-A05_2016'n
  C6081300 = 'MS-HOME-A06_2016'n
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
  1='TOO YOUNG'
  2='ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx6f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx7f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx8f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER, GO ALONE'
;
value vx9f
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
  50-9999999='50 TO 9999999: 50+'
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
  11='11'
  12='12'
  13='13'
  14='14'
  15='15'
  16-99999='16 TO 99999: 16+'
;
value vx11f
  0='NO'
  1='YES'
;
value vx12f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
;
value vx13f
  1='DOES NOT GO YET, TOO YOUNG'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx14f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx15f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx16f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER, GO ALONE'
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
value vx19f
  0='NO'
  1='YES'
;
value vx20f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
;
value vx21f
  1='DOES NOT GO YET, TOO YOUNG'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx22f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx23f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx24f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER, GO ALONE'
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
value vx27f
  0='NO'
  1='YES'
  2='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx28f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx29f
  1='DOES NOT GO YET, TOO YOUNG'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx30f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx31f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx32f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER, GO ALONE'
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
  0='NO'
  1='YES'
  2='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx36f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx37f
  1='DOES NOT GO YET, TOO YOUNG'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx38f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx39f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx40f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER, GO ALONE'
;
value vx41f
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
value vx42f
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
value vx43f
  0='NO'
  1='YES'
  2='NO FATHER, STEP-FATHER, OR FATHER FIGURE'
;
value vx44f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx45f
  1='NOT AT ALL'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx46f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx47f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx48f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER'
;
value vx49f
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
  50-99999999='50 TO 99999999: 50+'
;
value vx50f
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
  50-99999999='50 TO 99999999: 50+'
;
value vx51f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
  7='No father, step-father, father figure'
;
value vx52f
  0='NO'
  1='YES'
  2='NO FATHER, STEP-FATHER, OR FATHER FIGURE'
;
value vx53f
  1='NOT AT ALL'
  2='ABOUT ONCE A MONTH OR LESS'
  3='A FEW TIMES A MONTH'
  4='ABOUT ONCE A WEEK'
  5='A FEW TIMES A WEEK'
  6='4 OR MORE TIMES A WEEK'
  7='EVERY DAY'
;
value vx54f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx55f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx56f
  1='TWICE A WEEK OR MORE'
  2='ONCE A WEEK'
  3='ONCE A MONTH'
  4='HARDLY EVER'
;
value vx57f
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
  50-9999='50 TO 9999'
;
value vx58f
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
  50-9999='50 TO 9999'
;
value vx59f
  0='NO'
  1='YES'
  2='NO FATHER, STEPFATHER, OR FATHER FIGURE'
;
value vx60f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
  7='No father, step-father, father figure'
;
value vx61f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx62f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx63f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx64f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx65f
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
  50-9999='50 TO 9999'
;
value vx66f
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
  50-9999='50 TO 9999'
;
value vx67f
  0='No'
  1='Yes'
;
value vx68f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx69f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx70f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx71f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx72f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx73f
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
  50-9999='50 TO 9999'
;
value vx74f
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
  50-9999='50 TO 9999'
;
value vx75f
  0='No'
  1='Yes'
;
value vx76f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx77f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx78f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx79f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx80f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx81f
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
  50-9999='50 TO 9999'
;
value vx82f
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
  50-9999='50 TO 9999'
;
value vx83f
  0='No'
  1='Yes'
;
value vx84f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx85f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx86f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx87f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx88f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx89f
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
  50-9999='50 TO 9999'
;
value vx90f
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
  50-9999='50 TO 9999'
;
value vx91f
  0='No'
  1='Yes'
;
value vx92f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx93f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx94f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx95f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx96f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx97f
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
  50-9999='50 TO 9999'
;
value vx98f
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
  50-9999='50 TO 9999'
;
value vx99f
  0='No'
  1='Yes'
;
value vx100f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx101f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx102f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx103f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx104f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx105f
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
  50-9999='50 TO 9999'
;
value vx106f
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
  50-9999='50 TO 9999'
;
value vx107f
  0='No'
  1='Yes'
;
value vx108f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx109f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx110f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx111f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx112f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx113f
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
  50-9999='50 TO 9999'
;
value vx114f
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
  50-9999='50 TO 9999'
;
value vx115f
  0='No'
  1='Yes'
;
value vx116f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx117f
  1='A few times a month or less'
  2='About once a week'
  3='A few times a week'
  4='4 or more times a week'
  5='Every day'
;
value vx118f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx119f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='About 3 times a week'
  6='Everyday'
;
value vx120f
  1='Twice a week or more'
  2='Once a week'
  3='Once a month'
  4='Hardly ever'
;
value vx121f
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
  50-9999='50 TO 9999'
;
value vx122f
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
  50-9999='50 TO 9999'
;
value vx123f
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
  format C0540800 vx5f.;
  format C0540900 vx6f.;
  format C0541000 vx7f.;
  format C0541100 vx8f.;
  format C0541200 vx9f.;
  format C0541300 vx10f.;
  format C0541500 vx11f.;
  format C0541600 vx12f.;
  format C0751200 vx13f.;
  format C0751300 vx14f.;
  format C0751400 vx15f.;
  format C0751500 vx16f.;
  format C0751600 vx17f.;
  format C0751700 vx18f.;
  format C0751900 vx19f.;
  format C0752000 vx20f.;
  format C0952300 vx21f.;
  format C0952400 vx22f.;
  format C0952500 vx23f.;
  format C0952600 vx24f.;
  format C0952700 vx25f.;
  format C0952800 vx26f.;
  format C0953600 vx27f.;
  format C0953700 vx28f.;
  format C1150400 vx29f.;
  format C1150500 vx30f.;
  format C1150600 vx31f.;
  format C1150700 vx32f.;
  format C1150800 vx33f.;
  format C1150900 vx34f.;
  format C1151700 vx35f.;
  format C1151800 vx36f.;
  format C1401200 vx37f.;
  format C1401300 vx38f.;
  format C1401400 vx39f.;
  format C1401500 vx40f.;
  format C1401600 vx41f.;
  format C1401700 vx42f.;
  format C1402500 vx43f.;
  format C1402600 vx44f.;
  format C1602900 vx45f.;
  format C1603000 vx46f.;
  format C1603100 vx47f.;
  format C1603200 vx48f.;
  format C1603300 vx49f.;
  format C1603400 vx50f.;
  format C1603900 vx51f.;
  format C1604200 vx52f.;
  format C1943400 vx53f.;
  format C1943500 vx54f.;
  format C1943600 vx55f.;
  format C1943700 vx56f.;
  format C1943800 vx57f.;
  format C1943900 vx58f.;
  format C1944700 vx59f.;
  format C1944800 vx60f.;
  format C2264100 vx61f.;
  format C2264200 vx62f.;
  format C2264300 vx63f.;
  format C2264400 vx64f.;
  format C2264500 vx65f.;
  format C2264600 vx66f.;
  format C2265700 vx67f.;
  format C2265800 vx68f.;
  format C2708900 vx69f.;
  format C2709000 vx70f.;
  format C2709100 vx71f.;
  format C2709200 vx72f.;
  format C2709300 vx73f.;
  format C2709400 vx74f.;
  format C2710500 vx75f.;
  format C2710600 vx76f.;
  format C2985500 vx77f.;
  format C2985600 vx78f.;
  format C2985700 vx79f.;
  format C2985800 vx80f.;
  format C2985900 vx81f.;
  format C2986000 vx82f.;
  format C2987000 vx83f.;
  format C2987100 vx84f.;
  format C3388000 vx85f.;
  format C3388100 vx86f.;
  format C3388200 vx87f.;
  format C3388300 vx88f.;
  format C3388400 vx89f.;
  format C3388500 vx90f.;
  format C3389500 vx91f.;
  format C3389600 vx92f.;
  format C3913800 vx93f.;
  format C3913900 vx94f.;
  format C3914000 vx95f.;
  format C3914100 vx96f.;
  format C3914200 vx97f.;
  format C3914300 vx98f.;
  format C3915300 vx99f.;
  format C3915400 vx100f.;
  format C5165300 vx101f.;
  format C5165400 vx102f.;
  format C5165500 vx103f.;
  format C5165600 vx104f.;
  format C5165700 vx105f.;
  format C5165800 vx106f.;
  format C5166600 vx107f.;
  format C5166700 vx108f.;
  format C5741500 vx109f.;
  format C5741600 vx110f.;
  format C5741700 vx111f.;
  format C5741800 vx112f.;
  format C5741900 vx113f.;
  format C5742000 vx114f.;
  format C5743000 vx115f.;
  format C5743100 vx116f.;
  format C6080800 vx117f.;
  format C6080900 vx118f.;
  format C6081000 vx119f.;
  format C6081100 vx120f.;
  format C6081200 vx121f.;
  format C6081300 vx122f.;
  format Y2267000 vx123f.;
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
  format 'MS860127_1986'n vx5f.;
  format 'MS860129_1986'n vx6f.;
  format 'MS860130_1986'n vx7f.;
  format 'MS860131_1986'n vx8f.;
  format 'MS860132_1986'n vx9f.;
  format 'MS860134_1986'n vx10f.;
  format 'MS860137_1986'n vx11f.;
  format 'MS860138_1986'n vx12f.;
  format 'MS880244_1988'n vx13f.;
  format 'MS880246_1988'n vx14f.;
  format 'MS880247_1988'n vx15f.;
  format 'MS880248_1988'n vx16f.;
  format 'MS880249_1988'n vx17f.;
  format 'MS880251_1988'n vx18f.;
  format 'MS880254_1988'n vx19f.;
  format 'MS880255_1988'n vx20f.;
  format 'MS900243_1990'n vx21f.;
  format 'MS900245_1990'n vx22f.;
  format 'MS900247_1990'n vx23f.;
  format 'MS900249_1990'n vx24f.;
  format 'MS900251_1990'n vx25f.;
  format 'MS900253_1990'n vx26f.;
  format 'MS900315_1990'n vx27f.;
  format 'MS900317_1990'n vx28f.;
  format 'MS920243_1992'n vx29f.;
  format 'MS920245_1992'n vx30f.;
  format 'MS920247_1992'n vx31f.;
  format 'MS920249_1992'n vx32f.;
  format 'MS920251_1992'n vx33f.;
  format 'MS920253_1992'n vx34f.;
  format 'MS920315_1992'n vx35f.;
  format 'MS920317_1992'n vx36f.;
  format 'MS940243_1994'n vx37f.;
  format 'MS940245_1994'n vx38f.;
  format 'MS940247_1994'n vx39f.;
  format 'MS940249_1994'n vx40f.;
  format 'MS940251_1994'n vx41f.;
  format 'MS940253_1994'n vx42f.;
  format 'MS940315_1994'n vx43f.;
  format 'MS940317_1994'n vx44f.;
  format 'MS960243_1996'n vx45f.;
  format 'MS960245_1996'n vx46f.;
  format 'MS960247_1996'n vx47f.;
  format 'MS960249_1996'n vx48f.;
  format 'MS960251_1996'n vx49f.;
  format 'MS960253_1996'n vx50f.;
  format 'MS960263_1996'n vx51f.;
  format 'MS960315_1996'n vx52f.;
  format 'MS981A01_1998'n vx53f.;
  format 'MS981A02_1998'n vx54f.;
  format 'MS981A03_1998'n vx55f.;
  format 'MS981A04_1998'n vx56f.;
  format 'MS981A05_1998'n vx57f.;
  format 'MS981A06_1998'n vx58f.;
  format 'MS981A14_1998'n vx59f.;
  format 'MS981A15_1998'n vx60f.;
  format 'HOME-A01_2000'n vx61f.;
  format 'HOME-A02_2000'n vx62f.;
  format 'HOME-A03_2000'n vx63f.;
  format 'HOME-A04_2000'n vx64f.;
  format 'HOME-A05_2000'n vx65f.;
  format 'HOME-A06_2000'n vx66f.;
  format 'HOME-A14_2000'n vx67f.;
  format 'HOME-A15_2000'n vx68f.;
  format 'HOME-A01_2002'n vx69f.;
  format 'HOME-A02_2002'n vx70f.;
  format 'HOME-A03_2002'n vx71f.;
  format 'HOME-A04_2002'n vx72f.;
  format 'HOME-A05_2002'n vx73f.;
  format 'HOME-A06_2002'n vx74f.;
  format 'HOME-A14_2002'n vx75f.;
  format 'HOME-A15_2002'n vx76f.;
  format 'HOME-A01_2004'n vx77f.;
  format 'HOME-A02_2004'n vx78f.;
  format 'HOME-A03_2004'n vx79f.;
  format 'HOME-A04_2004'n vx80f.;
  format 'HOME-A05_2004'n vx81f.;
  format 'HOME-A06_2004'n vx82f.;
  format 'HOME-A14_2004'n vx83f.;
  format 'HOME-A15_2004'n vx84f.;
  format 'MS-HOME-A01_2006'n vx85f.;
  format 'MS-HOME-A02_2006'n vx86f.;
  format 'MS-HOME-A03_2006'n vx87f.;
  format 'MS-HOME-A04_2006'n vx88f.;
  format 'MS-HOME-A05_2006'n vx89f.;
  format 'MS-HOME-A06_2006'n vx90f.;
  format 'MS-HOME-A14_2006'n vx91f.;
  format 'MS-HOME-A15_2006'n vx92f.;
  format 'MS-HOME-A01_2008'n vx93f.;
  format 'MS-HOME-A02_2008'n vx94f.;
  format 'MS-HOME-A03_2008'n vx95f.;
  format 'MS-HOME-A04_2008'n vx96f.;
  format 'MS-HOME-A05_2008'n vx97f.;
  format 'MS-HOME-A06_2008'n vx98f.;
  format 'MS-HOME-A14_2008'n vx99f.;
  format 'MS-HOME-A15_2008'n vx100f.;
  format 'MS-HOME-A01_2010'n vx101f.;
  format 'MS-HOME-A02_2010'n vx102f.;
  format 'MS-HOME-A03_2010'n vx103f.;
  format 'MS-HOME-A04_2010'n vx104f.;
  format 'MS-HOME-A05_2010'n vx105f.;
  format 'MS-HOME-A06_2010'n vx106f.;
  format 'MS-HOME-A14_2010'n vx107f.;
  format 'MS-HOME-A15_2010'n vx108f.;
  format 'MS-HOME-A01_2012'n vx109f.;
  format 'MS-HOME-A02_2012'n vx110f.;
  format 'MS-HOME-A03_2012'n vx111f.;
  format 'MS-HOME-A04_2012'n vx112f.;
  format 'MS-HOME-A05_2012'n vx113f.;
  format 'MS-HOME-A06_2012'n vx114f.;
  format 'MS-HOME-A14_2012'n vx115f.;
  format 'MS-HOME-A15_2012'n vx116f.;
  format 'MS-HOME-A01_2016'n vx117f.;
  format 'MS-HOME-A02_2016'n vx118f.;
  format 'MS-HOME-A03_2016'n vx119f.;
  format 'MS-HOME-A04_2016'n vx120f.;
  format 'MS-HOME-A05_2016'n vx121f.;
  format 'MS-HOME-A06_2016'n vx122f.;
  format 'VERSION_R29_XRND'n vx123f.;
run;
*/