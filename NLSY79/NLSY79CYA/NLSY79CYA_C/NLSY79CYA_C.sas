options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79CYA_C.dat' lrecl=511 missover DSD DLM=' ' print;
input
  C0000100
  C0000200
  C0005300
  C0005400
  C0005700
  C0544300
  C0544400
  C0545000
  C0545100
  C0545500
  C0545600
  C0545700
  C0545900
  C0546000
  C0546200
  C0755000
  C0755100
  C0755700
  C0755800
  C0756200
  C0756300
  C0756400
  C0756600
  C0756700
  C0756900
  C0957000
  C0957100
  C0957700
  C0957800
  C0958200
  C0958300
  C0958400
  C0959000
  C0959100
  C0959300
  C1155100
  C1155200
  C1155800
  C1155900
  C1156300
  C1156400
  C1156500
  C1157100
  C1157200
  C1157400
  C1406700
  C1406800
  C1407400
  C1407500
  C1407900
  C1408000
  C1408100
  C1408700
  C1408800
  C1409000
  C1608300
  C1608400
  C1609000
  C1609100
  C1609500
  C1609600
  C1609700
  C1610300
  C1610400
  C1610500
  C1949000
  C1949100
  C1949700
  C1949800
  C1950200
  C1950300
  C1950400
  C1951000
  C1951100
  C1951300
  C2420800
  C2420900
  C2421500
  C2421600
  C2422000
  C2422100
  C2422200
  C2422900
  C2423000
  C2423200
  C2714400
  C2714500
  C2715100
  C2715200
  C2715600
  C2715700
  C2715800
  C2716600
  C2716700
  C2717000
  C2990700
  C2990800
  C2991400
  C2991500
  C2991900
  C2992000
  C2992100
  C2992800
  C2992900
  C2993100
  C3393200
  C3393300
  C3393900
  C3394000
  C3394400
  C3394500
  C3394600
  C3395300
  C3395400
  C3395600
  C3919100
  C3919200
  C3919800
  C3919900
  C3920300
  C3920400
  C3920500
  C3921200
  C3921300
  C3921500
  C5170300
  C5170400
  C5171000
  C5171100
  C5171500
  C5171600
  C5171700
  C5172400
  C5172500
  C5172700
  C5746800
  C5746900
  C5747500
  C5747600
  C5748000
  C5748100
  C5748200
  C5748900
  C5749000
  C5749200
  C6016700
  C6016800
  C6017400
  C6017500
  C6017900
  C6018000
  C6018100
  C6018800
  C6018900
  C6019100
  C6085400
  C6085500
  C6086100
  C6086200
  C6086600
  C6086700
  C6086800
  C6087500
  C6087600
  C6087800
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
  label C0544300 = "HOME C (6+): HOW MANY BOOKS CHILD HAS";
  label C0544400 = "HOME C (6+): HOW OFTEN MOM READS TO CHILD";
  label C0545000 = "HOME C (6+): MUSIC INSTMT CH CAN USE AT HM";
  label C0545100 = "HOME C (6+): FAMILY GETS DAILY NEWSPAPER";
  label C0545500 = "HOME C (6+): HOW OFT CH TAKEN TO MUSEUM";
  label C0545600 = "HOME C (6+): HOW OFT TAKEN TO PERFORMANCE";
  label C0545700 = "HOME C (6+): HOW OFT FAMILY SEES FRNDS/REL";
  label C0545900 = "HOME C (6+): HOW OFT CH SPEND TIME W/DAD";
  label C0546000 = "HOME C (6+): HOW OFT CH W/DAD OUTDOORS";
  label C0546200 = "HOME C (6+): DO PARS DISCUSS TV PRGMS W/CH";
  label C0755000 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS";
  label C0755100 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD";
  label C0755700 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM";
  label C0755800 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER";
  label C0756200 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM";
  label C0756300 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE";
  label C0756400 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL";
  label C0756600 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD";
  label C0756700 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS";
  label C0756900 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH";
  label C0957000 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS";
  label C0957100 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD";
  label C0957700 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM";
  label C0957800 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER";
  label C0958200 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM";
  label C0958300 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE";
  label C0958400 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL";
  label C0959000 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD";
  label C0959100 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS";
  label C0959300 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH";
  label C1155100 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS";
  label C1155200 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD";
  label C1155800 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM";
  label C1155900 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER";
  label C1156300 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM";
  label C1156400 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE";
  label C1156500 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL";
  label C1157100 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD";
  label C1157200 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS";
  label C1157400 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH";
  label C1406700 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS";
  label C1406800 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD";
  label C1407400 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM";
  label C1407500 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER";
  label C1407900 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM";
  label C1408000 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE";
  label C1408100 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL";
  label C1408700 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD";
  label C1408800 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS";
  label C1409000 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH";
  label C1608300 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS";
  label C1608400 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD";
  label C1609000 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM";
  label C1609100 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER";
  label C1609500 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM";
  label C1609600 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE";
  label C1609700 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL";
  label C1610300 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD";
  label C1610400 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS";
  label C1610500 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH";
  label C1949000 = "HOME C: HOW MANY BOOKS CHILD HAS 1998";
  label C1949100 = "HOME C: HOW OFT DOES MOM READ TO CH 1998";
  label C1949700 = "HOME C: IS THERE MUSIC INSTRM AT HM 1998";
  label C1949800 = "HOME C: FAMILY GETS NEWSPAPER DAILY 1998";
  label C1950200 = "HOME C: HOW OFT CH TAKEN TO MUSEUM 1998";
  label C1950300 = "HOME C: HOW OFT CH TAKN TO PERFMNCE 1998";
  label C1950400 = "HOME C: HOW OFT FAM GET W/REL/FRNDS 1998";
  label C1951000 = "HOME C: HOW OFT CH SPEND TIME W/DAD 1998";
  label C1951100 = "HOME C: HOW OFT CH W/ DAD OUTDOORS 1998";
  label C1951300 = "HOME C: PARS DISCUSS TV PRGMS W/CH 1998";
  label C2420800 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2000";
  label C2420900 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2000";
  label C2421500 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2000";
  label C2421600 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2000";
  label C2422000 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2000";
  label C2422100 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2000";
  label C2422200 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2000";
  label C2422900 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2000";
  label C2423000 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2000";
  label C2423200 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2000";
  label C2714400 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2002";
  label C2714500 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2002";
  label C2715100 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2002";
  label C2715200 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2002";
  label C2715600 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2002";
  label C2715700 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2002";
  label C2715800 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2002";
  label C2716600 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2002";
  label C2716700 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2002";
  label C2717000 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2002";
  label C2990700 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2004";
  label C2990800 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2004";
  label C2991400 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2004";
  label C2991500 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2004";
  label C2991900 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2004";
  label C2992000 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2004";
  label C2992100 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2004";
  label C2992800 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2004";
  label C2992900 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2004";
  label C2993100 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2004";
  label C3393200 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2006";
  label C3393300 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2006";
  label C3393900 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2006";
  label C3394000 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2006";
  label C3394400 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2006";
  label C3394500 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2006";
  label C3394600 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2006";
  label C3395300 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2006";
  label C3395400 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2006";
  label C3395600 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2006";
  label C3919100 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2008";
  label C3919200 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2008";
  label C3919800 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2008";
  label C3919900 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2008";
  label C3920300 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2008";
  label C3920400 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2008";
  label C3920500 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2008";
  label C3921200 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2008";
  label C3921300 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2008";
  label C3921500 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2008";
  label C5170300 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2010";
  label C5170400 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2010";
  label C5171000 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2010";
  label C5171100 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2010";
  label C5171500 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2010";
  label C5171600 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2010";
  label C5171700 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2010";
  label C5172400 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2010";
  label C5172500 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2010";
  label C5172700 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2010";
  label C5746800 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2012";
  label C5746900 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2012";
  label C5747500 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2012";
  label C5747600 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2012";
  label C5748000 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2012";
  label C5748100 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2012";
  label C5748200 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2012";
  label C5748900 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2012";
  label C5749000 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2012";
  label C5749200 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2012";
  label C6016700 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2014";
  label C6016800 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2014";
  label C6017400 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2014";
  label C6017500 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2014";
  label C6017900 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2014";
  label C6018000 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2014";
  label C6018100 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2014";
  label C6018800 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2014";
  label C6018900 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2014";
  label C6019100 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2014";
  label C6085400 = "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2016";
  label C6085500 = "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2016";
  label C6086100 = "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2016";
  label C6086200 = "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2016";
  label C6086600 = "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2016";
  label C6086700 = "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2016";
  label C6086800 = "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2016";
  label C6087500 = "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2016";
  label C6087600 = "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2016";
  label C6087800 = "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2016";
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
  C0544300 = 'MS860212_1986'n
  C0544400 = 'MS860213_1986'n
  C0545000 = 'MS860219_1986'n
  C0545100 = 'MS860220_1986'n
  C0545500 = 'MS860224_1986'n
  C0545600 = 'MS860225_1986'n
  C0545700 = 'MS860226_1986'n
  C0545900 = 'MS860228_1986'n
  C0546000 = 'MS860229_1986'n
  C0546200 = 'MS860231_1986'n
  C0755000 = 'MS880337_1988'n
  C0755100 = 'MS880338_1988'n
  C0755700 = 'MS880344_1988'n
  C0755800 = 'MS880345_1988'n
  C0756200 = 'MS880349_1988'n
  C0756300 = 'MS880350_1988'n
  C0756400 = 'MS880351_1988'n
  C0756600 = 'MS880353_1988'n
  C0756700 = 'MS880354_1988'n
  C0756900 = 'MS880356_1988'n
  C0957000 = 'MS900427_1990'n
  C0957100 = 'MS900429_1990'n
  C0957700 = 'MS900441_1990'n
  C0957800 = 'MS900443_1990'n
  C0958200 = 'MS900451_1990'n
  C0958300 = 'MS900453_1990'n
  C0958400 = 'MS900455_1990'n
  C0959000 = 'MS900467_1990'n
  C0959100 = 'MS900511_1990'n
  C0959300 = 'MS900515_1990'n
  C1155100 = 'MS920427_1992'n
  C1155200 = 'MS920429_1992'n
  C1155800 = 'MS920441_1992'n
  C1155900 = 'MS920443_1992'n
  C1156300 = 'MS920451_1992'n
  C1156400 = 'MS920453_1992'n
  C1156500 = 'MS920455_1992'n
  C1157100 = 'MS920467_1992'n
  C1157200 = 'MS920511_1992'n
  C1157400 = 'MS920515_1992'n
  C1406700 = 'MS940435_1994'n
  C1406800 = 'MS940437_1994'n
  C1407400 = 'MS940449_1994'n
  C1407500 = 'MS940451_1994'n
  C1407900 = 'MS940459_1994'n
  C1408000 = 'MS940461_1994'n
  C1408100 = 'MS940463_1994'n
  C1408700 = 'MS940475_1994'n
  C1408800 = 'MS940511_1994'n
  C1409000 = 'MS940515_1994'n
  C1608300 = 'MS960433_1996'n
  C1608400 = 'MS960435_1996'n
  C1609000 = 'MS960447_1996'n
  C1609100 = 'MS960449_1996'n
  C1609500 = 'MS960457_1996'n
  C1609600 = 'MS960459_1996'n
  C1609700 = 'MS960461_1996'n
  C1610300 = 'MS960473_1996'n
  C1610400 = 'MS960511_1996'n
  C1610500 = 'MS960513_1996'n
  C1949000 = 'MS981C01_1998'n
  C1949100 = 'MS981C02_1998'n
  C1949700 = 'MS981C04_1998'n
  C1949800 = 'MS981C05_1998'n
  C1950200 = 'MS981C09_1998'n
  C1950300 = 'MS981C10_1998'n
  C1950400 = 'MS981C11_1998'n
  C1951000 = 'MS981C17_1998'n
  C1951100 = 'MS981C18_1998'n
  C1951300 = 'MS981C20_1998'n
  C2420800 = 'MS1-B01_2000'n
  C2420900 = 'MS1-B02_2000'n
  C2421500 = 'MS1-B04_2000'n
  C2421600 = 'MS1-B05_2000'n
  C2422000 = 'MS1-B09_2000'n
  C2422100 = 'MS1-B10_2000'n
  C2422200 = 'MS1-B11_2000'n
  C2422900 = 'MS1-B17_2000'n
  C2423000 = 'MS1-B18_2000'n
  C2423200 = 'MS1-B20_2000'n
  C2714400 = 'HOME-C01_2002'n
  C2714500 = 'HOME-C02_2002'n
  C2715100 = 'HOME-C04_2002'n
  C2715200 = 'HOME-C05_2002'n
  C2715600 = 'HOME-C09_2002'n
  C2715700 = 'HOME-C10_2002'n
  C2715800 = 'HOME-C11_2002'n
  C2716600 = 'HOME-C17_2002'n
  C2716700 = 'HOME-C18_2002'n
  C2717000 = 'HOME-C20_2002'n
  C2990700 = 'HOME-C01_2004'n
  C2990800 = 'HOME-C02_2004'n
  C2991400 = 'HOME-C04_2004'n
  C2991500 = 'HOME-C05_2004'n
  C2991900 = 'HOME-C09_2004'n
  C2992000 = 'HOME-C10_2004'n
  C2992100 = 'HOME-C11_2004'n
  C2992800 = 'HOME-C17_2004'n
  C2992900 = 'HOME-C18_2004'n
  C2993100 = 'HOME-C20_2004'n
  C3393200 = 'MS-HOME-C01_2006'n
  C3393300 = 'MS-HOME-C02_2006'n
  C3393900 = 'MS-HOME-C04_2006'n
  C3394000 = 'MS-HOME-C05_2006'n
  C3394400 = 'MS-HOME-C09_2006'n
  C3394500 = 'MS-HOME-C10_2006'n
  C3394600 = 'MS-HOME-C11_2006'n
  C3395300 = 'MS-HOME-C17_2006'n
  C3395400 = 'MS-HOME-C18_2006'n
  C3395600 = 'MS-HOME-C20_2006'n
  C3919100 = 'MS-HOME-C01_2008'n
  C3919200 = 'MS-HOME-C02_2008'n
  C3919800 = 'MS-HOME-C04_2008'n
  C3919900 = 'MS-HOME-C05_2008'n
  C3920300 = 'MS-HOME-C09_2008'n
  C3920400 = 'MS-HOME-C10_2008'n
  C3920500 = 'MS-HOME-C11_2008'n
  C3921200 = 'MS-HOME-C17_2008'n
  C3921300 = 'MS-HOME-C18_2008'n
  C3921500 = 'MS-HOME-C20_2008'n
  C5170300 = 'MS-HOME-C01_2010'n
  C5170400 = 'MS-HOME-C02_2010'n
  C5171000 = 'MS-HOME-C04_2010'n
  C5171100 = 'MS-HOME-C05_2010'n
  C5171500 = 'MS-HOME-C09_2010'n
  C5171600 = 'MS-HOME-C10_2010'n
  C5171700 = 'MS-HOME-C11_2010'n
  C5172400 = 'MS-HOME-C17_2010'n
  C5172500 = 'MS-HOME-C18_2010'n
  C5172700 = 'MS-HOME-C20_2010'n
  C5746800 = 'MS-HOME-C01_2012'n
  C5746900 = 'MS-HOME-C02_2012'n
  C5747500 = 'MS-HOME-C04_2012'n
  C5747600 = 'MS-HOME-C05_2012'n
  C5748000 = 'MS-HOME-C09_2012'n
  C5748100 = 'MS-HOME-C10_2012'n
  C5748200 = 'MS-HOME-C11_2012'n
  C5748900 = 'MS-HOME-C17_2012'n
  C5749000 = 'MS-HOME-C18_2012'n
  C5749200 = 'MS-HOME-C20_2012'n
  C6016700 = 'MS-HOME-C01_2014'n
  C6016800 = 'MS-HOME-C02_2014'n
  C6017400 = 'MS-HOME-C04_2014'n
  C6017500 = 'MS-HOME-C05_2014'n
  C6017900 = 'MS-HOME-C09_2014'n
  C6018000 = 'MS-HOME-C10_2014'n
  C6018100 = 'MS-HOME-C11_2014'n
  C6018800 = 'MS-HOME-C17_2014'n
  C6018900 = 'MS-HOME-C18_2014'n
  C6019100 = 'MS-HOME-C20_2014'n
  C6085400 = 'MS-HOME-C01_2016'n
  C6085500 = 'MS-HOME-C02_2016'n
  C6086100 = 'MS-HOME-C04_2016'n
  C6086200 = 'MS-HOME-C05_2016'n
  C6086600 = 'MS-HOME-C09_2016'n
  C6086700 = 'MS-HOME-C10_2016'n
  C6086800 = 'MS-HOME-C11_2016'n
  C6087500 = 'MS-HOME-C17_2016'n
  C6087600 = 'MS-HOME-C18_2016'n
  C6087800 = 'MS-HOME-C20_2016'n
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
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx6f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx7f
  0='NO'
  1='YES'
