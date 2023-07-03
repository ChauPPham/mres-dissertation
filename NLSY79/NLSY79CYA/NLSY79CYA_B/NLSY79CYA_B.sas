options nocenter validvarname=any;

*---Read in space-delimited ascii file;

data new_data;


infile 'NLSY79CYA_B.dat' lrecl=643 missover DSD DLM=' ' print;
input
  C0000100
  C0000200
  C0005300
  C0005400
  C0005700
  C0542000
  C0542100
  C0542200
  C0542300
  C0542400
  C0542500
  C0542600
  C0542700
  C0543700
  C0543800
  C0543900
  C0544000
  C0752400
  C0752500
  C0752600
  C0752700
  C0752800
  C0752900
  C0753000
  C0753100
  C0754400
  C0754500
  C0754600
  C0754700
  C0954000
  C0954100
  C0954200
  C0954300
  C0954400
  C0954500
  C0954600
  C0954700
  C0956000
  C0956100
  C0956700
  C0956800
  C1152100
  C1152200
  C1152300
  C1152400
  C1152500
  C1152600
  C1152700
  C1152800
  C1154100
  C1154200
  C1154800
  C1154900
  C1403300
  C1403400
  C1403500
  C1403600
  C1403700
  C1403800
  C1403900
  C1404000
  C1405300
  C1405400
  C1406000
  C1406100
  C1604900
  C1605000
  C1605100
  C1605200
  C1605300
  C1605400
  C1605500
  C1605600
  C1607000
  C1607100
  C1607400
  C1607700
  C1945500
  C1945600
  C1945700
  C1945800
  C1945900
  C1946000
  C1946100
  C1946200
  C1947600
  C1947700
  C1948300
  C1948400
  C2266600
  C2266700
  C2266800
  C2266900
  C2267000
  C2267100
  C2267200
  C2267300
  C2267900
  C2268000
  C2268800
  C2268900
  C2417100
  C2417200
  C2417300
  C2417400
  C2417500
  C2417600
  C2417700
  C2417800
  C2419300
  C2419400
  C2420100
  C2420200
  C2711400
  C2711500
  C2711600
  C2711700
  C2711800
  C2711900
  C2712000
  C2712100
  C2712700
  C2712800
  C2713600
  C2713700
  C2987800
  C2987900
  C2988000
  C2988100
  C2988200
  C2988300
  C2988400
  C2988500
  C2989100
  C2989200
  C2989900
  C2990000
  C3390300
  C3390400
  C3390500
  C3390600
  C3390700
  C3390800
  C3390900
  C3391000
  C3391600
  C3391700
  C3392400
  C3392500
  C3916200
  C3916300
  C3916400
  C3916500
  C3916600
  C3916700
  C3916800
  C3916900
  C3917500
  C3917600
  C3918300
  C3918400
  C5167400
  C5167500
  C5167600
  C5167700
  C5167800
  C5167900
  C5168000
  C5168100
  C5168700
  C5168800
  C5169500
  C5169600
  C5743900
  C5744000
  C5744100
  C5744200
  C5744300
  C5744400
  C5744500
  C5744600
  C5745200
  C5745300
  C5746000
  C5746100
  C6013800
  C6013900
  C6014000
  C6014100
  C6014200
  C6014300
  C6014400
  C6014500
  C6015100
  C6015200
  C6015900
  C6016000
  C6082500
  C6082600
  C6082700
  C6082800
  C6082900
  C6083000
  C6083100
  C6083200
  C6083800
  C6083900
  C6084600
  C6084700
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
  label C0542000 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C0542100 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C0542200 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C0542300 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C0542400 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C0542500 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C0542600 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C0542700 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C0543700 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C0543800 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C0543900 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C0544000 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C0752400 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C0752500 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C0752600 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C0752700 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C0752800 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C0752900 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C0753000 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C0753100 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C0754400 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C0754500 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C0754600 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C0754700 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C0954000 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C0954100 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C0954200 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C0954300 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C0954400 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C0954500 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C0954600 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C0954700 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C0956000 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C0956100 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C0956700 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C0956800 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C1152100 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C1152200 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C1152300 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C1152400 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C1152500 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C1152600 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C1152700 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C1152800 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C1154100 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C1154200 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C1154800 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C1154900 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C1403300 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C1403400 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C1403500 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C1403600 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C1403700 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C1403800 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C1403900 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C1404000 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C1405300 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C1405400 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C1406000 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C1406100 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C1604900 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD";
  label C1605000 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS";
  label C1605100 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS";
  label C1605200 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER";
  label C1605300 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS";
  label C1605400 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET";
  label C1605500 = "HOME B (3-5): MOM HELPS CH LEARN COLORS";
  label C1605600 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES";
  label C1607000 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING";
  label C1607100 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM";
  label C1607400 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD";
  label C1607700 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY";
  label C1945500 = "HOME B: HOW OFT MOM READ TO CHILD 1998";
  label C1945600 = "HOME B: HOW MANY BOOKS DOES CH HAVE 1998";
  label C1945700 = "HOME B: HOW MANY MAGS FAMILY GETS 1998";
  label C1945800 = "HOME B: CH HAVE RECORD/TAPE PLAYER 1998";
  label C1945900 = "HOME B: MOM HELPS CH LEARN NUMBERS 1998";
  label C1946000 = "HOME B: MOM HELPS CH LEARN ALPHABET 1998";
  label C1946100 = "HOME B: MOM HELPS CH LEARN COLORS 1998";
  label C1946200 = "HOME B: MOM HELPS CH LEARN SHAPES 1998";
  label C1947600 = "HOME B: HOW OFT CH TAKEN ON OUTING 1998";
  label C1947700 = "HOME B: HOW OFT CH TAKEN TO MUSEUM 1998";
  label C1948300 = "HOME B: CH SEE FATHER(-FIG) DAILY 1998";
  label C1948400 = "HOME B: HOW OFT CH EATS W/MOM & DAD 1998";
  label C2266600 = "HOME B (3YRS): HOW OFTEN MOM READS TO CHILD 2000";
  label C2266700 = "HOME B (3YRS): HOW MANY BOOKS CHILD HAS 2000";
  label C2266800 = "HOME B (3YRS): HOW MANY MAGAZINES FAMILY GETS 2000";
  label C2266900 = "HOME B (3YRS): CH HAVE RECORD/TAPE PLAYER 2000";
  label C2267000 = "HOME B (3YRS): MOM HELPS CH LEARN NUMBERS 2000";
  label C2267100 = "HOME B (3YRS): MOM HELPS CH LEARN ALPHABET 2000";
  label C2267200 = "HOME B (3YRS): MOM HELPS CH LEARN COLORS 2000";
  label C2267300 = "HOME B (3YRS): MOM HELPS CH LEARN SHAPES 2000";
  label C2267900 = "HOME B (3YRS): HOW OFT CH TAKEN ON AN OUTING 2000";
  label C2268000 = "HOME B (3YRS): HOW OFT CH TAKEN TO MUSEUM 2000";
  label C2268800 = "HOME B (3YRS): CH SEE FATHER(-FIGURE) DAILY 2000";
  label C2268900 = "HOME B (3YRS): HOW OFT CH EATS W/MOM AND DAD 2000";
  label C2417100 = "HOME B (4-5): HOW OFTEN MOM READS TO CHILD 2000";
  label C2417200 = "HOME B (4-5): HOW MANY BOOKS CHILD HAS 2000";
  label C2417300 = "HOME B (4-5): HOW MANY MAGAZINES FAMILY GETS 2000";
  label C2417400 = "HOME B (4-5): CH HAVE RECORD/TAPE/CD PLAYER 2000";
  label C2417500 = "HOME B (4-5): MOM HELPS CH LEARN NUMBERS 2000";
  label C2417600 = "HOME B (4-5): MOM HELPS CH LEARN ALPHABET 2000";
  label C2417700 = "HOME B (4-5): MOM HELPS CH LEARN COLORS 2000";
  label C2417800 = "HOME B (4-5): MOM HELPS CH LEARN SHAPES 2000";
  label C2419300 = "HOME B (4-5): HOW OFT CH TAKEN ON AN OUTING 2000";
  label C2419400 = "HOME B (4-5): HOW OFT CH TAKEN TO MUSEUM 2000";
  label C2420100 = "HOME B (4-5): CH SEE FATHER(-FIGURE) DAILY 2000";
  label C2420200 = "HOME B (4-5): HOW OFT CH EATS W/MOM AND DAD 2000";
  label C2711400 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2002";
  label C2711500 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2002";
  label C2711600 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2002";
  label C2711700 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2002";
  label C2711800 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2002";
  label C2711900 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2002";
  label C2712000 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2002";
  label C2712100 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2002";
  label C2712700 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2002";
  label C2712800 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2002";
  label C2713600 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2002";
  label C2713700 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2002";
  label C2987800 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2004";
  label C2987900 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2004";
  label C2988000 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2004";
  label C2988100 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2004";
  label C2988200 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2004";
  label C2988300 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2004";
  label C2988400 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2004";
  label C2988500 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2004";
  label C2989100 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2004";
  label C2989200 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2004";
  label C2989900 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2004";
  label C2990000 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2004";
  label C3390300 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2006";
  label C3390400 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2006";
  label C3390500 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2006";
  label C3390600 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2006";
  label C3390700 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2006";
  label C3390800 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2006";
  label C3390900 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2006";
  label C3391000 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2006";
  label C3391600 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2006";
  label C3391700 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2006";
  label C3392400 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2006";
  label C3392500 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2006";
  label C3916200 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2008";
  label C3916300 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2008";
  label C3916400 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2008";
  label C3916500 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2008";
  label C3916600 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2008";
  label C3916700 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2008";
  label C3916800 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2008";
  label C3916900 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2008";
  label C3917500 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2008";
  label C3917600 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2008";
  label C3918300 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2008";
  label C3918400 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2008";
  label C5167400 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2010";
  label C5167500 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2010";
  label C5167600 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2010";
  label C5167700 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2010";
  label C5167800 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2010";
  label C5167900 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2010";
  label C5168000 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2010";
  label C5168100 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2010";
  label C5168700 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2010";
  label C5168800 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2010";
  label C5169500 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2010";
  label C5169600 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2010";
  label C5743900 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2012";
  label C5744000 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2012";
  label C5744100 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2012";
  label C5744200 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2012";
  label C5744300 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2012";
  label C5744400 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2012";
  label C5744500 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2012";
  label C5744600 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2012";
  label C5745200 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2012";
  label C5745300 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2012";
  label C5746000 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2012";
  label C5746100 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2012";
  label C6013800 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2014";
  label C6013900 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2014";
  label C6014000 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2014";
  label C6014100 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2014";
  label C6014200 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2014";
  label C6014300 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2014";
  label C6014400 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2014";
  label C6014500 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2014";
  label C6015100 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2014";
  label C6015200 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2014";
  label C6015900 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2014";
  label C6016000 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2014";
  label C6082500 = "HOME B (3-5): HOW OFTEN MOM READS TO CHILD 2016";
  label C6082600 = "HOME B (3-5): HOW MANY BOOKS CHILD HAS 2016";
  label C6082700 = "HOME B (3-5): HOW MANY MAGAZINES FAMILY GETS 2016";
  label C6082800 = "HOME B (3-5): CH HAVE RECORD/TAPE/CD PLAYER 2016";
  label C6082900 = "HOME B (3-5): MOM HELPS CH LEARN NUMBERS 2016";
  label C6083000 = "HOME B (3-5): MOM HELPS CH LEARN ALPHABET 2016";
  label C6083100 = "HOME B (3-5): MOM HELPS CH LEARN COLORS 2016";
  label C6083200 = "HOME B (3-5): MOM HELPS CH LEARN SHAPES 2016";
  label C6083800 = "HOME B (3-5): HOW OFT CH TAKEN ON AN OUTING 2016";
  label C6083900 = "HOME B (3-5): HOW OFT CH TAKEN TO MUSEUM 2016";
  label C6084600 = "HOME B (3-5): CH SEE FATHER(-FIGURE) DAILY 2016";
  label C6084700 = "HOME B (3-5): HOW OFT CH EATS W/MOM AND DAD 2016";
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
  C0542000 = 'MS860143_1986'n
  C0542100 = 'MS860144_1986'n
  C0542200 = 'MS860145_1986'n
  C0542300 = 'MS860146_1986'n
  C0542400 = 'MS860147_1986'n
  C0542500 = 'MS860148_1986'n
  C0542600 = 'MS860149_1986'n
  C0542700 = 'MS860150_1986'n
  C0543700 = 'MS860168_1986'n
  C0543800 = 'MS860169_1986'n
  C0543900 = 'MS860170_1986'n
  C0544000 = 'MS860171_1986'n
  C0752400 = 'MS880260_1988'n
  C0752500 = 'MS880261_1988'n
  C0752600 = 'MS880262_1988'n
  C0752700 = 'MS880263_1988'n
  C0752800 = 'MS880264_1988'n
  C0752900 = 'MS880265_1988'n
  C0753000 = 'MS880266_1988'n
  C0753100 = 'MS880267_1988'n
  C0754400 = 'MS880330_1988'n
  C0754500 = 'MS880331_1988'n
  C0754600 = 'MS880332_1988'n
  C0754700 = 'MS880333_1988'n
  C0954000 = 'MS900323_1990'n
  C0954100 = 'MS900325_1990'n
  C0954200 = 'MS900327_1990'n
  C0954300 = 'MS900329_1990'n
  C0954400 = 'MS900331_1990'n
  C0954500 = 'MS900333_1990'n
  C0954600 = 'MS900335_1990'n
  C0954700 = 'MS900337_1990'n
  C0956000 = 'MS900363_1990'n
  C0956100 = 'MS900365_1990'n
  C0956700 = 'MS900421_1990'n
  C0956800 = 'MS900423_1990'n
  C1152100 = 'MS920323_1992'n
  C1152200 = 'MS920325_1992'n
  C1152300 = 'MS920327_1992'n
  C1152400 = 'MS920329_1992'n
  C1152500 = 'MS920331_1992'n
  C1152600 = 'MS920333_1992'n
  C1152700 = 'MS920335_1992'n
  C1152800 = 'MS920337_1992'n
  C1154100 = 'MS920363_1992'n
  C1154200 = 'MS920365_1992'n
  C1154800 = 'MS920421_1992'n
  C1154900 = 'MS920423_1992'n
  C1403300 = 'MS940331_1994'n
  C1403400 = 'MS940333_1994'n
  C1403500 = 'MS940335_1994'n
  C1403600 = 'MS940337_1994'n
  C1403700 = 'MS940339_1994'n
  C1403800 = 'MS940341_1994'n
  C1403900 = 'MS940343_1994'n
  C1404000 = 'MS940345_1994'n
  C1405300 = 'MS940371_1994'n
  C1405400 = 'MS940373_1994'n
  C1406000 = 'MS940421_1994'n
  C1406100 = 'MS940423_1994'n
  C1604900 = 'MS960329_1996'n
  C1605000 = 'MS960331_1996'n
  C1605100 = 'MS960333_1996'n
  C1605200 = 'MS960335_1996'n
  C1605300 = 'MS960337_1996'n
  C1605400 = 'MS960339_1996'n
  C1605500 = 'MS960341_1996'n
  C1605600 = 'MS960343_1996'n
  C1607000 = 'MS960371_1996'n
  C1607100 = 'MS960373_1996'n
  C1607400 = 'MS960415_1996'n
  C1607700 = 'MS960421_1996'n
  C1945500 = 'MS981B01_1998'n
  C1945600 = 'MS981B02_1998'n
  C1945700 = 'MS981B03_1998'n
  C1945800 = 'MS981B04_1998'n
  C1945900 = 'MS981B05A_1998'n
  C1946000 = 'MS981B05B_1998'n
  C1946100 = 'MS981B05C_1998'n
  C1946200 = 'MS981B05D_1998'n
  C1947600 = 'MS981B09_1998'n
  C1947700 = 'MS981B10_1998'n
  C1948300 = 'MS981B16_1998'n
  C1948400 = 'MS981B17_1998'n
  C2266600 = 'HOME-B01_2000'n
  C2266700 = 'HOME-B02_2000'n
  C2266800 = 'HOME-B03_2000'n
  C2266900 = 'HOME-B04_2000'n
  C2267000 = 'HOME-B05A_2000'n
  C2267100 = 'HOME-B05B_2000'n
  C2267200 = 'HOME-B05C_2000'n
  C2267300 = 'HOME-B05D_2000'n
  C2267900 = 'HOME-B09_2000'n
  C2268000 = 'HOME-B10_2000'n
  C2268800 = 'HOME-B16_2000'n
  C2268900 = 'HOME-B17_2000'n
  C2417100 = 'MS1-A01_2000'n
  C2417200 = 'MS1-A02_2000'n
  C2417300 = 'MS1-A03_2000'n
  C2417400 = 'MS1-A04_2000'n
  C2417500 = 'MS1-A05A_2000'n
  C2417600 = 'MS1-A05B_2000'n
  C2417700 = 'MS1-A05C_2000'n
  C2417800 = 'MS1-A05D_2000'n
  C2419300 = 'MS1-A09_2000'n
  C2419400 = 'MS1-A10_2000'n
  C2420100 = 'MS1-A16_2000'n
  C2420200 = 'MS1-A17_2000'n
  C2711400 = 'HOME-B01_2002'n
  C2711500 = 'HOME-B02_2002'n
  C2711600 = 'HOME-B03_2002'n
  C2711700 = 'HOME-B04_2002'n
  C2711800 = 'HOME-B05A_2002'n
  C2711900 = 'HOME-B05B_2002'n
  C2712000 = 'HOME-B05C_2002'n
  C2712100 = 'HOME-B05D_2002'n
  C2712700 = 'HOME-B09_2002'n
  C2712800 = 'HOME-B10_2002'n
  C2713600 = 'HOME-B16_2002'n
  C2713700 = 'HOME-B17_2002'n
  C2987800 = 'HOME-B01_2004'n
  C2987900 = 'HOME-B02_2004'n
  C2988000 = 'HOME-B03_2004'n
  C2988100 = 'HOME-B04_2004'n
  C2988200 = 'HOME-B05A_2004'n
  C2988300 = 'HOME-B05B_2004'n
  C2988400 = 'HOME-B05C_2004'n
  C2988500 = 'HOME-B05D_2004'n
  C2989100 = 'HOME-B09_2004'n
  C2989200 = 'HOME-B10_2004'n
  C2989900 = 'HOME-B16_2004'n
  C2990000 = 'HOME-B17_2004'n
  C3390300 = 'MS-HOME-B01_2006'n
  C3390400 = 'MS-HOME-B02_2006'n
  C3390500 = 'MS-HOME-B03_2006'n
  C3390600 = 'MS-HOME-B04_2006'n
  C3390700 = 'MS-HOME-B05A_2006'n
  C3390800 = 'MS-HOME-B05B_2006'n
  C3390900 = 'MS-HOME-B05C_2006'n
  C3391000 = 'MS-HOME-B05D_2006'n
  C3391600 = 'MS-HOME-B09_2006'n
  C3391700 = 'MS-HOME-B10_2006'n
  C3392400 = 'MS-HOME-B16_2006'n
  C3392500 = 'MS-HOME-B17_2006'n
  C3916200 = 'MS-HOME-B01_2008'n
  C3916300 = 'MS-HOME-B02_2008'n
  C3916400 = 'MS-HOME-B03_2008'n
  C3916500 = 'MS-HOME-B04_2008'n
  C3916600 = 'MS-HOME-B05A_2008'n
  C3916700 = 'MS-HOME-B05B_2008'n
  C3916800 = 'MS-HOME-B05C_2008'n
  C3916900 = 'MS-HOME-B05D_2008'n
  C3917500 = 'MS-HOME-B09_2008'n
  C3917600 = 'MS-HOME-B10_2008'n
  C3918300 = 'MS-HOME-B16_2008'n
  C3918400 = 'MS-HOME-B17_2008'n
  C5167400 = 'MS-HOME-B01_2010'n
  C5167500 = 'MS-HOME-B02_2010'n
  C5167600 = 'MS-HOME-B03_2010'n
  C5167700 = 'MS-HOME-B04_2010'n
  C5167800 = 'MS-HOME-B05A_2010'n
  C5167900 = 'MS-HOME-B05B_2010'n
  C5168000 = 'MS-HOME-B05C_2010'n
  C5168100 = 'MS-HOME-B05D_2010'n
  C5168700 = 'MS-HOME-B09_2010'n
  C5168800 = 'MS-HOME-B10_2010'n
  C5169500 = 'MS-HOME-B16_2010'n
  C5169600 = 'MS-HOME-B17_2010'n
  C5743900 = 'MS-HOME-B01_2012'n
  C5744000 = 'MS-HOME-B02_2012'n
  C5744100 = 'MS-HOME-B03_2012'n
  C5744200 = 'MS-HOME-B04_2012'n
  C5744300 = 'MS-HOME-B05A_2012'n
  C5744400 = 'MS-HOME-B05B_2012'n
  C5744500 = 'MS-HOME-B05C_2012'n
  C5744600 = 'MS-HOME-B05D_2012'n
  C5745200 = 'MS-HOME-B09_2012'n
  C5745300 = 'MS-HOME-B10_2012'n
  C5746000 = 'MS-HOME-B16_2012'n
  C5746100 = 'MS-HOME-B17_2012'n
  C6013800 = 'MS-HOME-B01_2014'n
  C6013900 = 'MS-HOME-B02_2014'n
  C6014000 = 'MS-HOME-B03_2014'n
  C6014100 = 'MS-HOME-B04_2014'n
  C6014200 = 'MS-HOME-B05A_2014'n
  C6014300 = 'MS-HOME-B05B_2014'n
  C6014400 = 'MS-HOME-B05C_2014'n
  C6014500 = 'MS-HOME-B05D_2014'n
  C6015100 = 'MS-HOME-B09_2014'n
  C6015200 = 'MS-HOME-B10_2014'n
  C6015900 = 'MS-HOME-B16_2014'n
  C6016000 = 'MS-HOME-B17_2014'n
  C6082500 = 'MS-HOME-B01_2016'n
  C6082600 = 'MS-HOME-B02_2016'n
  C6082700 = 'MS-HOME-B03_2016'n
  C6082800 = 'MS-HOME-B04_2016'n
  C6082900 = 'MS-HOME-B05A_2016'n
  C6083000 = 'MS-HOME-B05B_2016'n
  C6083100 = 'MS-HOME-B05C_2016'n
  C6083200 = 'MS-HOME-B05D_2016'n
  C6083800 = 'MS-HOME-B09_2016'n
  C6083900 = 'MS-HOME-B10_2016'n
  C6084600 = 'MS-HOME-B16_2016'n
  C6084700 = 'MS-HOME-B17_2016'n
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
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx6f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx7f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx8f
  0='NO'
  1='YES'
