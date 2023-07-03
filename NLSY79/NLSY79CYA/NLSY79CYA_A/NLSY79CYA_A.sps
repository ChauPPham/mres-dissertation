file handle pcdat/name='NLSY79CYA_A.dat' /lrecl=387.
data list file pcdat free /
  C0000100 (F7)
  C0000200 (F5)
  C0005300 (F2)
  C0005400 (F2)
  C0005700 (F4)
  C0540800 (F2)
  C0540900 (F2)
  C0541000 (F2)
  C0541100 (F2)
  C0541200 (F2)
  C0541300 (F2)
  C0541500 (F2)
  C0541600 (F2)
  C0751200 (F2)
  C0751300 (F2)
  C0751400 (F2)
  C0751500 (F2)
  C0751600 (F2)
  C0751700 (F2)
  C0751900 (F2)
  C0752000 (F2)
  C0952300 (F2)
  C0952400 (F2)
  C0952500 (F2)
  C0952600 (F2)
  C0952700 (F2)
  C0952800 (F2)
  C0953600 (F2)
  C0953700 (F2)
  C1150400 (F2)
  C1150500 (F2)
  C1150600 (F2)
  C1150700 (F2)
  C1150800 (F2)
  C1150900 (F2)
  C1151700 (F2)
  C1151800 (F2)
  C1401200 (F2)
  C1401300 (F2)
  C1401400 (F2)
  C1401500 (F2)
  C1401600 (F2)
  C1401700 (F2)
  C1402500 (F2)
  C1402600 (F2)
  C1602900 (F2)
  C1603000 (F2)
  C1603100 (F2)
  C1603200 (F2)
  C1603300 (F2)
  C1603400 (F2)
  C1603900 (F2)
  C1604200 (F2)
  C1943400 (F2)
  C1943500 (F2)
  C1943600 (F2)
  C1943700 (F2)
  C1943800 (F2)
  C1943900 (F2)
  C1944700 (F2)
  C1944800 (F2)
  C2264100 (F2)
  C2264200 (F2)
  C2264300 (F2)
  C2264400 (F2)
  C2264500 (F2)
  C2264600 (F2)
  C2265700 (F2)
  C2265800 (F2)
  C2708900 (F2)
  C2709000 (F2)
  C2709100 (F2)
  C2709200 (F2)
  C2709300 (F2)
  C2709400 (F2)
  C2710500 (F2)
  C2710600 (F2)
  C2985500 (F2)
  C2985600 (F2)
  C2985700 (F2)
  C2985800 (F2)
  C2985900 (F3)
  C2986000 (F2)
  C2987000 (F2)
  C2987100 (F2)
  C3388000 (F2)
  C3388100 (F2)
  C3388200 (F2)
  C3388300 (F2)
  C3388400 (F3)
  C3388500 (F2)
  C3389500 (F2)
  C3389600 (F2)
  C3913800 (F2)
  C3913900 (F2)
  C3914000 (F2)
  C3914100 (F2)
  C3914200 (F2)
  C3914300 (F2)
  C3915300 (F2)
  C3915400 (F2)
  C5165300 (F2)
  C5165400 (F2)
  C5165500 (F2)
  C5165600 (F2)
  C5165700 (F2)
  C5165800 (F2)
  C5166600 (F2)
  C5166700 (F2)
  C5741500 (F2)
  C5741600 (F2)
  C5741700 (F2)
  C5741800 (F2)
  C5741900 (F2)
  C5742000 (F2)
  C5743000 (F2)
  C5743100 (F2)
  C6080800 (F2)
  C6080900 (F2)
  C6081000 (F2)
  C6081100 (F2)
  C6081200 (F2)
  C6081300 (F2)
  Y2267000 (F3)