;
value vx8f
  0='NO'
  1='YES'
;
value vx9f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx10f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx11f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='2 OR 3 TIMES A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx12f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
;
value vx13f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
;
value vx14f
  0='NO'
  1='YES'
  6='DO NOT HAVE A TV'
;
value vx15f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx16f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx17f
  0='NO'
  1='YES'
;
value vx18f
  0='NO'
  1='YES'
;
value vx19f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx20f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx21f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx22f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
;
value vx23f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
;
value vx24f
  0='NO'
  1='YES'
  2='DO NOT HAVE A TV'
;
value vx25f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx26f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx27f
  0='NO'
  1='YES'
;
value vx28f
  0='NO'
  1='YES'
;
value vx29f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx30f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx31f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx32f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx33f
  1='ONCE A DAY OR MORE'
  2='LEAST 4 TIMES A WEEK'
  3='ONCE A WEEK'
  4='ONCE A MONTH'
  5='A FEW TIMES A YEAR'
  6='DON''T KNOW'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx34f
  0='NO'
  1='YES'
  2='DO NOT HAVE A TV'
;
value vx35f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx36f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
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
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx40f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx41f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx42f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx43f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx44f
  0='NO'
  1='YES'
  2='DO NOT HAVE A TV'
;
value vx45f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx46f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx47f
  0='NO'
  1='YES'