;
value vx9f
  1='YES'
  2='YES'
  3='YES'
  4='YES'
  5='YES'
  6='YES'
  7='YES'
  8='YES'
  9='YES'
  10='YES'
  11='YES'
  12='YES'
  13='YES'
  14='YES'
  15='YES'
  16='YES'
  17='YES'
  18='YES'
  19='YES'
;
value vx10f
  1='YES'
  2='YES'
  3='YES'
  4='YES'
  5='YES'
  6='YES'
  7='YES'
  8='YES'
  9='YES'
  10='YES'
  11='YES'
  12='YES'
  13='YES'
  14='YES'
  15='YES'
  16='YES'
  17='YES'
  18='YES'
  19='YES'
;
value vx11f
  1='YES'
  2='YES'
  3='YES'
  4='YES'
  5='YES'
  6='YES'
  7='YES'
  8='YES'
  9='YES'
  10='YES'
  11='YES'
  12='YES'
  13='YES'
  14='YES'
  15='YES'
  16='YES'
  17='YES'
  18='YES'
  19='YES'
;
value vx12f
  1='YES'
  2='YES'
  3='YES'
  4='YES'
  5='YES'
  6='YES'
  7='YES'
  8='YES'
  9='YES'
  10='YES'
  11='YES'
  12='YES'
  13='YES'
  14='YES'
  15='YES'
  16='YES'
  17='YES'
  18='YES'
  19='YES'