.
* The following code works with current versions of SPSS.
missing values all (-7,-3 thru -1).
* older versions of SPSS may require this:
* recode all (-3,-2,-1=-7).
* missing values all (-7).
variable labels
  C0000100  "ID CODE OF CHILD"
  C0000200  "ID CODE OF MOTHER OF CHILD"
  C0005300  "RACE OF CHILD (FROM MOTHERS SCREENER 79)"
  C0005400  "SEX OF CHILD"
  C0005700  "DATE OF BIRTH OF CHILD - YEAR"
  C0540800  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C0540900  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C0541000  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C0541100  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C0541200  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C0541300  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C0541500  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C0541600  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C0751200  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C0751300  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C0751400  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C0751500  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C0751600  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C0751700  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C0751900  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C0752000  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C0952300  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C0952400  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C0952500  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C0952600  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C0952700  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C0952800  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C0953600  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C0953700  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C1150400  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C1150500  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C1150600  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C1150700  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C1150800  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C1150900  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C1151700  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C1151800  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C1401200  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C1401300  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C1401400  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C1401500  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C1401600  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C1401700  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C1402500  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C1402600  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C1602900  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE"
  C1603000  "HOME A (0-2): HOW MANY BOOKS CHILD HAS"
  C1603100  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD"
  C1603200  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC"
  C1603300  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS"
  C1603400  "HOME A (0-2): # PUSH/PULL TOYS CH HAS"
  C1603900  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD"
  C1604200  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY"
  C1943400  "HOME A: HOW OFT CH GETS OUT OF HSE 1998"
  C1943500  "HOME A: HOW MANY BOOKS DOES CH HAVE 1998"
  C1943600  "HOME A: HOW OFT DOES MOM READ TO CH 1998"
  C1943700  "HOME A: HOW OFT MOM TAKE CH TO GROC 1998"
  C1943800  "HOME A: # SOFT/ROLEPLAY TOYS CH HAS 1998"
  C1943900  "HOME A: # PUSH/PULL TOYS CH OWNS 1998"
  C1944700  "HOME A: CH SEE FATHER(-FIG) DAILY 1998"
  C1944800  "HOME A: HOW OFT CH EATS W/MOM & DAD 1998"
  C2264100  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2000"
  C2264200  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2000"
  C2264300  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2000"
  C2264400  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2000"
  C2264500  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2000"
  C2264600  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2000"
  C2265700  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2000"
  C2265800  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2000"
  C2708900  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2002"
  C2709000  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2002"
  C2709100  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2002"
  C2709200  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2002"
  C2709300  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2002"
  C2709400  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2002"
  C2710500  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2002"
  C2710600  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2002"
  C2985500  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2004"
  C2985600  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2004"
  C2985700  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2004"
  C2985800  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2004"
  C2985900  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2004"
  C2986000  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2004"
  C2987000  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2004"
  C2987100  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2004"
  C3388000  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2006"
  C3388100  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2006"
  C3388200  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2006"
  C3388300  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2006"
  C3388400  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2006"
  C3388500  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2006"
  C3389500  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2006"
  C3389600  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2006"
  C3913800  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2008"
  C3913900  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2008"
  C3914000  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2008"
  C3914100  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2008"
  C3914200  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2008"
  C3914300  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2008"
  C3915300  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2008"
  C3915400  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2008"
  C5165300  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2010"
  C5165400  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2010"
  C5165500  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2010"
  C5165600  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2010"
  C5165700  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2010"
  C5165800  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2010"
  C5166600  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2010"
  C5166700  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2010"
  C5741500  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2012"
  C5741600  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2012"
  C5741700  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2012"
  C5741800  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2012"
  C5741900  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2012"
  C5742000  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2012"
  C5743000  "HOME A (0-2): CH SEE FATHER(-FIGURE) DAILY 2012"
  C5743100  "HOME A (0-2): HOW OFT CH EATS W/MOM AND DAD 2012"
  C6080800  "HOME A (0-2): HOW OFT CH GETS OUT OF HOUSE 2016"
  C6080900  "HOME A (0-2): HOW MANY BOOKS CHILD HAS 2016"
  C6081000  "HOME A (0-2): HOW OFTEN MOM READS TO CHILD 2016"
  C6081100  "HOME A (0-2): HOW OFT MOM TAKES CH TO GROC 2016"
  C6081200  "HOME A (0-2): # SOFT/ROLE-PLAY TOYS CH HAS 2016"
  C6081300  "HOME A (0-2): # PUSH/PULL TOYS CH HAS 2016"
  Y2267000  "VERSION_R29 CHILD/YOUNG ADULT XRND"
.