;
value vx48f
  0='NO'
  1='YES'
;
value vx49f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx50f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ONCE A WEEK OR MORE'
;
value vx51f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx52f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx53f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx54f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx55f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx56f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='AT LEAST 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx57f
  0='No'
  1='Yes'
;
value vx58f
  0='No'
  1='Yes'
;
value vx59f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx60f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx61f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx62f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx63f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx64f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx65f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx66f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='AT LEAST 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx67f
  0='No'
  1='Yes'
;
value vx68f
  0='No'
  1='Yes'
;
value vx69f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx70f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx71f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ABOUT ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx72f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEPFATHER, OR FATHER-FIGURE'
;
value vx73f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEPFATHER, OR FATHER-FIGURE'
;
value vx74f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx75f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx76f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
  7='Child reads to self (write-in)'
;
value vx77f
  0='No'
  1='Yes'
;
value vx78f
  0='No'
  1='Yes'
;
value vx79f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx80f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx81f
  1='ONCE A YEAR OR LESS'
  2='A FEW TIMES A YEAR'
  3='ABOUT ONCE A MONTH'
  4='TWO OR THREE TIMES A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx82f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx83f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx84f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx85f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx86f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx87f
  0='No'
  1='Yes'
;
value vx88f
  0='No'
  1='Yes'