;
value vx13f
  1='FEW TIMES A YR OR <'
  2='ABOUT ONCE A MONTH'
  3='2 OR 3 TIMES A MONTH'
  4='SEVERAL TIMES A WEEK'
  5='ABOUT ONCE A DAY'
;
value vx14f
  1='NEVER, TOO YOUNG'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='MONTHLY'
  5='WKLY OR MORE FREQUENTLY'
;
value vx15f
  0='NO'
  1='YES'
;
value vx16f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
;
value vx17f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx18f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx19f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx20f
  0='NO'
  1='YES'
;
value vx21f
  1='NUMBERS'
;
value vx22f
  2='THE ALPHABET'
;
value vx23f
  3='COLORS'
;
value vx24f
  4='SHAPES AND SIZES'
;
value vx25f
  1='A FEW TIMES A YEAR OR LESS'
  2='ABOUT ONCE A MONTH'
  3='ABOUT 2 OR 3 TIMES A MONTH'
  4='SEVERAL TIMES A WEEK'
  5='ABOUT ONCE A DAY'
;
value vx26f
  1='NEVER, TOO YOUNG'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx27f
  0='NO'
  1='YES'
;
value vx28f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
;
value vx29f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx30f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx31f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx32f
  0='NO'
  1='YES'
;
value vx33f
  1='NUMBERS'
