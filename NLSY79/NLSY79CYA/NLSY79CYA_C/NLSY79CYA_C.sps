file handle pcdat/name='NLSY79CYA_C.dat' /lrecl=511.
data list file pcdat free /
  C0000100 (F7)
  C0000200 (F5)
  C0005300 (F2)
  C0005400 (F2)
  C0005700 (F4)
  C0544300 (F2)
  C0544400 (F2)
  C0545000 (F2)
  C0545100 (F2)
  C0545500 (F2)
  C0545600 (F2)
  C0545700 (F2)
  C0545900 (F2)
  C0546000 (F2)
  C0546200 (F2)
  C0755000 (F2)
  C0755100 (F2)
  C0755700 (F2)
  C0755800 (F2)
  C0756200 (F2)
  C0756300 (F2)
  C0756400 (F2)
  C0756600 (F2)
  C0756700 (F2)
  C0756900 (F2)
  C0957000 (F2)
  C0957100 (F2)
  C0957700 (F2)
  C0957800 (F2)
  C0958200 (F2)
  C0958300 (F2)
  C0958400 (F2)
  C0959000 (F2)
  C0959100 (F2)
  C0959300 (F2)
  C1155100 (F2)
  C1155200 (F2)
  C1155800 (F2)
  C1155900 (F2)
  C1156300 (F2)
  C1156400 (F2)
  C1156500 (F2)
  C1157100 (F2)
  C1157200 (F2)
  C1157400 (F2)
  C1406700 (F2)
  C1406800 (F2)
  C1407400 (F2)
  C1407500 (F2)
  C1407900 (F2)
  C1408000 (F2)
  C1408100 (F2)
  C1408700 (F2)
  C1408800 (F2)
  C1409000 (F2)
  C1608300 (F2)
  C1608400 (F2)
  C1609000 (F2)
  C1609100 (F2)
  C1609500 (F2)
  C1609600 (F2)
  C1609700 (F2)
  C1610300 (F2)
  C1610400 (F2)
  C1610500 (F2)
  C1949000 (F2)
  C1949100 (F2)
  C1949700 (F2)
  C1949800 (F2)
  C1950200 (F2)
  C1950300 (F2)
  C1950400 (F2)
  C1951000 (F2)
  C1951100 (F2)
  C1951300 (F2)
  C2420800 (F2)
  C2420900 (F2)
  C2421500 (F2)
  C2421600 (F2)
  C2422000 (F2)
  C2422100 (F2)
  C2422200 (F2)
  C2422900 (F2)
  C2423000 (F2)
  C2423200 (F2)
  C2714400 (F2)
  C2714500 (F2)
  C2715100 (F2)
  C2715200 (F2)
  C2715600 (F2)
  C2715700 (F2)
  C2715800 (F2)
  C2716600 (F2)
  C2716700 (F2)
  C2717000 (F2)
  C2990700 (F2)
  C2990800 (F2)
  C2991400 (F2)
  C2991500 (F2)
  C2991900 (F2)
  C2992000 (F2)
  C2992100 (F2)
  C2992800 (F2)
  C2992900 (F2)
  C2993100 (F2)
  C3393200 (F2)
  C3393300 (F2)
  C3393900 (F2)
  C3394000 (F2)
  C3394400 (F2)
  C3394500 (F2)
  C3394600 (F2)
  C3395300 (F2)
  C3395400 (F2)
  C3395600 (F2)
  C3919100 (F2)
  C3919200 (F2)
  C3919800 (F2)
  C3919900 (F2)
  C3920300 (F2)
  C3920400 (F2)
  C3920500 (F2)
  C3921200 (F2)
  C3921300 (F2)
  C3921500 (F2)
  C5170300 (F2)
  C5170400 (F2)
  C5171000 (F2)
  C5171100 (F2)
  C5171500 (F2)
  C5171600 (F2)
  C5171700 (F2)
  C5172400 (F2)
  C5172500 (F2)
  C5172700 (F2)
  C5746800 (F2)
  C5746900 (F2)
  C5747500 (F2)
  C5747600 (F2)
  C5748000 (F2)
  C5748100 (F2)
  C5748200 (F2)
  C5748900 (F2)
  C5749000 (F2)
  C5749200 (F2)
  C6016700 (F2)
  C6016800 (F2)
  C6017400 (F2)
  C6017500 (F2)
  C6017900 (F2)
  C6018000 (F2)
  C6018100 (F2)
  C6018800 (F2)
  C6018900 (F2)
  C6019100 (F2)
  C6085400 (F2)
  C6085500 (F2)
  C6086100 (F2)
  C6086200 (F2)
  C6086600 (F2)
  C6086700 (F2)
  C6086800 (F2)
  C6087500 (F2)
  C6087600 (F2)
  C6087800 (F2)
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
  C0544300  "HOME C (6+): HOW MANY BOOKS CHILD HAS"
  C0544400  "HOME C (6+): HOW OFTEN MOM READS TO CHILD"
  C0545000  "HOME C (6+): MUSIC INSTMT CH CAN USE AT HM"
  C0545100  "HOME C (6+): FAMILY GETS DAILY NEWSPAPER"
  C0545500  "HOME C (6+): HOW OFT CH TAKEN TO MUSEUM"
  C0545600  "HOME C (6+): HOW OFT TAKEN TO PERFORMANCE"
  C0545700  "HOME C (6+): HOW OFT FAMILY SEES FRNDS/REL"
  C0545900  "HOME C (6+): HOW OFT CH SPEND TIME W/DAD"
  C0546000  "HOME C (6+): HOW OFT CH W/DAD OUTDOORS"
  C0546200  "HOME C (6+): DO PARS DISCUSS TV PRGMS W/CH"
  C0755000  "HOME C (6-9): HOW MANY BOOKS CHILD HAS"
  C0755100  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD"
  C0755700  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM"
  C0755800  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER"
  C0756200  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM"
  C0756300  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE"
  C0756400  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL"
  C0756600  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD"
  C0756700  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS"
  C0756900  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH"
  C0957000  "HOME C (6-9): HOW MANY BOOKS CHILD HAS"
  C0957100  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD"
  C0957700  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM"
  C0957800  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER"
  C0958200  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM"
  C0958300  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE"
  C0958400  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL"
  C0959000  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD"
  C0959100  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS"
  C0959300  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH"
  C1155100  "HOME C (6-9): HOW MANY BOOKS CHILD HAS"
  C1155200  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD"
  C1155800  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM"
  C1155900  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER"
  C1156300  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM"
  C1156400  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE"
  C1156500  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL"
  C1157100  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD"
  C1157200  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS"
  C1157400  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH"
  C1406700  "HOME C (6-9): HOW MANY BOOKS CHILD HAS"
  C1406800  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD"
  C1407400  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM"
  C1407500  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER"
  C1407900  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM"
  C1408000  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE"
  C1408100  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL"
  C1408700  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD"
  C1408800  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS"
  C1409000  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH"
  C1608300  "HOME C (6-9): HOW MANY BOOKS CHILD HAS"
  C1608400  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD"
  C1609000  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM"
  C1609100  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER"
  C1609500  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM"
  C1609600  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE"
  C1609700  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL"
  C1610300  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD"
  C1610400  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS"
  C1610500  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH"
  C1949000  "HOME C: HOW MANY BOOKS CHILD HAS 1998"
  C1949100  "HOME C: HOW OFT DOES MOM READ TO CH 1998"
  C1949700  "HOME C: IS THERE MUSIC INSTRM AT HM 1998"
  C1949800  "HOME C: FAMILY GETS NEWSPAPER DAILY 1998"
  C1950200  "HOME C: HOW OFT CH TAKEN TO MUSEUM 1998"
  C1950300  "HOME C: HOW OFT CH TAKN TO PERFMNCE 1998"
  C1950400  "HOME C: HOW OFT FAM GET W/REL/FRNDS 1998"
  C1951000  "HOME C: HOW OFT CH SPEND TIME W/DAD 1998"
  C1951100  "HOME C: HOW OFT CH W/ DAD OUTDOORS 1998"
  C1951300  "HOME C: PARS DISCUSS TV PRGMS W/CH 1998"
  C2420800  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2000"
  C2420900  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2000"
  C2421500  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2000"
  C2421600  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2000"
  C2422000  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2000"
  C2422100  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2000"
  C2422200  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2000"
  C2422900  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2000"
  C2423000  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2000"
  C2423200  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2000"
  C2714400  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2002"
  C2714500  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2002"
  C2715100  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2002"
  C2715200  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2002"
  C2715600  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2002"
  C2715700  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2002"
  C2715800  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2002"
  C2716600  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2002"
  C2716700  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2002"
  C2717000  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2002"
  C2990700  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2004"
  C2990800  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2004"
  C2991400  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2004"
  C2991500  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2004"
  C2991900  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2004"
  C2992000  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2004"
  C2992100  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2004"
  C2992800  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2004"
  C2992900  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2004"
  C2993100  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2004"
  C3393200  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2006"
  C3393300  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2006"
  C3393900  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2006"
  C3394000  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2006"
  C3394400  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2006"
  C3394500  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2006"
  C3394600  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2006"
  C3395300  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2006"
  C3395400  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2006"
  C3395600  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2006"
  C3919100  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2008"
  C3919200  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2008"
  C3919800  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2008"
  C3919900  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2008"
  C3920300  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2008"
  C3920400  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2008"
  C3920500  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2008"
  C3921200  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2008"
  C3921300  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2008"
  C3921500  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2008"
  C5170300  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2010"
  C5170400  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2010"
  C5171000  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2010"
  C5171100  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2010"
  C5171500  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2010"
  C5171600  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2010"
  C5171700  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2010"
  C5172400  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2010"
  C5172500  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2010"
  C5172700  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2010"
  C5746800  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2012"
  C5746900  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2012"
  C5747500  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2012"
  C5747600  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2012"
  C5748000  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2012"
  C5748100  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2012"
  C5748200  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2012"
  C5748900  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2012"
  C5749000  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2012"
  C5749200  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2012"
  C6016700  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2014"
  C6016800  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2014"
  C6017400  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2014"
  C6017500  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2014"
  C6017900  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2014"
  C6018000  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2014"
  C6018100  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2014"
  C6018800  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2014"
  C6018900  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2014"
  C6019100  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2014"
  C6085400  "HOME C (6-9): HOW MANY BOOKS CHILD HAS 2016"
  C6085500  "HOME C (6-9): HOW OFTEN MOM READS TO CHILD 2016"
  C6086100  "HOME C (6-9): MUSIC INSTMT CH CAN USE AT HM 2016"
  C6086200  "HOME C (6-9): FAMILY GETS DAILY NEWSPAPER 2016"
  C6086600  "HOME C (6-9): HOW OFT CH TAKEN TO MUSEUM 2016"
  C6086700  "HOME C (6-9): HOW OFT TAKEN TO PERFOMANCE 2016"
  C6086800  "HOME C (6-9): HOW OFT FAMILY SEES FRIENDS/REL 2016"
  C6087500  "HOME C (6-9): HOW OFT CH SPEND TIME W/DAD 2016"
  C6087600  "HOME C (6-9): HOW OFT CH W/DAD OUTDOORS 2016"
  C6087800  "HOME C (6-9): DO PARS DISCUSS TV PRGMS W/CH 2016"
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
 C0544300
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0544400
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0545000
    0 "NO"
    1 "YES"
    /
 C0545100
    0 "NO"
    1 "YES"
    /
 C0545500
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0545600
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0545700
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "2 OR 3 TIMES A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0545900
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    /
 C0546000
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    /
 C0546200
    0 "NO"
    1 "YES"
    6 "DO NOT HAVE A TV"
    /
 C0755000
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0755100
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0755700
    0 "NO"
    1 "YES"
    /
 C0755800
    0 "NO"
    1 "YES"
    /
 C0756200
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0756300
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0756400
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C0756600
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    /
 C0756700
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    /
 C0756900
    0 "NO"
    1 "YES"
    2 "DO NOT HAVE A TV"
    /
 C0957000
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C0957100
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C0957700
    0 "NO"
    1 "YES"
    /
 C0957800
    0 "NO"
    1 "YES"
    /
 C0958200
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0958300
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C0958400
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C0959000
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C0959100
    1 "ONCE A DAY OR MORE"
    2 "LEAST 4 TIMES A WEEK"
    3 "ONCE A WEEK"
    4 "ONCE A MONTH"
    5 "A FEW TIMES A YEAR"
    6 "DON'T KNOW"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C0959300
    0 "NO"
    1 "YES"
    2 "DO NOT HAVE A TV"
    /
 C1155100
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1155200
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1155800
    0 "NO"
    1 "YES"
    /
 C1155900
    0 "NO"
    1 "YES"
    /
 C1156300
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C1156400
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C1156500
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1157100
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1157200
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1157400
    0 "NO"
    1 "YES"
    2 "DO NOT HAVE A TV"
    /
 C1406700
    1 "NONE, TOO YOUNG"
    2 "1 OR 2 BOOKS"
    3 "3 OR 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1406800
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "ABOUT 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1407400
    0 "NO"
    1 "YES"
    /
 C1407500
    0 "NO"
    1 "YES"
    /
 C1407900
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C1408000
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ONCE A WEEK OR MORE"
    /
 C1408100
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1408700
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1408800
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1409000
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C1608300
    1 "NONE"
    2 "1 OR 2 BOOKS"
    3 "3 TO 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1608400
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "AT LEAST 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1609000
    0 "No"
    1 "Yes"
    /
 C1609100
    0 "No"
    1 "Yes"
    /
 C1609500
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1609600
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1609700
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1610300
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1610400
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEP FATHER, OR FATHER-FIGURE"
    /
 C1610500
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C1949000
    1 "NONE"
    2 "1 OR 2 BOOKS"
    3 "3 TO 9 BOOKS"
    4 "10 OR MORE BOOKS"
    /
 C1949100
    1 "NEVER"
    2 "SEVERAL TIMES A YEAR"
    3 "SEVERAL TIMES A MONTH"
    4 "ONCE A WEEK"
    5 "AT LEAST 3 TIMES A WEEK"
    6 "EVERYDAY"
    /
 C1949700
    0 "No"
    1 "Yes"
    /
 C1949800
    0 "No"
    1 "Yes"
    /
 C1950200
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE OFTEN"
    /
 C1950300
    1 "NEVER"
    2 "ONCE OR TWICE"
    3 "SEVERAL TIMES"
    4 "ABOUT ONCE A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE OFTEN"
    /
 C1950400
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ABOUT ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C1951000
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEPFATHER, OR FATHER-FIGURE"
    /
 C1951100
    1 "ONCE A DAY OR MORE OFTEN"
    2 "AT LEAST 4 TIMES A WEEK"
    3 "ABOUT ONCE A WEEK"
    4 "ABOUT ONCE A MONTH"
    5 "A FEW TIMES A YEAR OR LESS"
    6 "NEVER"
    7 "NO FATHER, STEPFATHER, OR FATHER-FIGURE"
    /
 C1951300
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C2420800
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2420900
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    7 "Child reads to self (write-in)"
    /
 C2421500
    0 "No"
    1 "Yes"
    /
 C2421600
    0 "No"
    1 "Yes"
    /
 C2422000
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2422100
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2422200
    1 "ONCE A YEAR OR LESS"
    2 "A FEW TIMES A YEAR"
    3 "ABOUT ONCE A MONTH"
    4 "TWO OR THREE TIMES A MONTH"
    5 "ABOUT ONCE A WEEK OR MORE"
    /
 C2422900
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2423000
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2423200
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C2714400
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2714500
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C2715100
    0 "No"
    1 "Yes"
    /
 C2715200
    0 "No"
    1 "Yes"
    /
 C2715600
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2715700
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2715800
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C2716600
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2716700
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2717000
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C2990700
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C2990800
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C2991400
    0 "No"
    1 "Yes"
    /
 C2991500
    0 "No"
    1 "Yes"
    /
 C2991900
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2992000
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C2992100
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C2992800
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2992900
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C2993100
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C3393200
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C3393300
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C3393900
    0 "No"
    1 "Yes"
    /
 C3394000
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C3394400
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C3394500
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C3394600
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C3395300
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C3395400
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C3395600
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C3919100
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C3919200
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C3919800
    0 "No"
    1 "Yes"
    /
 C3919900
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C3920300
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C3920400
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C3920500
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C3921200
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C3921300
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C3921500
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C5170300
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C5170400
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C5171000
    0 "No"
    1 "Yes"
    /
 C5171100
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C5171500
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C5171600
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C5171700
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C5172400
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C5172500
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C5172700
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C5746800
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C5746900
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C5747500
    0 "No"
    1 "Yes"
    /
 C5747600
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C5748000
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C5748100
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C5748200
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C5748900
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C5749000
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C5749200
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C6016700
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C6016800
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C6017400
    0 "No"
    1 "Yes"
    /
 C6017500
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C6017900
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C6018000
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C6018100
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C6018800
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C6018900
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C6019100
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
    /
 C6085400
    1 "None"
    2 "1 or 2 books"
    3 "3 to 9 books"
    4 "10 or more books"
    /
 C6085500
    1 "Never"
    2 "Several times a year"
    3 "Several times a month"
    4 "Once a week"
    5 "At least 3 times a week"
    6 "Everyday"
    /
 C6086100
    0 "No"
    1 "Yes"
    /
 C6086200
    0 "No"
    1 "Yes"
    2 "(IF VOLUNTEERED:) READ NEWSPAPER ONLINE"
    3 "(IF VOLUNTEERED:) SUNDAY PAPER ONLY"
    /
 C6086600
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C6086700
    1 "Never"
    2 "Once or twice"
    3 "Several times"
    4 "About once a month"
    5 "About once a week or more often"
    /
 C6086800
    1 "Once a year or less"
    2 "A few times a year"
    3 "About once a month"
    4 "Two or three times a month"
    5 "About once a week or more"
    /
 C6087500
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C6087600
    1 "Once a day or more often"
    2 "At least 4 times a week"
    3 "About once a week"
    4 "About once a month"
    5 "A few times a year or less"
    6 "Never"
    7 "No father, stepfather, or father-figure"
    /
 C6087800
    0 "No"
    1 "Yes"
    2 "Do not have a TV"
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
  (C0544300 = MS860212_1986) 
  (C0544400 = MS860213_1986) 
  (C0545000 = MS860219_1986) 
  (C0545100 = MS860220_1986) 
  (C0545500 = MS860224_1986) 
  (C0545600 = MS860225_1986) 
  (C0545700 = MS860226_1986) 
  (C0545900 = MS860228_1986) 
  (C0546000 = MS860229_1986) 
  (C0546200 = MS860231_1986) 
  (C0755000 = MS880337_1988) 
  (C0755100 = MS880338_1988) 
  (C0755700 = MS880344_1988) 
  (C0755800 = MS880345_1988) 
  (C0756200 = MS880349_1988) 
  (C0756300 = MS880350_1988) 
  (C0756400 = MS880351_1988) 
  (C0756600 = MS880353_1988) 
  (C0756700 = MS880354_1988) 
  (C0756900 = MS880356_1988) 
  (C0957000 = MS900427_1990) 
  (C0957100 = MS900429_1990) 
  (C0957700 = MS900441_1990) 
  (C0957800 = MS900443_1990) 
  (C0958200 = MS900451_1990) 
  (C0958300 = MS900453_1990) 
  (C0958400 = MS900455_1990) 
  (C0959000 = MS900467_1990) 
  (C0959100 = MS900511_1990) 
  (C0959300 = MS900515_1990) 
  (C1155100 = MS920427_1992) 
  (C1155200 = MS920429_1992) 
  (C1155800 = MS920441_1992) 
  (C1155900 = MS920443_1992) 
  (C1156300 = MS920451_1992) 
  (C1156400 = MS920453_1992) 
  (C1156500 = MS920455_1992) 
  (C1157100 = MS920467_1992) 
  (C1157200 = MS920511_1992) 
  (C1157400 = MS920515_1992) 
  (C1406700 = MS940435_1994) 
  (C1406800 = MS940437_1994) 
  (C1407400 = MS940449_1994) 
  (C1407500 = MS940451_1994) 
  (C1407900 = MS940459_1994) 
  (C1408000 = MS940461_1994) 
  (C1408100 = MS940463_1994) 
  (C1408700 = MS940475_1994) 
  (C1408800 = MS940511_1994) 
  (C1409000 = MS940515_1994) 
  (C1608300 = MS960433_1996) 
  (C1608400 = MS960435_1996) 
  (C1609000 = MS960447_1996) 
  (C1609100 = MS960449_1996) 
  (C1609500 = MS960457_1996) 
  (C1609600 = MS960459_1996) 
  (C1609700 = MS960461_1996) 
  (C1610300 = MS960473_1996) 
  (C1610400 = MS960511_1996) 
  (C1610500 = MS960513_1996) 
  (C1949000 = MS981C01_1998) 
  (C1949100 = MS981C02_1998) 
  (C1949700 = MS981C04_1998) 
  (C1949800 = MS981C05_1998) 
  (C1950200 = MS981C09_1998) 
  (C1950300 = MS981C10_1998) 
  (C1950400 = MS981C11_1998) 
  (C1951000 = MS981C17_1998) 
  (C1951100 = MS981C18_1998) 
  (C1951300 = MS981C20_1998) 
  (C2420800 = MS1_B01_2000)   /* MS1-B01 */
  (C2420900 = MS1_B02_2000)   /* MS1-B02 */
  (C2421500 = MS1_B04_2000)   /* MS1-B04 */
  (C2421600 = MS1_B05_2000)   /* MS1-B05 */
  (C2422000 = MS1_B09_2000)   /* MS1-B09 */
  (C2422100 = MS1_B10_2000)   /* MS1-B10 */
  (C2422200 = MS1_B11_2000)   /* MS1-B11 */
  (C2422900 = MS1_B17_2000)   /* MS1-B17 */
  (C2423000 = MS1_B18_2000)   /* MS1-B18 */
  (C2423200 = MS1_B20_2000)   /* MS1-B20 */
  (C2714400 = HOME_C01_2002)   /* HOME-C01 */
  (C2714500 = HOME_C02_2002)   /* HOME-C02 */
  (C2715100 = HOME_C04_2002)   /* HOME-C04 */
  (C2715200 = HOME_C05_2002)   /* HOME-C05 */
  (C2715600 = HOME_C09_2002)   /* HOME-C09 */
  (C2715700 = HOME_C10_2002)   /* HOME-C10 */
  (C2715800 = HOME_C11_2002)   /* HOME-C11 */
  (C2716600 = HOME_C17_2002)   /* HOME-C17 */
  (C2716700 = HOME_C18_2002)   /* HOME-C18 */
  (C2717000 = HOME_C20_2002)   /* HOME-C20 */
  (C2990700 = HOME_C01_2004)   /* HOME-C01 */
  (C2990800 = HOME_C02_2004)   /* HOME-C02 */
  (C2991400 = HOME_C04_2004)   /* HOME-C04 */
  (C2991500 = HOME_C05_2004)   /* HOME-C05 */
  (C2991900 = HOME_C09_2004)   /* HOME-C09 */
  (C2992000 = HOME_C10_2004)   /* HOME-C10 */
  (C2992100 = HOME_C11_2004)   /* HOME-C11 */
  (C2992800 = HOME_C17_2004)   /* HOME-C17 */
  (C2992900 = HOME_C18_2004)   /* HOME-C18 */
  (C2993100 = HOME_C20_2004)   /* HOME-C20 */
  (C3393200 = MS_HOME_C01_2006)   /* MS-HOME-C01 */
  (C3393300 = MS_HOME_C02_2006)   /* MS-HOME-C02 */
  (C3393900 = MS_HOME_C04_2006)   /* MS-HOME-C04 */
  (C3394000 = MS_HOME_C05_2006)   /* MS-HOME-C05 */
  (C3394400 = MS_HOME_C09_2006)   /* MS-HOME-C09 */
  (C3394500 = MS_HOME_C10_2006)   /* MS-HOME-C10 */
  (C3394600 = MS_HOME_C11_2006)   /* MS-HOME-C11 */
  (C3395300 = MS_HOME_C17_2006)   /* MS-HOME-C17 */
  (C3395400 = MS_HOME_C18_2006)   /* MS-HOME-C18 */
  (C3395600 = MS_HOME_C20_2006)   /* MS-HOME-C20 */
  (C3919100 = MS_HOME_C01_2008)   /* MS-HOME-C01 */
  (C3919200 = MS_HOME_C02_2008)   /* MS-HOME-C02 */
  (C3919800 = MS_HOME_C04_2008)   /* MS-HOME-C04 */
  (C3919900 = MS_HOME_C05_2008)   /* MS-HOME-C05 */
  (C3920300 = MS_HOME_C09_2008)   /* MS-HOME-C09 */
  (C3920400 = MS_HOME_C10_2008)   /* MS-HOME-C10 */
  (C3920500 = MS_HOME_C11_2008)   /* MS-HOME-C11 */
  (C3921200 = MS_HOME_C17_2008)   /* MS-HOME-C17 */
  (C3921300 = MS_HOME_C18_2008)   /* MS-HOME-C18 */
  (C3921500 = MS_HOME_C20_2008)   /* MS-HOME-C20 */
  (C5170300 = MS_HOME_C01_2010)   /* MS-HOME-C01 */
  (C5170400 = MS_HOME_C02_2010)   /* MS-HOME-C02 */
  (C5171000 = MS_HOME_C04_2010)   /* MS-HOME-C04 */
  (C5171100 = MS_HOME_C05_2010)   /* MS-HOME-C05 */
  (C5171500 = MS_HOME_C09_2010)   /* MS-HOME-C09 */
  (C5171600 = MS_HOME_C10_2010)   /* MS-HOME-C10 */
  (C5171700 = MS_HOME_C11_2010)   /* MS-HOME-C11 */
  (C5172400 = MS_HOME_C17_2010)   /* MS-HOME-C17 */
  (C5172500 = MS_HOME_C18_2010)   /* MS-HOME-C18 */
  (C5172700 = MS_HOME_C20_2010)   /* MS-HOME-C20 */
  (C5746800 = MS_HOME_C01_2012)   /* MS-HOME-C01 */
  (C5746900 = MS_HOME_C02_2012)   /* MS-HOME-C02 */
  (C5747500 = MS_HOME_C04_2012)   /* MS-HOME-C04 */
  (C5747600 = MS_HOME_C05_2012)   /* MS-HOME-C05 */
  (C5748000 = MS_HOME_C09_2012)   /* MS-HOME-C09 */
  (C5748100 = MS_HOME_C10_2012)   /* MS-HOME-C10 */
  (C5748200 = MS_HOME_C11_2012)   /* MS-HOME-C11 */
  (C5748900 = MS_HOME_C17_2012)   /* MS-HOME-C17 */
  (C5749000 = MS_HOME_C18_2012)   /* MS-HOME-C18 */
  (C5749200 = MS_HOME_C20_2012)   /* MS-HOME-C20 */
  (C6016700 = MS_HOME_C01_2014)   /* MS-HOME-C01 */
  (C6016800 = MS_HOME_C02_2014)   /* MS-HOME-C02 */
  (C6017400 = MS_HOME_C04_2014)   /* MS-HOME-C04 */
  (C6017500 = MS_HOME_C05_2014)   /* MS-HOME-C05 */
  (C6017900 = MS_HOME_C09_2014)   /* MS-HOME-C09 */
  (C6018000 = MS_HOME_C10_2014)   /* MS-HOME-C10 */
  (C6018100 = MS_HOME_C11_2014)   /* MS-HOME-C11 */
  (C6018800 = MS_HOME_C17_2014)   /* MS-HOME-C17 */
  (C6018900 = MS_HOME_C18_2014)   /* MS-HOME-C18 */
  (C6019100 = MS_HOME_C20_2014)   /* MS-HOME-C20 */
  (C6085400 = MS_HOME_C01_2016)   /* MS-HOME-C01 */
  (C6085500 = MS_HOME_C02_2016)   /* MS-HOME-C02 */
  (C6086100 = MS_HOME_C04_2016)   /* MS-HOME-C04 */
  (C6086200 = MS_HOME_C05_2016)   /* MS-HOME-C05 */
  (C6086600 = MS_HOME_C09_2016)   /* MS-HOME-C09 */
  (C6086700 = MS_HOME_C10_2016)   /* MS-HOME-C10 */
  (C6086800 = MS_HOME_C11_2016)   /* MS-HOME-C11 */
  (C6087500 = MS_HOME_C17_2016)   /* MS-HOME-C17 */
  (C6087600 = MS_HOME_C18_2016)   /* MS-HOME-C18 */
  (C6087800 = MS_HOME_C20_2016)   /* MS-HOME-C20 */
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
  C0544300, 
  C0544400, 
  C0545000, 
  C0545100, 
  C0545500, 
  C0545600, 
  C0545700, 
  C0545900, 
  C0546000, 
  C0546200, 
  C0755000, 
  C0755100, 
  C0755700, 
  C0755800, 
  C0756200, 
  C0756300, 
  C0756400, 
  C0756600, 
  C0756700, 
  C0756900, 
  C0957000, 
  C0957100, 
  C0957700, 
  C0957800, 
  C0958200, 
  C0958300, 
  C0958400, 
  C0959000, 
  C0959100, 
  C0959300, 
  C1155100, 
  C1155200, 
  C1155800, 
  C1155900, 
  C1156300, 
  C1156400, 
  C1156500, 
  C1157100, 
  C1157200, 
  C1157400, 
  C1406700, 
  C1406800, 
  C1407400, 
  C1407500, 
  C1407900, 
  C1408000, 
  C1408100, 
  C1408700, 
  C1408800, 
  C1409000, 
  C1608300, 
  C1608400, 
  C1609000, 
  C1609100, 
  C1609500, 
  C1609600, 
  C1609700, 
  C1610300, 
  C1610400, 
  C1610500, 
  C1949000, 
  C1949100, 
  C1949700, 
  C1949800, 
  C1950200, 
  C1950300, 
  C1950400, 
  C1951000, 
  C1951100, 
  C1951300, 
  C2420800, 
  C2420900, 
  C2421500, 
  C2421600, 
  C2422000, 
  C2422100, 
  C2422200, 
  C2422900, 
  C2423000, 
  C2423200, 
  C2714400, 
  C2714500, 
  C2715100, 
  C2715200, 
  C2715600, 
  C2715700, 
  C2715800, 
  C2716600, 
  C2716700, 
  C2717000, 
  C2990700, 
  C2990800, 
  C2991400, 
  C2991500, 
  C2991900, 
  C2992000, 
  C2992100, 
  C2992800, 
  C2992900, 
  C2993100, 
  C3393200, 
  C3393300, 
  C3393900, 
  C3394000, 
  C3394400, 
  C3394500, 
  C3394600, 
  C3395300, 
  C3395400, 
  C3395600, 
  C3919100, 
  C3919200, 
  C3919800, 
  C3919900, 
  C3920300, 
  C3920400, 
  C3920500, 
  C3921200, 
  C3921300, 
  C3921500, 
  C5170300, 
  C5170400, 
  C5171000, 
  C5171100, 
  C5171500, 
  C5171600, 
  C5171700, 
  C5172400, 
  C5172500, 
  C5172700, 
  C5746800, 
  C5746900, 
  C5747500, 
  C5747600, 
  C5748000, 
  C5748100, 
  C5748200, 
  C5748900, 
  C5749000, 
  C5749200, 
  C6016700, 
  C6016800, 
  C6017400, 
  C6017500, 
  C6017900, 
  C6018000, 
  C6018100, 
  C6018800, 
  C6018900, 
  C6019100, 
  C6085400, 
  C6085500, 
  C6086100, 
  C6086200, 
  C6086600, 
  C6086700, 
  C6086800, 
  C6087500, 
  C6087600, 
  C6087800, 
  Y2267000.