;
value vx89f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx90f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx91f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx92f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx93f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx94f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx95f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx96f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx97f
  0='No'
  1='Yes'
;
value vx98f
  0='No'
  1='Yes'
;
value vx99f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx100f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx101f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx102f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx103f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx104f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx105f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx106f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx107f
  0='No'
  1='Yes'
;
value vx108f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx109f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx110f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx111f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx112f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx113f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx114f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx115f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx116f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx117f
  0='No'
  1='Yes'
;
value vx118f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx119f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx120f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx121f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx122f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx123f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx124f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx125f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx126f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx127f
  0='No'
  1='Yes'
;
value vx128f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx129f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx130f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx131f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx132f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx133f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx134f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx135f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx136f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx137f
  0='No'
  1='Yes'
;
value vx138f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx139f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx140f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx141f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx142f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx143f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx144f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx145f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx146f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx147f
  0='No'
  1='Yes'
;
value vx148f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx149f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx150f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx151f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx152f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx153f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx154f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx155f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx156f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx157f
  0='No'
  1='Yes'
;
value vx158f
  0='No'
  1='Yes'
  2='(IF VOLUNTEERED:) READ NEWSPAPER ONLINE'
  3='(IF VOLUNTEERED:) SUNDAY PAPER ONLY'
;
value vx159f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx160f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx161f
  1='Once a year or less'
  2='A few times a year'
  3='About once a month'
  4='Two or three times a month'
  5='About once a week or more'