;
value vx34f
  2='THE ALPHABET'
;
value vx35f
  3='COLORS'
;
value vx36f
  4='SHAPES AND SIZES'
;
value vx37f
  1='A FEW TIMES A YEAR OR LESS'
  2='ABOUT ONCE A MONTH'
  3='ABOUT 2 OR 3 TIMES A MONTH'
  4='SEVERAL TIMES A WEEK'
  5='ABOUT ONCE A DAY'
;
value vx38f
  1='NEVER, TOO YOUNG'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx39f
  0='NO'
  1='YES'
  2='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx40f
  1='MORE THAN ONCE A DAY'
  2='ONCE A DAY'
  3='SEVERAL TIMES A WEEK'
  4='ONCE A WEEK'
  5='ONCE A MONTH OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx41f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx42f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx43f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx44f
  0='NO'
  1='YES'
;
value vx45f
  1='NUMBERS'
;
value vx46f
  2='THE ALPHABET'
;
value vx47f
  3='COLORS'
;
value vx48f
  4='SHAPES AND SIZES'
;
value vx49f
  1='A FEW TIMES A YEAR OR LESS'
  2='ABOUT ONCE A MONTH'
  3='ABOUT 2 OR 3 TIMES A MONTH'
  4='SEVERAL TIMES A WEEK'
  5='ABOUT ONCE A DAY'