* Recode continuous values. 
* recode 
 C0000100 
    (1 thru 9999999 eq 1)
    / 
 C0000200 
    (1 thru 12686 eq 1)
    / 
 C0005700 
    (1970 thru 1978 eq 1970)
    (1979 thru 1979 eq 1979)
    (1980 thru 1980 eq 1980)
    (1981 thru 1981 eq 1981)
    (1982 thru 1982 eq 1982)
    (1983 thru 1983 eq 1983)
    (1984 thru 1984 eq 1984)
    (1985 thru 1985 eq 1985)
    (1986 thru 1986 eq 1986)
    (1987 thru 1987 eq 1987)
    (1988 thru 1988 eq 1988)
    (1989 thru 1989 eq 1989)
    (1990 thru 1990 eq 1990)
    (1991 thru 1991 eq 1991)
    (1992 thru 1992 eq 1992)
    (1993 thru 1993 eq 1993)
    (1994 thru 1994 eq 1994)
    (1995 thru 1995 eq 1995)
    (1996 thru 1996 eq 1996)
    (1997 thru 1997 eq 1997)
    (1998 thru 1998 eq 1998)
    (1999 thru 1999 eq 1999)
    (2000 thru 2000 eq 2000)
    (2001 thru 2001 eq 2001)
    (2002 thru 2002 eq 2002)
    (2003 thru 2003 eq 2003)
    (2004 thru 2004 eq 2004)
    (2005 thru 2005 eq 2005)
    (2006 thru 2006 eq 2006)
    (2007 thru 2007 eq 2007)
    (2008 thru 2008 eq 2008)
    (2009 thru 2009 eq 2009)
    (2010 thru 2010 eq 2010)
    (2011 thru 2011 eq 2011)
    (2012 thru 2012 eq 2012)
    (2013 thru 2013 eq 2013)
    (2014 thru 2014 eq 2014)
    (2015 thru 2015 eq 2015)
    (2016 thru 2016 eq 2016)
    (2017 thru 2017 eq 2017)
    (2018 thru 2018 eq 2018)
    (2019 thru 2019 eq 2019)
    (2020 thru 2020 eq 2020)
    (2021 thru 2021 eq 2021)
    / 
 C0541200 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999999 eq 50)
    / 
 C0541300 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 99999 eq 16)
    / 
 C0751600 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C0751700 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C0952700 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C0952800 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C1150800 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C1150900 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 99999 eq 17)
    / 
 C1401600 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 99999 eq 16)
    / 
 C1401700 
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
    (10 thru 10 eq 10)
    (11 thru 11 eq 11)
    (12 thru 12 eq 12)
    (13 thru 13 eq 13)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 99999 eq 16)
    / 
 C1603300 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 99999999 eq 50)
    / 
 C1603400 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 99999999 eq 50)
    / 
 C1943800 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C1943900 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2264500 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2264600 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2709300 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2709400 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2985900 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C2986000 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C3388400 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C3388500 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C3914200 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C3914300 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C5165700 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C5165800 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C5741900 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C5742000 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C6081200 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
    / 
 C6081300 
    (0 thru 0 eq 0)
    (1 thru 4 eq 1)
    (5 thru 9 eq 5)
    (10 thru 14 eq 10)
    (15 thru 19 eq 15)
    (20 thru 24 eq 20)
    (25 thru 29 eq 25)
    (30 thru 34 eq 30)
    (35 thru 39 eq 35)
    (40 thru 44 eq 40)
    (45 thru 49 eq 45)
    (50 thru 9999 eq 50)
.