;
value vx162f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx163f
  1='Once a day or more often'
  2='At least 4 times a week'
  3='About once a week'
  4='About once a month'
  5='A few times a year or less'
  6='Never'
  7='No father, stepfather, or father-figure'
;
value vx164f
  0='No'
  1='Yes'
  2='Do not have a TV'
;
value vx165f
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
  format C0544300 vx5f.;
  format C0544400 vx6f.;
  format C0545000 vx7f.;
  format C0545100 vx8f.;
  format C0545500 vx9f.;
  format C0545600 vx10f.;
  format C0545700 vx11f.;
  format C0545900 vx12f.;
  format C0546000 vx13f.;
  format C0546200 vx14f.;
  format C0755000 vx15f.;
  format C0755100 vx16f.;
  format C0755700 vx17f.;
  format C0755800 vx18f.;
  format C0756200 vx19f.;
  format C0756300 vx20f.;
  format C0756400 vx21f.;
  format C0756600 vx22f.;
  format C0756700 vx23f.;
  format C0756900 vx24f.;
  format C0957000 vx25f.;
  format C0957100 vx26f.;
  format C0957700 vx27f.;
  format C0957800 vx28f.;
  format C0958200 vx29f.;
  format C0958300 vx30f.;
  format C0958400 vx31f.;
  format C0959000 vx32f.;
  format C0959100 vx33f.;
  format C0959300 vx34f.;
  format C1155100 vx35f.;
  format C1155200 vx36f.;
  format C1155800 vx37f.;
  format C1155900 vx38f.;
  format C1156300 vx39f.;
  format C1156400 vx40f.;
  format C1156500 vx41f.;
  format C1157100 vx42f.;
  format C1157200 vx43f.;
  format C1157400 vx44f.;
  format C1406700 vx45f.;
  format C1406800 vx46f.;
  format C1407400 vx47f.;
  format C1407500 vx48f.;
  format C1407900 vx49f.;
  format C1408000 vx50f.;
  format C1408100 vx51f.;
  format C1408700 vx52f.;
  format C1408800 vx53f.;
  format C1409000 vx54f.;
  format C1608300 vx55f.;
  format C1608400 vx56f.;
  format C1609000 vx57f.;
  format C1609100 vx58f.;
  format C1609500 vx59f.;
  format C1609600 vx60f.;
  format C1609700 vx61f.;
  format C1610300 vx62f.;
  format C1610400 vx63f.;
  format C1610500 vx64f.;
  format C1949000 vx65f.;
  format C1949100 vx66f.;
  format C1949700 vx67f.;
  format C1949800 vx68f.;
  format C1950200 vx69f.;
  format C1950300 vx70f.;
  format C1950400 vx71f.;
  format C1951000 vx72f.;
  format C1951100 vx73f.;
  format C1951300 vx74f.;
  format C2420800 vx75f.;
  format C2420900 vx76f.;
  format C2421500 vx77f.;
  format C2421600 vx78f.;
  format C2422000 vx79f.;
  format C2422100 vx80f.;
  format C2422200 vx81f.;
  format C2422900 vx82f.;
  format C2423000 vx83f.;
  format C2423200 vx84f.;
  format C2714400 vx85f.;
  format C2714500 vx86f.;
  format C2715100 vx87f.;
  format C2715200 vx88f.;
  format C2715600 vx89f.;
  format C2715700 vx90f.;
  format C2715800 vx91f.;
  format C2716600 vx92f.;
  format C2716700 vx93f.;
  format C2717000 vx94f.;
  format C2990700 vx95f.;
  format C2990800 vx96f.;
  format C2991400 vx97f.;
  format C2991500 vx98f.;
  format C2991900 vx99f.;
  format C2992000 vx100f.;
  format C2992100 vx101f.;
  format C2992800 vx102f.;
  format C2992900 vx103f.;
  format C2993100 vx104f.;
  format C3393200 vx105f.;
  format C3393300 vx106f.;
  format C3393900 vx107f.;
  format C3394000 vx108f.;
  format C3394400 vx109f.;
  format C3394500 vx110f.;
  format C3394600 vx111f.;
  format C3395300 vx112f.;
  format C3395400 vx113f.;
  format C3395600 vx114f.;
  format C3919100 vx115f.;
  format C3919200 vx116f.;
  format C3919800 vx117f.;
  format C3919900 vx118f.;
  format C3920300 vx119f.;
  format C3920400 vx120f.;
  format C3920500 vx121f.;
  format C3921200 vx122f.;
  format C3921300 vx123f.;
  format C3921500 vx124f.;
  format C5170300 vx125f.;
  format C5170400 vx126f.;
  format C5171000 vx127f.;
  format C5171100 vx128f.;
  format C5171500 vx129f.;
  format C5171600 vx130f.;
  format C5171700 vx131f.;
  format C5172400 vx132f.;
  format C5172500 vx133f.;
  format C5172700 vx134f.;
  format C5746800 vx135f.;
  format C5746900 vx136f.;
  format C5747500 vx137f.;
  format C5747600 vx138f.;
  format C5748000 vx139f.;
  format C5748100 vx140f.;
  format C5748200 vx141f.;
  format C5748900 vx142f.;
  format C5749000 vx143f.;
  format C5749200 vx144f.;
  format C6016700 vx145f.;
  format C6016800 vx146f.;
  format C6017400 vx147f.;
  format C6017500 vx148f.;
  format C6017900 vx149f.;
  format C6018000 vx150f.;
  format C6018100 vx151f.;
  format C6018800 vx152f.;
  format C6018900 vx153f.;
  format C6019100 vx154f.;
  format C6085400 vx155f.;
  format C6085500 vx156f.;
  format C6086100 vx157f.;
  format C6086200 vx158f.;
  format C6086600 vx159f.;
  format C6086700 vx160f.;
  format C6086800 vx161f.;
  format C6087500 vx162f.;
  format C6087600 vx163f.;
  format C6087800 vx164f.;
  format Y2267000 vx165f.;
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
  format 'MS860212_1986'n vx5f.;
  format 'MS860213_1986'n vx6f.;
  format 'MS860219_1986'n vx7f.;
  format 'MS860220_1986'n vx8f.;
  format 'MS860224_1986'n vx9f.;
  format 'MS860225_1986'n vx10f.;
  format 'MS860226_1986'n vx11f.;
  format 'MS860228_1986'n vx12f.;
  format 'MS860229_1986'n vx13f.;
  format 'MS860231_1986'n vx14f.;
  format 'MS880337_1988'n vx15f.;
  format 'MS880338_1988'n vx16f.;
  format 'MS880344_1988'n vx17f.;
  format 'MS880345_1988'n vx18f.;
  format 'MS880349_1988'n vx19f.;
  format 'MS880350_1988'n vx20f.;
  format 'MS880351_1988'n vx21f.;
  format 'MS880353_1988'n vx22f.;
  format 'MS880354_1988'n vx23f.;
  format 'MS880356_1988'n vx24f.;
  format 'MS900427_1990'n vx25f.;
  format 'MS900429_1990'n vx26f.;
  format 'MS900441_1990'n vx27f.;
  format 'MS900443_1990'n vx28f.;
  format 'MS900451_1990'n vx29f.;
  format 'MS900453_1990'n vx30f.;
  format 'MS900455_1990'n vx31f.;
  format 'MS900467_1990'n vx32f.;
  format 'MS900511_1990'n vx33f.;
  format 'MS900515_1990'n vx34f.;
  format 'MS920427_1992'n vx35f.;
  format 'MS920429_1992'n vx36f.;
  format 'MS920441_1992'n vx37f.;
  format 'MS920443_1992'n vx38f.;
  format 'MS920451_1992'n vx39f.;
  format 'MS920453_1992'n vx40f.;
  format 'MS920455_1992'n vx41f.;
  format 'MS920467_1992'n vx42f.;
  format 'MS920511_1992'n vx43f.;
  format 'MS920515_1992'n vx44f.;
  format 'MS940435_1994'n vx45f.;
  format 'MS940437_1994'n vx46f.;
  format 'MS940449_1994'n vx47f.;
  format 'MS940451_1994'n vx48f.;
  format 'MS940459_1994'n vx49f.;
  format 'MS940461_1994'n vx50f.;
  format 'MS940463_1994'n vx51f.;
  format 'MS940475_1994'n vx52f.;
  format 'MS940511_1994'n vx53f.;
  format 'MS940515_1994'n vx54f.;
  format 'MS960433_1996'n vx55f.;
  format 'MS960435_1996'n vx56f.;
  format 'MS960447_1996'n vx57f.;
  format 'MS960449_1996'n vx58f.;
  format 'MS960457_1996'n vx59f.;
  format 'MS960459_1996'n vx60f.;
  format 'MS960461_1996'n vx61f.;
  format 'MS960473_1996'n vx62f.;
  format 'MS960511_1996'n vx63f.;
  format 'MS960513_1996'n vx64f.;
  format 'MS981C01_1998'n vx65f.;
  format 'MS981C02_1998'n vx66f.;
  format 'MS981C04_1998'n vx67f.;
  format 'MS981C05_1998'n vx68f.;
  format 'MS981C09_1998'n vx69f.;
  format 'MS981C10_1998'n vx70f.;
  format 'MS981C11_1998'n vx71f.;
  format 'MS981C17_1998'n vx72f.;
  format 'MS981C18_1998'n vx73f.;
  format 'MS981C20_1998'n vx74f.;
  format 'MS1-B01_2000'n vx75f.;
  format 'MS1-B02_2000'n vx76f.;
  format 'MS1-B04_2000'n vx77f.;
  format 'MS1-B05_2000'n vx78f.;
  format 'MS1-B09_2000'n vx79f.;
  format 'MS1-B10_2000'n vx80f.;
  format 'MS1-B11_2000'n vx81f.;
  format 'MS1-B17_2000'n vx82f.;
  format 'MS1-B18_2000'n vx83f.;
  format 'MS1-B20_2000'n vx84f.;
  format 'HOME-C01_2002'n vx85f.;
  format 'HOME-C02_2002'n vx86f.;
  format 'HOME-C04_2002'n vx87f.;
  format 'HOME-C05_2002'n vx88f.;
  format 'HOME-C09_2002'n vx89f.;
  format 'HOME-C10_2002'n vx90f.;
  format 'HOME-C11_2002'n vx91f.;
  format 'HOME-C17_2002'n vx92f.;
  format 'HOME-C18_2002'n vx93f.;
  format 'HOME-C20_2002'n vx94f.;
  format 'HOME-C01_2004'n vx95f.;
  format 'HOME-C02_2004'n vx96f.;
  format 'HOME-C04_2004'n vx97f.;
  format 'HOME-C05_2004'n vx98f.;
  format 'HOME-C09_2004'n vx99f.;
  format 'HOME-C10_2004'n vx100f.;
  format 'HOME-C11_2004'n vx101f.;
  format 'HOME-C17_2004'n vx102f.;
  format 'HOME-C18_2004'n vx103f.;
  format 'HOME-C20_2004'n vx104f.;
  format 'MS-HOME-C01_2006'n vx105f.;
  format 'MS-HOME-C02_2006'n vx106f.;
  format 'MS-HOME-C04_2006'n vx107f.;
  format 'MS-HOME-C05_2006'n vx108f.;
  format 'MS-HOME-C09_2006'n vx109f.;
  format 'MS-HOME-C10_2006'n vx110f.;
  format 'MS-HOME-C11_2006'n vx111f.;
  format 'MS-HOME-C17_2006'n vx112f.;
  format 'MS-HOME-C18_2006'n vx113f.;
  format 'MS-HOME-C20_2006'n vx114f.;
  format 'MS-HOME-C01_2008'n vx115f.;
  format 'MS-HOME-C02_2008'n vx116f.;
  format 'MS-HOME-C04_2008'n vx117f.;
  format 'MS-HOME-C05_2008'n vx118f.;
  format 'MS-HOME-C09_2008'n vx119f.;
  format 'MS-HOME-C10_2008'n vx120f.;
  format 'MS-HOME-C11_2008'n vx121f.;
  format 'MS-HOME-C17_2008'n vx122f.;
  format 'MS-HOME-C18_2008'n vx123f.;
  format 'MS-HOME-C20_2008'n vx124f.;
  format 'MS-HOME-C01_2010'n vx125f.;
  format 'MS-HOME-C02_2010'n vx126f.;
  format 'MS-HOME-C04_2010'n vx127f.;
  format 'MS-HOME-C05_2010'n vx128f.;
  format 'MS-HOME-C09_2010'n vx129f.;
  format 'MS-HOME-C10_2010'n vx130f.;
  format 'MS-HOME-C11_2010'n vx131f.;
  format 'MS-HOME-C17_2010'n vx132f.;
  format 'MS-HOME-C18_2010'n vx133f.;
  format 'MS-HOME-C20_2010'n vx134f.;
  format 'MS-HOME-C01_2012'n vx135f.;
  format 'MS-HOME-C02_2012'n vx136f.;
  format 'MS-HOME-C04_2012'n vx137f.;
  format 'MS-HOME-C05_2012'n vx138f.;
  format 'MS-HOME-C09_2012'n vx139f.;
  format 'MS-HOME-C10_2012'n vx140f.;
  format 'MS-HOME-C11_2012'n vx141f.;
  format 'MS-HOME-C17_2012'n vx142f.;
  format 'MS-HOME-C18_2012'n vx143f.;
  format 'MS-HOME-C20_2012'n vx144f.;
  format 'MS-HOME-C01_2014'n vx145f.;
  format 'MS-HOME-C02_2014'n vx146f.;
  format 'MS-HOME-C04_2014'n vx147f.;
  format 'MS-HOME-C05_2014'n vx148f.;
  format 'MS-HOME-C09_2014'n vx149f.;
  format 'MS-HOME-C10_2014'n vx150f.;
  format 'MS-HOME-C11_2014'n vx151f.;
  format 'MS-HOME-C17_2014'n vx152f.;
  format 'MS-HOME-C18_2014'n vx153f.;
  format 'MS-HOME-C20_2014'n vx154f.;
  format 'MS-HOME-C01_2016'n vx155f.;
  format 'MS-HOME-C02_2016'n vx156f.;
  format 'MS-HOME-C04_2016'n vx157f.;
  format 'MS-HOME-C05_2016'n vx158f.;
  format 'MS-HOME-C09_2016'n vx159f.;
  format 'MS-HOME-C10_2016'n vx160f.;
  format 'MS-HOME-C11_2016'n vx161f.;
  format 'MS-HOME-C17_2016'n vx162f.;
  format 'MS-HOME-C18_2016'n vx163f.;
  format 'MS-HOME-C20_2016'n vx164f.;
  format 'VERSION_R29_XRND'n vx165f.;
run;
*/