;
value vx50f
  1='NEVER, TOO YOUNG'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx51f
  0='NO'
  1='YES'
  2='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
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
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='ABOUT 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx54f
  1='NONE, TOO YOUNG'
  2='1 OR 2 BOOKS'
  3='3 OR 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx55f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx56f
  0='NO'
  1='YES'
;
value vx57f
  1='NUMBERS'
;
value vx58f
  2='ALPHABET'
;
value vx59f
  3='COLORS'
;
value vx60f
  4='SHAPES AND SIZES'
;
value vx61f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx62f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx63f
  0='NO'
  1='YES'
  2='NO FATHER, STEP-FATHER, OR FATHER FIGURE'
;
value vx64f
  1='ONCE A DAY OR MORE OFTEN'
  2='AT LEAST 4 TIMES A WEEK'
  3='ABOUT ONCE A WEEK'
  4='ABOUT ONCE A MONTH'
  5='A FEW TIMES A YEAR OR LESS'
  6='NEVER'
  7='NO FATHER, STEP FATHER, OR FATHER-FIGURE'
;
value vx65f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='AT LEAST 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx66f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx67f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx68f
  0='No'
  1='Yes'
;
value vx69f
  1='NUMBERS'
;
value vx70f
  2='ALPHABET'
;
value vx71f
  3='COLORS'
;
value vx72f
  4='SHAPES AND SIZES'
;
value vx73f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx74f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE'
;
value vx75f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
  7='No father, step-father, father figure'
;
value vx76f
  0='NO'
  1='YES'
  2='NO FATHER, STEP-FATHER, OR FATHER FIGURE'
;
value vx77f
  1='NEVER'
  2='SEVERAL TIMES A YEAR'
  3='SEVERAL TIMES A MONTH'
  4='ONCE A WEEK'
  5='AT LEAST 3 TIMES A WEEK'
  6='EVERYDAY'
;
value vx78f
  1='NONE'
  2='1 OR 2 BOOKS'
  3='3 TO 9 BOOKS'
  4='10 OR MORE BOOKS'
;
value vx79f
  1='NONE'
  2='ONE'
  3='TWO'
  4='THREE'
  5='FOUR OR MORE'
;
value vx80f
  0='No'
  1='Yes'
;
value vx81f
  1='Selected'
  2='Not Selected'
;
value vx82f
  1='Selected'
  2='Not Selected'
;
value vx83f
  1='Selected'
  2='Not Selected'
;
value vx84f
  1='Selected'
  2='Not Selected'
;
value vx85f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx86f
  1='NEVER'
  2='ONCE OR TWICE'
  3='SEVERAL TIMES'
  4='ABOUT ONCE A MONTH'
  5='ABOUT ONCE A WEEK OR MORE OFTEN'
;
value vx87f
  0='NO'
  1='YES'
  2='NO FATHER, STEPFATHER, OR FATHER FIGURE'
;
value vx88f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
  7='No father, step-father, father figure'
;
value vx89f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx90f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx91f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx92f
  0='No'
  1='Yes'
;
value vx93f
  0='No'
  1='Yes'
;
value vx94f
  0='No'
  1='Yes'
;
value vx95f
  0='No'
  1='Yes'
;
value vx96f
  0='No'
  1='Yes'
;
value vx97f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx98f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
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
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx102f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx103f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx104f
  0='No'
  1='Yes'
;
value vx105f
  0='Not Selected'
  1='Selected'
;
value vx106f
  0='Not Selected'
  1='Selected'
;
value vx107f
  0='Not Selected'
  1='Selected'
;
value vx108f
  0='Not Selected'
  1='Selected'
;
value vx109f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx110f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx111f
  0='No'
  1='Yes'
  2='No father, stepfather, or father figure'
;
value vx112f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
  7='No father, stepfather, father-figure'
;
value vx113f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx114f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx115f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx116f
  0='No'
  1='Yes'
;
value vx117f
  0='No'
  1='Yes'
;
value vx118f
  0='No'
  1='Yes'
;
value vx119f
  0='No'
  1='Yes'
;
value vx120f
  0='No'
  1='Yes'
;
value vx121f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx122f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx123f
  0='No'
  1='Yes'
;
value vx124f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx125f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx126f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx127f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx128f
  0='No'
  1='Yes'
;
value vx129f
  0='No'
  1='Yes'
;
value vx130f
  0='No'
  1='Yes'
;
value vx131f
  0='No'
  1='Yes'
;
value vx132f
  0='No'
  1='Yes'
;
value vx133f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx134f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx135f
  0='No'
  1='Yes'
;
value vx136f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx137f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx138f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx139f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx140f
  0='No'
  1='Yes'
;
value vx141f
  0='No'
  1='Yes'
;
value vx142f
  0='No'
  1='Yes'
;
value vx143f
  0='No'
  1='Yes'
;
value vx144f
  0='No'
  1='Yes'
;
value vx145f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx146f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx147f
  0='No'
  1='Yes'
;
value vx148f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx149f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx150f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx151f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx152f
  0='No'
  1='Yes'
;
value vx153f
  0='No'
  1='Yes'
;
value vx154f
  0='No'
  1='Yes'
;
value vx155f
  0='No'
  1='Yes'
;
value vx156f
  0='No'
  1='Yes'
;
value vx157f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx158f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx159f
  0='No'
  1='Yes'
;
value vx160f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx161f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx162f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx163f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx164f
  0='No'
  1='Yes'
;
value vx165f
  0='No'
  1='Yes'
;
value vx166f
  0='No'
  1='Yes'
;
value vx167f
  0='No'
  1='Yes'
;
value vx168f
  0='No'
  1='Yes'
;
value vx169f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx170f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx171f
  0='No'
  1='Yes'
;
value vx172f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx173f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx174f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx175f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx176f
  0='No'
  1='Yes'
;
value vx177f
  0='No'
  1='Yes'
;
value vx178f
  0='No'
  1='Yes'
;
value vx179f
  0='No'
  1='Yes'
;
value vx180f
  0='No'
  1='Yes'
;
value vx181f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx182f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx183f
  0='No'
  1='Yes'
;
value vx184f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx185f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx186f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx187f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx188f
  0='No'
  1='Yes'