* value labels
 C0000100
    1 "1 TO 9999999: See Min & Max values below for range as of this release"
    /
 C0000200
    1 "1 TO 12686: NLSY79 Public ID"
    /
 C0005300
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 C0005400
    1 "MALE"
    2 "FEMALE"
    /
 C0005700
    1970 "1970 TO 1978: < before 1979"
    1979 "1979"
    1980 "1980"
    1981 "1981"
    1982 "1982"
    1983 "1983"
    1984 "1984"
    1985 "1985"
    1986 "1986"
    1987 "1987"
    1988 "1988"
    1989 "1989"
    1990 "1990"
    1991 "1991"
    1992 "1992"
    1993 "1993"
    1994 "1994"
    1995 "1995"
    1996 "1996"
    1997 "1997"
    1998 "1998"
    1999 "1999"
    2000 "2000"
    2001 "2001"
    2002 "2002"
    2003 "2003"
    2004 "2004"
    2005 "2005"
    2006 "2006"
    2007 "2007"
    2008 "2008"
    2009 "2009"
    2010 "2010"
    2011 "2011"
    2012 "2012"
    2013 "2013"
    2014 "2014"
    2015 "2015"
    2016 "2016"
    2017 "2017"
    2018 "2018"
    2019 "2019"
    2020 "2020"
    2021 "2021"
    /
 C0540800
    1 "TOO YOUNG"
    2 "ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C0540900
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0541000
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0541100
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER, GO ALONE"
    /
 C0541200
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999999: 50+"
    /
 C0541300
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16 TO 99999: 16+"
    /
 C0541500
    0 "NO"
    1 "YES"
    /
 C0541600
    1 "MORE THAN ONCE A DAY"
    2 "ONCE A DAY"
    3 "SEVERAL TIMES A WEEK"
    4 "ONCE A WEEK"
    5 "ONCE A MONTH OR LESS"
    6 "NEVER"
    /
 C0751200
    1 "DOES NOT GO YET, TOO YOUNG"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C0751300
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0751400
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0751500
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER, GO ALONE"
    /
 C0751600
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C0751700
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C0751900
    0 "NO"
    1 "YES"
    /
 C0752000
    1 "MORE THAN ONCE A DAY"
    2 "ONCE A DAY"
    3 "SEVERAL TIMES A WEEK"
    4 "ONCE A WEEK"
    5 "ONCE A MONTH OR LESS"
    6 "NEVER"
    /
 C0952300
    1 "DOES NOT GO YET, TOO YOUNG"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C0952400
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0952500
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0952600
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER, GO ALONE"
    /
 C0952700
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C0952800
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C0953600
    0 "NO"
    1 "YES"
    2 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C0953700
    1 "MORE THAN ONCE A DAY"
    2 "ONCE A DAY"
    3 "SEVERAL TIMES A WEEK"
    4 "ONCE A WEEK"
    5 "ONCE A MONTH OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1150400
    1 "DOES NOT GO YET, TOO YOUNG"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C1150500
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1150600
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1150700
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER, GO ALONE"
    /
 C1150800
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C1150900
    0 "0: < 1"
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16"
    17 "17 TO 99999: 17+"
    /
 C1151700
    0 "NO"
    1 "YES"
    2 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1151800
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1401200
    1 "DOES NOT GO YET, TOO YOUNG"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C1401300
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1401400
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1401500
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER, GO ALONE"
    /
 C1401600
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16 TO 99999: 16+"
    /
 C1401700
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
    11 "11"
    12 "12"
    13 "13"
    14 "14"
    15 "15"
    16 "16 TO 99999: 16+"
    /
 C1402500
    0 "NO"
    1 "YES"
    2 "NO FATHER, STEP-FATHER, OR FATHER FIGURE"
    /
 C1402600
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1602900
    1 "NOT AT ALL"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C1603000
    1 "NONE"
    2 "1 OR 2 BOOKS"
    3 "3 TO 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1603100
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1603200
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER"
    /
 C1603300
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 99999999: 50+"
    /
 C1603400
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 99999999: 50+"
    /
 C1603900
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    7 "No father, step-father, father figure"
    /
 C1604200
    0 "NO"
    1 "YES"
    2 "NO FATHER, STEP-FATHER, OR FATHER FIGURE"
    /
 C1943400
    1 "NOT AT ALL"
    2 "ABOUT ONCE A MONTH OR LESS"
    3 "A FEW TIMES A MONTH"
    4 "ABOUT ONCE A WEEK"
    5 "A FEW TIMES A WEEK"
    6 "4 OR MORE TIMES A WEEK"
    7 "EVERY DAY"
    /
 C1943500
    1 "NONE"
    2 "1 OR 2 BOOKS"
    3 "3 TO 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1943600
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1943700
    1 "TWICE A WEEK OR MORE"
    2 "ONCE A WEEK"
    3 "ONCE A MONTH"
    4 "HARDLY EVER"
    /
 C1943800
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C1943900
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C1944700
    0 "NO"
    1 "YES"
    2 "NO FATHER, STEPFATHER, OR FATHER FIGURE"
    /
 C1944800
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    7 "No father, step-father, father figure"
    /
 C2264100
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C2264200
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2264300
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C2264400
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C2264500
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2264600
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2265700
    0 "No"
    1 "Yes"
    /
 C2265800
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C2708900
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C2709000
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2709100
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C2709200
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C2709300
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2709400
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2710500
    0 "No"
    1 "Yes"
    /
 C2710600
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C2985500
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C2985600
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2985700
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C2985800
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C2985900
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2986000
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C2987000
    0 "No"
    1 "Yes"
    /
 C2987100
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C3388000
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C3388100
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C3388200
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C3388300
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C3388400
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C3388500
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C3389500
    0 "No"
    1 "Yes"
    /
 C3389600
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C3913800
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C3913900
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C3914000
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C3914100
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C3914200
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C3914300
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C3915300
    0 "No"
    1 "Yes"
    /
 C3915400
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C5165300
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C5165400
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C5165500
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C5165600
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C5165700
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C5165800
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C5166600
    0 "No"
    1 "Yes"
    /
 C5166700
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C5741500
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C5741600
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C5741700
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C5741800
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C5741900
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C5742000
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C5743000
    0 "No"
    1 "Yes"
    /
 C5743100
    1 "More than once a day"
    2 "Once a day"
    3 "Several times a week"
    4 "About once a week"
    5 "About once a month"
    6 "Never"
    /
 C6080800
    1 "A few times a month or less"
    2 "About once a week"
    3 "A few times a week"
    4 "4 or more times a week"
    5 "Every day"
    /
 C6080900
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C6081000
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "About 3 times a week"
    6 "Everyday"
    /
 C6081100
    1 "Twice a week or more"
    2 "Once a week"
    3 "Once a month"
    4 "Hardly ever"
    /
 C6081200
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 C6081300
    0 "0"
    1 "1 TO 4"
    5 "5 TO 9"
    10 "10 TO 14"
    15 "15 TO 19"
    20 "20 TO 24"
    25 "25 TO 29"
    30 "30 TO 34"
    35 "35 TO 39"
    40 "40 TO 44"
    45 "45 TO 49"
    50 "50 TO 9999"
    /
 Y2267000
    532 "532"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (C0000100 = CPUBID_XRND) 
  (C0000200 = MPUBID_XRND) 
  (C0005300 = CRACE_XRND) 
  (C0005400 = CSEX_XRND) 
  (C0005700 = CYRB_XRND) 
  (C0540800 = MS860127_1986) 
  (C0540900 = MS860129_1986) 
  (C0541000 = MS860130_1986) 
  (C0541100 = MS860131_1986) 
  (C0541200 = MS860132_1986) 
  (C0541300 = MS860134_1986) 
  (C0541500 = MS860137_1986) 
  (C0541600 = MS860138_1986) 
  (C0751200 = MS880244_1988) 
  (C0751300 = MS880246_1988) 
  (C0751400 = MS880247_1988) 
  (C0751500 = MS880248_1988) 
  (C0751600 = MS880249_1988) 
  (C0751700 = MS880251_1988) 
  (C0751900 = MS880254_1988) 
  (C0752000 = MS880255_1988) 
  (C0952300 = MS900243_1990) 
  (C0952400 = MS900245_1990) 
  (C0952500 = MS900247_1990) 
  (C0952600 = MS900249_1990) 
  (C0952700 = MS900251_1990) 
  (C0952800 = MS900253_1990) 
  (C0953600 = MS900315_1990) 
  (C0953700 = MS900317_1990) 
  (C1150400 = MS920243_1992) 
  (C1150500 = MS920245_1992) 
  (C1150600 = MS920247_1992) 
  (C1150700 = MS920249_1992) 
  (C1150800 = MS920251_1992) 
  (C1150900 = MS920253_1992) 
  (C1151700 = MS920315_1992) 
  (C1151800 = MS920317_1992) 
  (C1401200 = MS940243_1994) 
  (C1401300 = MS940245_1994) 
  (C1401400 = MS940247_1994) 
  (C1401500 = MS940249_1994) 
  (C1401600 = MS940251_1994) 
  (C1401700 = MS940253_1994) 
  (C1402500 = MS940315_1994) 
  (C1402600 = MS940317_1994) 
  (C1602900 = MS960243_1996) 
  (C1603000 = MS960245_1996) 
  (C1603100 = MS960247_1996) 
  (C1603200 = MS960249_1996) 
  (C1603300 = MS960251_1996) 
  (C1603400 = MS960253_1996) 
  (C1603900 = MS960263_1996) 
  (C1604200 = MS960315_1996) 
  (C1943400 = MS981A01_1998) 
  (C1943500 = MS981A02_1998) 
  (C1943600 = MS981A03_1998) 
  (C1943700 = MS981A04_1998) 
  (C1943800 = MS981A05_1998) 
  (C1943900 = MS981A06_1998) 
  (C1944700 = MS981A14_1998) 
  (C1944800 = MS981A15_1998) 
  (C2264100 = HOME_A01_2000)   /* HOME-A01 */
  (C2264200 = HOME_A02_2000)   /* HOME-A02 */
  (C2264300 = HOME_A03_2000)   /* HOME-A03 */
  (C2264400 = HOME_A04_2000)   /* HOME-A04 */
  (C2264500 = HOME_A05_2000)   /* HOME-A05 */
  (C2264600 = HOME_A06_2000)   /* HOME-A06 */
  (C2265700 = HOME_A14_2000)   /* HOME-A14 */
  (C2265800 = HOME_A15_2000)   /* HOME-A15 */
  (C2708900 = HOME_A01_2002)   /* HOME-A01 */
  (C2709000 = HOME_A02_2002)   /* HOME-A02 */
  (C2709100 = HOME_A03_2002)   /* HOME-A03 */
  (C2709200 = HOME_A04_2002)   /* HOME-A04 */
  (C2709300 = HOME_A05_2002)   /* HOME-A05 */
  (C2709400 = HOME_A06_2002)   /* HOME-A06 */
  (C2710500 = HOME_A14_2002)   /* HOME-A14 */
  (C2710600 = HOME_A15_2002)   /* HOME-A15 */
  (C2985500 = HOME_A01_2004)   /* HOME-A01 */
  (C2985600 = HOME_A02_2004)   /* HOME-A02 */
  (C2985700 = HOME_A03_2004)   /* HOME-A03 */
  (C2985800 = HOME_A04_2004)   /* HOME-A04 */
  (C2985900 = HOME_A05_2004)   /* HOME-A05 */
  (C2986000 = HOME_A06_2004)   /* HOME-A06 */
  (C2987000 = HOME_A14_2004)   /* HOME-A14 */
  (C2987100 = HOME_A15_2004)   /* HOME-A15 */
  (C3388000 = MS_HOME_A01_2006)   /* MS-HOME-A01 */
  (C3388100 = MS_HOME_A02_2006)   /* MS-HOME-A02 */
  (C3388200 = MS_HOME_A03_2006)   /* MS-HOME-A03 */
  (C3388300 = MS_HOME_A04_2006)   /* MS-HOME-A04 */
  (C3388400 = MS_HOME_A05_2006)   /* MS-HOME-A05 */
  (C3388500 = MS_HOME_A06_2006)   /* MS-HOME-A06 */
  (C3389500 = MS_HOME_A14_2006)   /* MS-HOME-A14 */
  (C3389600 = MS_HOME_A15_2006)   /* MS-HOME-A15 */
  (C3913800 = MS_HOME_A01_2008)   /* MS-HOME-A01 */
  (C3913900 = MS_HOME_A02_2008)   /* MS-HOME-A02 */
  (C3914000 = MS_HOME_A03_2008)   /* MS-HOME-A03 */
  (C3914100 = MS_HOME_A04_2008)   /* MS-HOME-A04 */
  (C3914200 = MS_HOME_A05_2008)   /* MS-HOME-A05 */
  (C3914300 = MS_HOME_A06_2008)   /* MS-HOME-A06 */
  (C3915300 = MS_HOME_A14_2008)   /* MS-HOME-A14 */
  (C3915400 = MS_HOME_A15_2008)   /* MS-HOME-A15 */
  (C5165300 = MS_HOME_A01_2010)   /* MS-HOME-A01 */
  (C5165400 = MS_HOME_A02_2010)   /* MS-HOME-A02 */
  (C5165500 = MS_HOME_A03_2010)   /* MS-HOME-A03 */
  (C5165600 = MS_HOME_A04_2010)   /* MS-HOME-A04 */
  (C5165700 = MS_HOME_A05_2010)   /* MS-HOME-A05 */
  (C5165800 = MS_HOME_A06_2010)   /* MS-HOME-A06 */
  (C5166600 = MS_HOME_A14_2010)   /* MS-HOME-A14 */
  (C5166700 = MS_HOME_A15_2010)   /* MS-HOME-A15 */
  (C5741500 = MS_HOME_A01_2012)   /* MS-HOME-A01 */
  (C5741600 = MS_HOME_A02_2012)   /* MS-HOME-A02 */
  (C5741700 = MS_HOME_A03_2012)   /* MS-HOME-A03 */
  (C5741800 = MS_HOME_A04_2012)   /* MS-HOME-A04 */
  (C5741900 = MS_HOME_A05_2012)   /* MS-HOME-A05 */
  (C5742000 = MS_HOME_A06_2012)   /* MS-HOME-A06 */
  (C5743000 = MS_HOME_A14_2012)   /* MS-HOME-A14 */
  (C5743100 = MS_HOME_A15_2012)   /* MS-HOME-A15 */
  (C6080800 = MS_HOME_A01_2016)   /* MS-HOME-A01 */
  (C6080900 = MS_HOME_A02_2016)   /* MS-HOME-A02 */
  (C6081000 = MS_HOME_A03_2016)   /* MS-HOME-A03 */
  (C6081100 = MS_HOME_A04_2016)   /* MS-HOME-A04 */
  (C6081200 = MS_HOME_A05_2016)   /* MS-HOME-A05 */
  (C6081300 = MS_HOME_A06_2016)   /* MS-HOME-A06 */
  (Y2267000 = VERSION_R29_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=C0000100, 
  C0000200, 
  C0005300, 
  C0005400, 
  C0005700, 
  C0540800, 
  C0540900, 
  C0541000, 
  C0541100, 
  C0541200, 
  C0541300, 
  C0541500, 
  C0541600, 
  C0751200, 
  C0751300, 
  C0751400, 
  C0751500, 
  C0751600, 
  C0751700, 
  C0751900, 
  C0752000, 
  C0952300, 
  C0952400, 
  C0952500, 
  C0952600, 
  C0952700, 
  C0952800, 
  C0953600, 
  C0953700, 
  C1150400, 
  C1150500, 
  C1150600, 
  C1150700, 
  C1150800, 
  C1150900, 
  C1151700, 
  C1151800, 
  C1401200, 
  C1401300, 
  C1401400, 
  C1401500, 
  C1401600, 
  C1401700, 
  C1402500, 
  C1402600, 
  C1602900, 
  C1603000, 
  C1603100, 
  C1603200, 
  C1603300, 
  C1603400, 
  C1603900, 
  C1604200, 
  C1943400, 
  C1943500, 
  C1943600, 
  C1943700, 
  C1943800, 
  C1943900, 
  C1944700, 
  C1944800, 
  C2264100, 
  C2264200, 
  C2264300, 
  C2264400, 
  C2264500, 
  C2264600, 
  C2265700, 
  C2265800, 
  C2708900, 
  C2709000, 
  C2709100, 
  C2709200, 
  C2709300, 
  C2709400, 
  C2710500, 
  C2710600, 
  C2985500, 
  C2985600, 
  C2985700, 
  C2985800, 
  C2985900, 
  C2986000, 
  C2987000, 
  C2987100, 
  C3388000, 
  C3388100, 
  C3388200, 
  C3388300, 
  C3388400, 
  C3388500, 
  C3389500, 
  C3389600, 
  C3913800, 
  C3913900, 
  C3914000, 
  C3914100, 
  C3914200, 
  C3914300, 
  C3915300, 
  C3915400, 
  C5165300, 
  C5165400, 
  C5165500, 
  C5165600, 
  C5165700, 
  C5165800, 
  C5166600, 
  C5166700, 
  C5741500, 
  C5741600, 
  C5741700, 
  C5741800, 
  C5741900, 
  C5742000, 
  C5743000, 
  C5743100, 
  C6080800, 
  C6080900, 
  C6081000, 
  C6081100, 
  C6081200, 
  C6081300, 
  Y2267000.

*--- Tabulations using qname variables.
*freq var=CPUBID_XRND, 
  MPUBID_XRND, 
  CRACE_XRND, 
  CSEX_XRND, 
  CYRB_XRND, 
  MS860127_1986, 
  MS860129_1986, 
  MS860130_1986, 
  MS860131_1986, 
  MS860132_1986, 
  MS860134_1986, 
  MS860137_1986, 
  MS860138_1986, 
  MS880244_1988, 
  MS880246_1988, 
  MS880247_1988, 
  MS880248_1988, 
  MS880249_1988, 
  MS880251_1988, 
  MS880254_1988, 
  MS880255_1988, 
  MS900243_1990, 
  MS900245_1990, 
  MS900247_1990, 
  MS900249_1990, 
  MS900251_1990, 
  MS900253_1990, 
  MS900315_1990, 
  MS900317_1990, 
  MS920243_1992, 
  MS920245_1992, 
  MS920247_1992, 
  MS920249_1992, 
  MS920251_1992, 
  MS920253_1992, 
  MS920315_1992, 
  MS920317_1992, 
  MS940243_1994, 
  MS940245_1994, 
  MS940247_1994, 
  MS940249_1994, 
  MS940251_1994, 
  MS940253_1994, 
  MS940315_1994, 
  MS940317_1994, 
  MS960243_1996, 
  MS960245_1996, 
  MS960247_1996, 
  MS960249_1996, 
  MS960251_1996, 
  MS960253_1996, 
  MS960263_1996, 
  MS960315_1996, 
  MS981A01_1998, 
  MS981A02_1998, 
  MS981A03_1998, 
  MS981A04_1998, 
  MS981A05_1998, 
  MS981A06_1998, 
  MS981A14_1998, 
  MS981A15_1998, 
  HOME_A01_2000, 
  HOME_A02_2000, 
  HOME_A03_2000, 
  HOME_A04_2000, 
  HOME_A05_2000, 
  HOME_A06_2000, 
  HOME_A14_2000, 
  HOME_A15_2000, 
  HOME_A01_2002, 
  HOME_A02_2002, 
  HOME_A03_2002, 
  HOME_A04_2002, 
  HOME_A05_2002, 
  HOME_A06_2002, 
  HOME_A14_2002, 
  HOME_A15_2002, 
  HOME_A01_2004, 
  HOME_A02_2004, 
  HOME_A03_2004, 
  HOME_A04_2004, 
  HOME_A05_2004, 
  HOME_A06_2004, 
  HOME_A14_2004, 
  HOME_A15_2004, 
  MS_HOME_A01_2006, 
  MS_HOME_A02_2006, 
  MS_HOME_A03_2006, 
  MS_HOME_A04_2006, 
  MS_HOME_A05_2006, 
  MS_HOME_A06_2006, 
  MS_HOME_A14_2006, 
  MS_HOME_A15_2006, 
  MS_HOME_A01_2008, 
  MS_HOME_A02_2008, 
  MS_HOME_A03_2008, 
  MS_HOME_A04_2008, 
  MS_HOME_A05_2008, 
  MS_HOME_A06_2008, 
  MS_HOME_A14_2008, 
  MS_HOME_A15_2008, 
  MS_HOME_A01_2010, 
  MS_HOME_A02_2010, 
  MS_HOME_A03_2010, 
  MS_HOME_A04_2010, 
  MS_HOME_A05_2010, 
  MS_HOME_A06_2010, 
  MS_HOME_A14_2010, 
  MS_HOME_A15_2010, 
  MS_HOME_A01_2012, 
  MS_HOME_A02_2012, 
  MS_HOME_A03_2012, 
  MS_HOME_A04_2012, 
  MS_HOME_A05_2012, 
  MS_HOME_A06_2012, 
  MS_HOME_A14_2012, 
  MS_HOME_A15_2012, 
  MS_HOME_A01_2016, 
  MS_HOME_A02_2016, 
  MS_HOME_A03_2016, 
  MS_HOME_A04_2016, 
  MS_HOME_A05_2016, 
  MS_HOME_A06_2016, 
  VERSION_R29_XRND.