*--- Tabulations using qname variables.
*freq var=CPUBID_XRND, 
  MPUBID_XRND, 
  CRACE_XRND, 
  CSEX_XRND, 
  CYRB_XRND, 
  MS860212_1986, 
  MS860213_1986, 
  MS860219_1986, 
  MS860220_1986, 
  MS860224_1986, 
  MS860225_1986, 
  MS860226_1986, 
  MS860228_1986, 
  MS860229_1986, 
  MS860231_1986, 
  MS880337_1988, 
  MS880338_1988, 
  MS880344_1988, 
  MS880345_1988, 
  MS880349_1988, 
  MS880350_1988, 
  MS880351_1988, 
  MS880353_1988, 
  MS880354_1988, 
  MS880356_1988, 
  MS900427_1990, 
  MS900429_1990, 
  MS900441_1990, 
  MS900443_1990, 
  MS900451_1990, 
  MS900453_1990, 
  MS900455_1990, 
  MS900467_1990, 
  MS900511_1990, 
  MS900515_1990, 
  MS920427_1992, 
  MS920429_1992, 
  MS920441_1992, 
  MS920443_1992, 
  MS920451_1992, 
  MS920453_1992, 
  MS920455_1992, 
  MS920467_1992, 
  MS920511_1992, 
  MS920515_1992, 
  MS940435_1994, 
  MS940437_1994, 
  MS940449_1994, 
  MS940451_1994, 
  MS940459_1994, 
  MS940461_1994, 
  MS940463_1994, 
  MS940475_1994, 
  MS940511_1994, 
  MS940515_1994, 
  MS960433_1996, 
  MS960435_1996, 
  MS960447_1996, 
  MS960449_1996, 
  MS960457_1996, 
  MS960459_1996, 
  MS960461_1996, 
  MS960473_1996, 
  MS960511_1996, 
  MS960513_1996, 
  MS981C01_1998, 
  MS981C02_1998, 
  MS981C04_1998, 
  MS981C05_1998, 
  MS981C09_1998, 
  MS981C10_1998, 
  MS981C11_1998, 
  MS981C17_1998, 
  MS981C18_1998, 
  MS981C20_1998, 
  MS1_B01_2000, 
  MS1_B02_2000, 
  MS1_B04_2000, 
  MS1_B05_2000, 
  MS1_B09_2000, 
  MS1_B10_2000, 
  MS1_B11_2000, 
  MS1_B17_2000, 
  MS1_B18_2000, 
  MS1_B20_2000, 
  HOME_C01_2002, 
  HOME_C02_2002, 
  HOME_C04_2002, 
  HOME_C05_2002, 
  HOME_C09_2002, 
  HOME_C10_2002, 
  HOME_C11_2002, 
  HOME_C17_2002, 
  HOME_C18_2002, 
  HOME_C20_2002, 
  HOME_C01_2004, 
  HOME_C02_2004, 
  HOME_C04_2004, 
  HOME_C05_2004, 
  HOME_C09_2004, 
  HOME_C10_2004, 
  HOME_C11_2004, 
  HOME_C17_2004, 
  HOME_C18_2004, 
  HOME_C20_2004, 
  MS_HOME_C01_2006, 
  MS_HOME_C02_2006, 
  MS_HOME_C04_2006, 
  MS_HOME_C05_2006, 
  MS_HOME_C09_2006, 
  MS_HOME_C10_2006, 
  MS_HOME_C11_2006, 
  MS_HOME_C17_2006, 
  MS_HOME_C18_2006, 
  MS_HOME_C20_2006, 
  MS_HOME_C01_2008, 
  MS_HOME_C02_2008, 
  MS_HOME_C04_2008, 
  MS_HOME_C05_2008, 
  MS_HOME_C09_2008, 
  MS_HOME_C10_2008, 
  MS_HOME_C11_2008, 
  MS_HOME_C17_2008, 
  MS_HOME_C18_2008, 
  MS_HOME_C20_2008, 
  MS_HOME_C01_2010, 
  MS_HOME_C02_2010, 
  MS_HOME_C04_2010, 
  MS_HOME_C05_2010, 
  MS_HOME_C09_2010, 
  MS_HOME_C10_2010, 
  MS_HOME_C11_2010, 
  MS_HOME_C17_2010, 
  MS_HOME_C18_2010, 
  MS_HOME_C20_2010, 
  MS_HOME_C01_2012, 
  MS_HOME_C02_2012, 
  MS_HOME_C04_2012, 
  MS_HOME_C05_2012, 
  MS_HOME_C09_2012, 
  MS_HOME_C10_2012, 
  MS_HOME_C11_2012, 
  MS_HOME_C17_2012, 
  MS_HOME_C18_2012, 
  MS_HOME_C20_2012, 
  MS_HOME_C01_2014, 
  MS_HOME_C02_2014, 
  MS_HOME_C04_2014, 
  MS_HOME_C05_2014, 
  MS_HOME_C09_2014, 
  MS_HOME_C10_2014, 
  MS_HOME_C11_2014, 
  MS_HOME_C17_2014, 
  MS_HOME_C18_2014, 
  MS_HOME_C20_2014, 
  MS_HOME_C01_2016, 
  MS_HOME_C02_2016, 
  MS_HOME_C04_2016, 
  MS_HOME_C05_2016, 
  MS_HOME_C09_2016, 
  MS_HOME_C10_2016, 
  MS_HOME_C11_2016, 
  MS_HOME_C17_2016, 
  MS_HOME_C18_2016, 
  MS_HOME_C20_2016, 
  VERSION_R29_XRND.