;
value vx189f
  0='No'
  1='Yes'
;
value vx190f
  0='No'
  1='Yes'
;
value vx191f
  0='No'
  1='Yes'
;
value vx192f
  0='No'
  1='Yes'
;
value vx193f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx194f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx195f
  0='No'
  1='Yes'
;
value vx196f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx197f
  1='Never'
  2='Several times a year'
  3='Several times a month'
  4='Once a week'
  5='At least 3 times a week'
  6='Everyday'
;
value vx198f
  1='None'
  2='1 or 2 books'
  3='3 to 9 books'
  4='10 or more books'
;
value vx199f
  1='None'
  2='One'
  3='Two'
  4='Three'
  5='Four or more'
;
value vx200f
  0='No'
  1='Yes'
;
value vx201f
  0='No'
  1='Yes'
;
value vx202f
  0='No'
  1='Yes'
;
value vx203f
  0='No'
  1='Yes'
;
value vx204f
  0='No'
  1='Yes'
;
value vx205f
  1='A few times a year or less'
  2='About once a month'
  3='About two or three times a month'
  4='Several times a week'
  5='About once a day'
;
value vx206f
  1='Never'
  2='Once or twice'
  3='Several times'
  4='About once a month'
  5='About once a week or more often'
;
value vx207f
  0='No'
  1='Yes'
;
value vx208f
  1='More than once a day'
  2='Once a day'
  3='Several times a week'
  4='About once a week'
  5='About once a month'
  6='Never'
;
value vx209f
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
  format C0542000 vx5f.;
  format C0542100 vx6f.;
  format C0542200 vx7f.;
  format C0542300 vx8f.;
  format C0542400 vx9f.;
  format C0542500 vx10f.;
  format C0542600 vx11f.;
  format C0542700 vx12f.;
  format C0543700 vx13f.;
  format C0543800 vx14f.;
  format C0543900 vx15f.;
  format C0544000 vx16f.;
  format C0752400 vx17f.;
  format C0752500 vx18f.;
  format C0752600 vx19f.;
  format C0752700 vx20f.;
  format C0752800 vx21f.;
  format C0752900 vx22f.;
  format C0753000 vx23f.;
  format C0753100 vx24f.;
  format C0754400 vx25f.;
  format C0754500 vx26f.;
  format C0754600 vx27f.;
  format C0754700 vx28f.;
  format C0954000 vx29f.;
  format C0954100 vx30f.;
  format C0954200 vx31f.;
  format C0954300 vx32f.;
  format C0954400 vx33f.;
  format C0954500 vx34f.;
  format C0954600 vx35f.;
  format C0954700 vx36f.;
  format C0956000 vx37f.;
  format C0956100 vx38f.;
  format C0956700 vx39f.;
  format C0956800 vx40f.;
  format C1152100 vx41f.;
  format C1152200 vx42f.;
  format C1152300 vx43f.;
  format C1152400 vx44f.;
  format C1152500 vx45f.;
  format C1152600 vx46f.;
  format C1152700 vx47f.;
  format C1152800 vx48f.;
  format C1154100 vx49f.;
  format C1154200 vx50f.;
  format C1154800 vx51f.;
  format C1154900 vx52f.;
  format C1403300 vx53f.;
  format C1403400 vx54f.;
  format C1403500 vx55f.;
  format C1403600 vx56f.;
  format C1403700 vx57f.;
  format C1403800 vx58f.;
  format C1403900 vx59f.;
  format C1404000 vx60f.;
  format C1405300 vx61f.;
  format C1405400 vx62f.;
  format C1406000 vx63f.;
  format C1406100 vx64f.;
  format C1604900 vx65f.;
  format C1605000 vx66f.;
  format C1605100 vx67f.;
  format C1605200 vx68f.;
  format C1605300 vx69f.;
  format C1605400 vx70f.;
  format C1605500 vx71f.;
  format C1605600 vx72f.;
  format C1607000 vx73f.;
  format C1607100 vx74f.;
  format C1607400 vx75f.;
  format C1607700 vx76f.;
  format C1945500 vx77f.;
  format C1945600 vx78f.;
  format C1945700 vx79f.;
  format C1945800 vx80f.;
  format C1945900 vx81f.;
  format C1946000 vx82f.;
  format C1946100 vx83f.;
  format C1946200 vx84f.;
  format C1947600 vx85f.;
  format C1947700 vx86f.;
  format C1948300 vx87f.;
  format C1948400 vx88f.;
  format C2266600 vx89f.;
  format C2266700 vx90f.;
  format C2266800 vx91f.;
  format C2266900 vx92f.;
  format C2267000 vx93f.;
  format C2267100 vx94f.;
  format C2267200 vx95f.;
  format C2267300 vx96f.;
  format C2267900 vx97f.;
  format C2268000 vx98f.;
  format C2268800 vx99f.;
  format C2268900 vx100f.;
  format C2417100 vx101f.;
  format C2417200 vx102f.;
  format C2417300 vx103f.;
  format C2417400 vx104f.;
  format C2417500 vx105f.;
  format C2417600 vx106f.;
  format C2417700 vx107f.;
  format C2417800 vx108f.;
  format C2419300 vx109f.;
  format C2419400 vx110f.;
  format C2420100 vx111f.;
  format C2420200 vx112f.;
  format C2711400 vx113f.;
  format C2711500 vx114f.;
  format C2711600 vx115f.;
  format C2711700 vx116f.;
  format C2711800 vx117f.;
  format C2711900 vx118f.;
  format C2712000 vx119f.;
  format C2712100 vx120f.;
  format C2712700 vx121f.;
  format C2712800 vx122f.;
  format C2713600 vx123f.;
  format C2713700 vx124f.;
  format C2987800 vx125f.;
  format C2987900 vx126f.;
  format C2988000 vx127f.;
  format C2988100 vx128f.;
  format C2988200 vx129f.;
  format C2988300 vx130f.;
  format C2988400 vx131f.;
  format C2988500 vx132f.;
  format C2989100 vx133f.;
  format C2989200 vx134f.;
  format C2989900 vx135f.;
  format C2990000 vx136f.;
  format C3390300 vx137f.;
  format C3390400 vx138f.;
  format C3390500 vx139f.;
  format C3390600 vx140f.;
  format C3390700 vx141f.;
  format C3390800 vx142f.;
  format C3390900 vx143f.;
  format C3391000 vx144f.;
  format C3391600 vx145f.;
  format C3391700 vx146f.;
  format C3392400 vx147f.;
  format C3392500 vx148f.;
  format C3916200 vx149f.;
  format C3916300 vx150f.;
  format C3916400 vx151f.;
  format C3916500 vx152f.;
  format C3916600 vx153f.;
  format C3916700 vx154f.;
  format C3916800 vx155f.;
  format C3916900 vx156f.;
  format C3917500 vx157f.;
  format C3917600 vx158f.;
  format C3918300 vx159f.;
  format C3918400 vx160f.;
  format C5167400 vx161f.;
  format C5167500 vx162f.;
  format C5167600 vx163f.;
  format C5167700 vx164f.;
  format C5167800 vx165f.;
  format C5167900 vx166f.;
  format C5168000 vx167f.;
  format C5168100 vx168f.;
  format C5168700 vx169f.;
  format C5168800 vx170f.;
  format C5169500 vx171f.;
  format C5169600 vx172f.;
  format C5743900 vx173f.;
  format C5744000 vx174f.;
  format C5744100 vx175f.;
  format C5744200 vx176f.;
  format C5744300 vx177f.;
  format C5744400 vx178f.;
  format C5744500 vx179f.;
  format C5744600 vx180f.;
  format C5745200 vx181f.;
  format C5745300 vx182f.;
  format C5746000 vx183f.;
  format C5746100 vx184f.;
  format C6013800 vx185f.;
  format C6013900 vx186f.;
  format C6014000 vx187f.;
  format C6014100 vx188f.;
  format C6014200 vx189f.;
  format C6014300 vx190f.;
  format C6014400 vx191f.;
  format C6014500 vx192f.;
  format C6015100 vx193f.;
  format C6015200 vx194f.;
  format C6015900 vx195f.;
  format C6016000 vx196f.;
  format C6082500 vx197f.;
  format C6082600 vx198f.;
  format C6082700 vx199f.;
  format C6082800 vx200f.;
  format C6082900 vx201f.;
  format C6083000 vx202f.;
  format C6083100 vx203f.;
  format C6083200 vx204f.;
  format C6083800 vx205f.;
  format C6083900 vx206f.;
  format C6084600 vx207f.;
  format C6084700 vx208f.;
  format Y2267000 vx209f.;
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
  format 'MS860143_1986'n vx5f.;
  format 'MS860144_1986'n vx6f.;
  format 'MS860145_1986'n vx7f.;
  format 'MS860146_1986'n vx8f.;
  format 'MS860147_1986'n vx9f.;
  format 'MS860148_1986'n vx10f.;
  format 'MS860149_1986'n vx11f.;
  format 'MS860150_1986'n vx12f.;
  format 'MS860168_1986'n vx13f.;
  format 'MS860169_1986'n vx14f.;
  format 'MS860170_1986'n vx15f.;
  format 'MS860171_1986'n vx16f.;
  format 'MS880260_1988'n vx17f.;
  format 'MS880261_1988'n vx18f.;
  format 'MS880262_1988'n vx19f.;
  format 'MS880263_1988'n vx20f.;
  format 'MS880264_1988'n vx21f.;
  format 'MS880265_1988'n vx22f.;
  format 'MS880266_1988'n vx23f.;
  format 'MS880267_1988'n vx24f.;
  format 'MS880330_1988'n vx25f.;
  format 'MS880331_1988'n vx26f.;
  format 'MS880332_1988'n vx27f.;
  format 'MS880333_1988'n vx28f.;
  format 'MS900323_1990'n vx29f.;
  format 'MS900325_1990'n vx30f.;
  format 'MS900327_1990'n vx31f.;
  format 'MS900329_1990'n vx32f.;
  format 'MS900331_1990'n vx33f.;
  format 'MS900333_1990'n vx34f.;
  format 'MS900335_1990'n vx35f.;
  format 'MS900337_1990'n vx36f.;
  format 'MS900363_1990'n vx37f.;
  format 'MS900365_1990'n vx38f.;
  format 'MS900421_1990'n vx39f.;
  format 'MS900423_1990'n vx40f.;
  format 'MS920323_1992'n vx41f.;
  format 'MS920325_1992'n vx42f.;
  format 'MS920327_1992'n vx43f.;
  format 'MS920329_1992'n vx44f.;
  format 'MS920331_1992'n vx45f.;
  format 'MS920333_1992'n vx46f.;
  format 'MS920335_1992'n vx47f.;
  format 'MS920337_1992'n vx48f.;
  format 'MS920363_1992'n vx49f.;
  format 'MS920365_1992'n vx50f.;
  format 'MS920421_1992'n vx51f.;
  format 'MS920423_1992'n vx52f.;
  format 'MS940331_1994'n vx53f.;
  format 'MS940333_1994'n vx54f.;
  format 'MS940335_1994'n vx55f.;
  format 'MS940337_1994'n vx56f.;
  format 'MS940339_1994'n vx57f.;
  format 'MS940341_1994'n vx58f.;
  format 'MS940343_1994'n vx59f.;
  format 'MS940345_1994'n vx60f.;
  format 'MS940371_1994'n vx61f.;
  format 'MS940373_1994'n vx62f.;
  format 'MS940421_1994'n vx63f.;
  format 'MS940423_1994'n vx64f.;
  format 'MS960329_1996'n vx65f.;
  format 'MS960331_1996'n vx66f.;
  format 'MS960333_1996'n vx67f.;
  format 'MS960335_1996'n vx68f.;
  format 'MS960337_1996'n vx69f.;
  format 'MS960339_1996'n vx70f.;
  format 'MS960341_1996'n vx71f.;
  format 'MS960343_1996'n vx72f.;
  format 'MS960371_1996'n vx73f.;
  format 'MS960373_1996'n vx74f.;
  format 'MS960415_1996'n vx75f.;
  format 'MS960421_1996'n vx76f.;
  format 'MS981B01_1998'n vx77f.;
  format 'MS981B02_1998'n vx78f.;
  format 'MS981B03_1998'n vx79f.;
  format 'MS981B04_1998'n vx80f.;
  format 'MS981B05A_1998'n vx81f.;
  format 'MS981B05B_1998'n vx82f.;
  format 'MS981B05C_1998'n vx83f.;
  format 'MS981B05D_1998'n vx84f.;
  format 'MS981B09_1998'n vx85f.;
  format 'MS981B10_1998'n vx86f.;
  format 'MS981B16_1998'n vx87f.;
  format 'MS981B17_1998'n vx88f.;
  format 'HOME-B01_2000'n vx89f.;
  format 'HOME-B02_2000'n vx90f.;
  format 'HOME-B03_2000'n vx91f.;
  format 'HOME-B04_2000'n vx92f.;
  format 'HOME-B05A_2000'n vx93f.;
  format 'HOME-B05B_2000'n vx94f.;
  format 'HOME-B05C_2000'n vx95f.;
  format 'HOME-B05D_2000'n vx96f.;
  format 'HOME-B09_2000'n vx97f.;
  format 'HOME-B10_2000'n vx98f.;
  format 'HOME-B16_2000'n vx99f.;
  format 'HOME-B17_2000'n vx100f.;
  format 'MS1-A01_2000'n vx101f.;
  format 'MS1-A02_2000'n vx102f.;
  format 'MS1-A03_2000'n vx103f.;
  format 'MS1-A04_2000'n vx104f.;
  format 'MS1-A05A_2000'n vx105f.;
  format 'MS1-A05B_2000'n vx106f.;
  format 'MS1-A05C_2000'n vx107f.;
  format 'MS1-A05D_2000'n vx108f.;
  format 'MS1-A09_2000'n vx109f.;
  format 'MS1-A10_2000'n vx110f.;
  format 'MS1-A16_2000'n vx111f.;
  format 'MS1-A17_2000'n vx112f.;
  format 'HOME-B01_2002'n vx113f.;
  format 'HOME-B02_2002'n vx114f.;
  format 'HOME-B03_2002'n vx115f.;
  format 'HOME-B04_2002'n vx116f.;
  format 'HOME-B05A_2002'n vx117f.;
  format 'HOME-B05B_2002'n vx118f.;
  format 'HOME-B05C_2002'n vx119f.;
  format 'HOME-B05D_2002'n vx120f.;
  format 'HOME-B09_2002'n vx121f.;
  format 'HOME-B10_2002'n vx122f.;
  format 'HOME-B16_2002'n vx123f.;
  format 'HOME-B17_2002'n vx124f.;
  format 'HOME-B01_2004'n vx125f.;
  format 'HOME-B02_2004'n vx126f.;
  format 'HOME-B03_2004'n vx127f.;
  format 'HOME-B04_2004'n vx128f.;
  format 'HOME-B05A_2004'n vx129f.;
  format 'HOME-B05B_2004'n vx130f.;
  format 'HOME-B05C_2004'n vx131f.;
  format 'HOME-B05D_2004'n vx132f.;
  format 'HOME-B09_2004'n vx133f.;
  format 'HOME-B10_2004'n vx134f.;
  format 'HOME-B16_2004'n vx135f.;
  format 'HOME-B17_2004'n vx136f.;
  format 'MS-HOME-B01_2006'n vx137f.;
  format 'MS-HOME-B02_2006'n vx138f.;
  format 'MS-HOME-B03_2006'n vx139f.;
  format 'MS-HOME-B04_2006'n vx140f.;
  format 'MS-HOME-B05A_2006'n vx141f.;
  format 'MS-HOME-B05B_2006'n vx142f.;
  format 'MS-HOME-B05C_2006'n vx143f.;
  format 'MS-HOME-B05D_2006'n vx144f.;
  format 'MS-HOME-B09_2006'n vx145f.;
  format 'MS-HOME-B10_2006'n vx146f.;
  format 'MS-HOME-B16_2006'n vx147f.;
  format 'MS-HOME-B17_2006'n vx148f.;
  format 'MS-HOME-B01_2008'n vx149f.;
  format 'MS-HOME-B02_2008'n vx150f.;
  format 'MS-HOME-B03_2008'n vx151f.;
  format 'MS-HOME-B04_2008'n vx152f.;
  format 'MS-HOME-B05A_2008'n vx153f.;
  format 'MS-HOME-B05B_2008'n vx154f.;
  format 'MS-HOME-B05C_2008'n vx155f.;
  format 'MS-HOME-B05D_2008'n vx156f.;
  format 'MS-HOME-B09_2008'n vx157f.;
  format 'MS-HOME-B10_2008'n vx158f.;
  format 'MS-HOME-B16_2008'n vx159f.;
  format 'MS-HOME-B17_2008'n vx160f.;
  format 'MS-HOME-B01_2010'n vx161f.;
  format 'MS-HOME-B02_2010'n vx162f.;
  format 'MS-HOME-B03_2010'n vx163f.;
  format 'MS-HOME-B04_2010'n vx164f.;
  format 'MS-HOME-B05A_2010'n vx165f.;
  format 'MS-HOME-B05B_2010'n vx166f.;
  format 'MS-HOME-B05C_2010'n vx167f.;
  format 'MS-HOME-B05D_2010'n vx168f.;
  format 'MS-HOME-B09_2010'n vx169f.;
  format 'MS-HOME-B10_2010'n vx170f.;
  format 'MS-HOME-B16_2010'n vx171f.;
  format 'MS-HOME-B17_2010'n vx172f.;
  format 'MS-HOME-B01_2012'n vx173f.;
  format 'MS-HOME-B02_2012'n vx174f.;
  format 'MS-HOME-B03_2012'n vx175f.;
  format 'MS-HOME-B04_2012'n vx176f.;
  format 'MS-HOME-B05A_2012'n vx177f.;
  format 'MS-HOME-B05B_2012'n vx178f.;
  format 'MS-HOME-B05C_2012'n vx179f.;
  format 'MS-HOME-B05D_2012'n vx180f.;
  format 'MS-HOME-B09_2012'n vx181f.;
  format 'MS-HOME-B10_2012'n vx182f.;
  format 'MS-HOME-B16_2012'n vx183f.;
  format 'MS-HOME-B17_2012'n vx184f.;
  format 'MS-HOME-B01_2014'n vx185f.;
  format 'MS-HOME-B02_2014'n vx186f.;
  format 'MS-HOME-B03_2014'n vx187f.;
  format 'MS-HOME-B04_2014'n vx188f.;
  format 'MS-HOME-B05A_2014'n vx189f.;
  format 'MS-HOME-B05B_2014'n vx190f.;
  format 'MS-HOME-B05C_2014'n vx191f.;
  format 'MS-HOME-B05D_2014'n vx192f.;
  format 'MS-HOME-B09_2014'n vx193f.;
  format 'MS-HOME-B10_2014'n vx194f.;
  format 'MS-HOME-B16_2014'n vx195f.;
  format 'MS-HOME-B17_2014'n vx196f.;
  format 'MS-HOME-B01_2016'n vx197f.;
  format 'MS-HOME-B02_2016'n vx198f.;
  format 'MS-HOME-B03_2016'n vx199f.;
  format 'MS-HOME-B04_2016'n vx200f.;
  format 'MS-HOME-B05A_2016'n vx201f.;
  format 'MS-HOME-B05B_2016'n vx202f.;
  format 'MS-HOME-B05C_2016'n vx203f.;
  format 'MS-HOME-B05D_2016'n vx204f.;
  format 'MS-HOME-B09_2016'n vx205f.;
  format 'MS-HOME-B10_2016'n vx206f.;
  format 'MS-HOME-B16_2016'n vx207f.;
  format 'MS-HOME-B17_2016'n vx208f.;
  format 'VERSION_R29_XRND'n vx209f.;
run;
*/