file handle pcdat/name='NLSY79_CYA_supplement.dat' /lrecl=406.
data list file pcdat free /
  C0000100 (F7)
  C0000200 (F5)
  C0005300 (F2)
  C0005400 (F2)
  C0005700 (F4)
  C0007000 (F2)
  C0127410 (F2)
  C0127610 (F2)
  C0127810 (F2)
  C0127910 (F2)
  C0128010 (F2)
  C0571600 (F4)
  C0571700 (F4)
  C0580100 (F3)
  C0580400 (F3)
  C0580700 (F3)
  C0792000 (F4)
  C0792100 (F4)
  C0799600 (F3)
  C0799900 (F3)
  C0800200 (F3)
  C0992000 (F4)
  C0992100 (F4)
  C0998800 (F3)
  C0999100 (F3)
  C0999400 (F3)
  C1192300 (F4)
  C1192400 (F4)
  C1198800 (F3)
  C1199100 (F3)
  C1199400 (F3)
  C1500100 (F4)
  C1500200 (F4)
  C1507800 (F3)
  C1508100 (F3)
  C1508400 (F3)
  C1557000 (F4)
  C1557100 (F4)
  C1564700 (F3)
  C1565000 (F3)
  C1565300 (F3)
  C1792700 (F4)
  C1792800 (F4)
  C1800100 (F3)
  C1800400 (F3)
  C1800700 (F3)
  C1987300 (F2)
  C2493300 (F2)
  C2502600 (F4)
  C2502800 (F4)
  C2503700 (F3)
  C2503900 (F3)
  C2504300 (F3)
  C2521100 (F2)
  C2531100 (F4)
  C2531300 (F4)
  C2532200 (F3)
  C2532400 (F3)
  C2532800 (F3)
  C2791600 (F2)
  C2802400 (F4)
  C2802600 (F4)
  C2803000 (F3)
  C2803200 (F3)
  C2803600 (F3)
  C3101100 (F2)
  C3110400 (F4)
  C3110600 (F4)
  C3111500 (F3)
  C3111700 (F3)
  C3112100 (F3)
  C3603400 (F2)
  C3614100 (F4)
  C3614300 (F4)
  C3615200 (F3)
  C3615400 (F3)
  C3615800 (F3)
  C3983400 (F2)
  C3992700 (F4)
  C3992900 (F4)
  C3993800 (F3)
  C3994000 (F3)
  C3994400 (F3)
  C5527300 (F2)
  C5536700 (F4)
  C5536900 (F4)
  C5537800 (F3)
  C5538000 (F3)
  C5538400 (F3)
  C5803600 (F2)
  C5812500 (F4)
  C5812700 (F4)
  C5813600 (F3)
  C5813800 (F3)
  C5814200 (F3)
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
  C0007000  "AGE OF MOTHER AT BIRTH OF CHILD"
  C0127410  "# OF MEMBERS UNDER 18 IN HH OF MOTHER 91"
  C0127610  "# OF MEMBERS UNDER 18 IN HH OF MOTHER 92"
  C0127810  "# OF MEMBERS UNDER 18 IN HH OF MOTHER 93"
  C0127910  "# OF MEMBERS UNDER 18 IN HH OF MOTHER 94"
  C0128010  "# OF MEMBERS UNDER 18 IN HH OF MOTHER 96"
  C0571600  "HOME: COG STIM STANDARD SCORE"
  C0571700  "HOME: EMO SUPP STANDARD SCORE"
  C0580100  "PIAT MATH: TOTAL STD SCORE 86"
  C0580400  "PIAT READ REC: TOTAL STD SCORE 86"
  C0580700  "PIAT READ COMP: TOTAL STD SCORE 86"
  C0792000  "HOME: COG STIM STANDARD SCORE"
  C0792100  "HOME: EMO SUPP STANDARD SCORE"
  C0799600  "PIAT MATH: TOTAL STD SCORE 88"
  C0799900  "PIAT READ REC: TOTAL STD SCORE 88"
  C0800200  "PIAT READ COMP: TOTAL STD SCORE 88"
  C0992000  "HOME: COG STIM STANDARD SCORE"
  C0992100  "HOME: EMO SUPP STANDARD SCORE"
  C0998800  "PIAT MATH: TOTAL STD SCORE 90"
  C0999100  "PIAT READ REC: TOTAL STD SCORE 90"
  C0999400  "PIAT READ COMP: TOTAL STD SCORE 90"
  C1192300  "HOME: COG STIM STANDARD SCORE"
  C1192400  "HOME: EMO SUPP STANDARD SCORE"
  C1198800  "PIAT MATH: TOTAL STANDARD SCORE - 92"
  C1199100  "PIAT READ REC: TOTAL STNDRD SCORE - 92"
  C1199400  "PIAT READ COMP: TOTAL STAND SCORE - 92"
  C1500100  "HOME: COG STIM STANDARD SCORE"
  C1500200  "HOME: EMO SUPP STANDARD SCORE"
  C1507800  "PIAT MATH: TOTAL STANDARD SCORE - 94"
  C1508100  "PIAT READ REC: TOTAL STNDRD SCORE - 94"
  C1508400  "PIAT READ COMP: TOTAL STAND SCORE - 94"
  C1557000  "HOME: COG STIM STANDARD SCORE"
  C1557100  "HOME: EMO SUPP STANDARD SCORE"
  C1564700  "PIAT MATH: TOTAL STANDARD SCORE 96"
  C1565000  "PIAT READ REC: TOTAL STNDRD SCORE 96"
  C1565300  "PIAT READ COMP: TOTAL STAND SCORE 96"
  C1792700  "HOME: COG STIM STANDARD SCORE 1998"
  C1792800  "HOME: EMO SUPP STANDARD SCORE 1998"
  C1800100  "PIAT MATH: TOTAL STANDARD SCORE 1998"
  C1800400  "PIAT READ REC: TOTAL STNDRD SCORE 1998"
  C1800700  "PIAT READ COMP: TOTAL STAND SCORE 1998"
  C1987300  "#  MEMBERS UNDER 18 IN HH OF MOTHER 1998"
  C2493300  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2000"
  C2502600  "HOME: COG STIM STANDARD SCORE 2000"
  C2502800  "HOME: EMO SUPP STANDARD SCORE 2000"
  C2503700  "PIAT MATH: TOTAL STANDARD SCORE 2000"
  C2503900  "PIAT READ REC: TOTAL STNDRD SCORE 2000"
  C2504300  "PIAT READ COMP: TOTAL STAND SCORE 2000"
  C2521100  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2002"
  C2531100  "HOME: COG STIM STANDARD SCORE 2002"
  C2531300  "HOME: EMO SUPP STANDARD SCORE 2002"
  C2532200  "PIAT MATH: TOTAL STANDARD SCORE 2002"
  C2532400  "PIAT READ REC: TOTAL STNDRD SCORE 2002"
  C2532800  "PIAT READ COMP: TOTAL STAND SCORE 2002"
  C2791600  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2004"
  C2802400  "HOME: COG STIM STANDARD SCORE 2004"
  C2802600  "HOME: EMO SUPP STANDARD SCORE 2004"
  C2803000  "PIAT MATH: TOTAL STANDARD SCORE 2004"
  C2803200  "PIAT READ REC: TOTAL STNDRD SCORE 2004"
  C2803600  "PIAT READ COMP: TOTAL STAND SCORE 2004"
  C3101100  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2006"
  C3110400  "HOME: COG STIM STANDARD SCORE 2006"
  C3110600  "HOME: EMO SUPP STANDARD SCORE 2006"
  C3111500  "PIAT MATH: TOTAL STANDARD SCORE 2006"
  C3111700  "PIAT READ REC: TOTAL STNDRD SCORE 2006"
  C3112100  "PIAT READ COMP: TOTAL STAND SCORE 2006"
  C3603400  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2008"
  C3614100  "HOME: COG STIM STANDARD SCORE 2008"
  C3614300  "HOME: EMO SUPP STANDARD SCORE 2008"
  C3615200  "PIAT MATH: TOTAL STANDARD SCORE 2008"
  C3615400  "PIAT READ REC: TOTAL STNDRD SCORE 2008"
  C3615800  "PIAT READ COMP: TOTAL STAND SCORE 2008"
  C3983400  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2010"
  C3992700  "HOME: COG STIM STANDARD SCORE 2010"
  C3992900  "HOME: EMO SUPP STANDARD SCORE 2010"
  C3993800  "PIAT MATH: TOTAL STANDARD SCORE 2010"
  C3994000  "PIAT READ REC: TOTAL STNDRD SCORE 2010"
  C3994400  "PIAT READ COMP: TOTAL STAND SCORE 2010"
  C5527300  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2012"
  C5536700  "HOME: COG STIM STANDARD SCORE 2012"
  C5536900  "HOME: EMO SUPP STANDARD SCORE 2012"
  C5537800  "PIAT MATH: TOTAL STANDARD SCORE 2012"
  C5538000  "PIAT READ REC: TOTAL STNDRD SCORE 2012"
  C5538400  "PIAT READ COMP: TOTAL STAND SCORE 2012"
  C5803600  "#  MEMBERS UNDER 18 IN HH OF MOTHER 2014"
  C5812500  "HOME: COG STIM STANDARD SCORE 2014"
  C5812700  "HOME: EMO SUPP STANDARD SCORE 2014"
  C5813600  "PIAT MATH: TOTAL STANDARD SCORE 2014"
  C5813800  "PIAT READ REC: TOTAL STNDRD SCORE 2014"
  C5814200  "PIAT READ COMP: TOTAL STAND SCORE 2014"
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
 C0007000 
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
    (50 thru 52 eq 50)
    (53 thru 9999999 eq 53)
    / 
 C0127410 
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
 C0127610 
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
 C0127810 
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
 C0127910 
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
 C0128010 
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
    (11 thru 999999 eq 11)
    / 
 C0571600 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0571700 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0580100 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0580400 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0580700 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0792000 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0792100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0799600 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0799900 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0800200 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0992000 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0992100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C0998800 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0999100 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C0999400 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1192300 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C1192400 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C1198800 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1199100 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1199400 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1500100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C1500200 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 1099 eq 1000)
    (1100 thru 1199 eq 1100)
    (1200 thru 1299 eq 1200)
    (1300 thru 1399 eq 1300)
    (1400 thru 1499 eq 1400)
    (1500 thru 9999999 eq 1500)
    / 
 C1507800 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1508100 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1508400 
    (0 thru 64 eq 0)
    (65 thru 69 eq 65)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 144 eq 130)
    (145 thru 9999 eq 145)
    / 
 C1557000 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C1557100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C1564700 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1565000 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1565300 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1792700 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C1792800 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C1800100 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1800400 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1800700 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C1987300 
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
    (11 thru 9999 eq 11)
    / 
 C2493300 
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
    (11 thru 9999 eq 11)
    / 
 C2502600 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2502800 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2503700 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2503900 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2504300 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2521100 
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
    (11 thru 9999 eq 11)
    / 
 C2531100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2531300 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2532200 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2532400 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2532800 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2791600 
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
    (11 thru 9999 eq 11)
    / 
 C2802400 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2802600 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C2803000 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2803200 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C2803600 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3101100 
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
    (11 thru 9999 eq 11)
    / 
 C3110400 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3110600 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3111500 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3111700 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3112100 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3603400 
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
    (11 thru 9999 eq 11)
    / 
 C3614100 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3614300 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3615200 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3615400 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3615800 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3983400 
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
    (11 thru 9999 eq 11)
    / 
 C3992700 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3992900 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C3993800 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3994000 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C3994400 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5527300 
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
    (11 thru 9999 eq 11)
    / 
 C5536700 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C5536900 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C5537800 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5538000 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5538400 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5803600 
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
    (11 thru 9999 eq 11)
    / 
 C5812500 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C5812700 
    (0 thru 0 eq 0)
    (1 thru 99 eq 1)
    (100 thru 199 eq 100)
    (200 thru 299 eq 200)
    (300 thru 399 eq 300)
    (400 thru 499 eq 400)
    (500 thru 599 eq 500)
    (600 thru 699 eq 600)
    (700 thru 799 eq 700)
    (800 thru 899 eq 800)
    (900 thru 999 eq 900)
    (1000 thru 99999999 eq 1000)
    / 
 C5813600 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5813800 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
    / 
 C5814200 
    (0 thru 69 eq 0)
    (70 thru 84 eq 70)
    (85 thru 99 eq 85)
    (100 thru 114 eq 100)
    (115 thru 129 eq 115)
    (130 thru 999999 eq 130)
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
 C0007000
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
    50 "50 TO 52"
    53 "53 TO 9999999: 53+"
    /
 C0127410
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
 C0127610
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
 C0127810
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
 C0127910
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
 C0128010
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
    11 "11 TO 999999: > 10"
    /
 C0571600
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0571700
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0580100
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0580400
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0580700
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0792000
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0792100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0799600
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0799900
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0800200
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0992000
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0992100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C0998800
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0999100
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C0999400
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1192300
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C1192400
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C1198800
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1199100
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1199400
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1500100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C1500200
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 1099"
    1100 "1100 TO 1199"
    1200 "1200 TO 1299"
    1300 "1300 TO 1399"
    1400 "1400 TO 1499"
    1500 "1500 TO 9999999: 1500+"
    /
 C1507800
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1508100
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1508400
    0 "0 TO 64"
    65 "65 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 144"
    145 "145 TO 9999: 145 +"
    /
 C1557000
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C1557100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C1564700
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C1565000
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C1565300
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C1792700
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999"
    /
 C1792800
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999"
    /
 C1800100
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999"
    /
 C1800400
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999"
    /
 C1800700
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999"
    /
 C1987300
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
    11 "11 TO 9999"
    /
 C2493300
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
    11 "11 TO 9999"
    /
 C2502600
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2502800
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2503700
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2503900
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2504300
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2521100
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
    11 "11 TO 9999"
    /
 C2531100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2531300
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2532200
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2532400
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2532800
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2791600
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
    11 "11 TO 9999"
    /
 C2802400
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2802600
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C2803000
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2803200
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C2803600
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3101100
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
    11 "11 TO 9999"
    /
 C3110400
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3110600
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3111500
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3111700
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3112100
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3603400
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
    11 "11 TO 9999"
    /
 C3614100
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3614300
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3615200
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3615400
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3615800
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3983400
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
    11 "11 TO 9999"
    /
 C3992700
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3992900
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C3993800
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3994000
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C3994400
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5527300
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
    11 "11 TO 9999"
    /
 C5536700
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C5536900
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C5537800
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5538000
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5538400
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5803600
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
    11 "11 TO 9999"
    /
 C5812500
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C5812700
    0 "0"
    1 "1 TO 99"
    100 "100 TO 199"
    200 "200 TO 299"
    300 "300 TO 399"
    400 "400 TO 499"
    500 "500 TO 599"
    600 "600 TO 699"
    700 "700 TO 799"
    800 "800 TO 899"
    900 "900 TO 999"
    1000 "1000 TO 99999999: 1000+"
    /
 C5813600
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5813800
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
    /
 C5814200
    0 "0 TO 69"
    70 "70 TO 84"
    85 "85 TO 99"
    100 "100 TO 114"
    115 "115 TO 129"
    130 "130 TO 999999: 130 +"
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
  (C0007000 = MAGEBIR_XRND) 
  (C0127410 = NHCHLD1991_1991) 
  (C0127610 = NHCHLD1992_1992) 
  (C0127810 = NHCHLD1993_1993) 
  (C0127910 = NHCHLD1994_1994) 
  (C0128010 = NHCHLD1996_1996) 
  (C0571600 = COGNZ1986_1986) 
  (C0571700 = EMOTZ1986_1986) 
  (C0580100 = MATHZ1986_1986) 
  (C0580400 = RECOGZ1986_1986) 
  (C0580700 = COMPZ1986_1986) 
  (C0792000 = COGNZ1988_1988) 
  (C0792100 = EMOTZ1988_1988) 
  (C0799600 = MATHZ1988_1988) 
  (C0799900 = RECOGZ1988_1988) 
  (C0800200 = COMPZ1988_1988) 
  (C0992000 = COGNZ1990_1990) 
  (C0992100 = EMOTZ1990_1990) 
  (C0998800 = MATHZ1990_1990) 
  (C0999100 = RECOGZ1990_1990) 
  (C0999400 = COMPZ1990_1990) 
  (C1192300 = COGNZ1992_1992) 
  (C1192400 = EMOTZ1992_1992) 
  (C1198800 = MATHZ1992_1992) 
  (C1199100 = RECOGZ1992_1992) 
  (C1199400 = COMPZ1992_1992) 
  (C1500100 = COGNZ1994_1994) 
  (C1500200 = EMOTZ1994_1994) 
  (C1507800 = MATHZ1994_1994) 
  (C1508100 = RECOGZ1994_1994) 
  (C1508400 = COMPZ1994_1994) 
  (C1557000 = COGNZ1996_1996) 
  (C1557100 = EMOTZ1996_1996) 
  (C1564700 = MATHZ1996_1996) 
  (C1565000 = RECOGZ1996_1996) 
  (C1565300 = COMPZ1996_1996) 
  (C1792700 = COGNZ1998_1998) 
  (C1792800 = EMOTZ1998_1998) 
  (C1800100 = MATHZ1998_1998) 
  (C1800400 = RECOGZ1998_1998) 
  (C1800700 = COMPZ1998_1998) 
  (C1987300 = NHCHLD1998_1998) 
  (C2493300 = NHCHLD2000_2000) 
  (C2502600 = COGNZ2000_2000) 
  (C2502800 = EMOTZ2000_2000) 
  (C2503700 = MATHZ2000_2000) 
  (C2503900 = RECOGZ2000_2000) 
  (C2504300 = COMPZ2000_2000) 
  (C2521100 = NHCHLD2002_2002) 
  (C2531100 = COGNZ2002_2002) 
  (C2531300 = EMOTZ2002_2002) 
  (C2532200 = MATHZ2002_2002) 
  (C2532400 = RECOGZ2002_2002) 
  (C2532800 = COMPZ2002_2002) 
  (C2791600 = NHCHLD2004_2004) 
  (C2802400 = COGNZ2004_2004) 
  (C2802600 = EMOTZ2004_2004) 
  (C2803000 = MATHZ2004_2004) 
  (C2803200 = RECOGZ2004_2004) 
  (C2803600 = COMPZ2004_2004) 
  (C3101100 = NHCHLD2006_2006) 
  (C3110400 = COGNZ2006_2006) 
  (C3110600 = EMOTZ2006_2006) 
  (C3111500 = MATHZ2006_2006) 
  (C3111700 = RECOGZ2006_2006) 
  (C3112100 = COMPZ2006_2006) 
  (C3603400 = NHCHLD2008_2008) 
  (C3614100 = COGNZ2008_2008) 
  (C3614300 = EMOTZ2008_2008) 
  (C3615200 = MATHZ2008_2008) 
  (C3615400 = RECOGZ2008_2008) 
  (C3615800 = COMPZ2008_2008) 
  (C3983400 = NHCHLD2010_2010) 
  (C3992700 = COGNZ2010_2010) 
  (C3992900 = EMOTZ2010_2010) 
  (C3993800 = MATHZ2010_2010) 
  (C3994000 = RECOGZ2010_2010) 
  (C3994400 = COMPZ2010_2010) 
  (C5527300 = NHCHLD2012_2012) 
  (C5536700 = COGNZ2012_2012) 
  (C5536900 = EMOTZ2012_2012) 
  (C5537800 = MATHZ2012_2012) 
  (C5538000 = RECOGZ2012_2012) 
  (C5538400 = COMPZ2012_2012) 
  (C5803600 = NHCHLD2014_2014) 
  (C5812500 = COGNZ2014_2014) 
  (C5812700 = EMOTZ2014_2014) 
  (C5813600 = MATHZ2014_2014) 
  (C5813800 = RECOGZ2014_2014) 
  (C5814200 = COMPZ2014_2014) 
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
  C0007000, 
  C0127410, 
  C0127610, 
  C0127810, 
  C0127910, 
  C0128010, 
  C0571600, 
  C0571700, 
  C0580100, 
  C0580400, 
  C0580700, 
  C0792000, 
  C0792100, 
  C0799600, 
  C0799900, 
  C0800200, 
  C0992000, 
  C0992100, 
  C0998800, 
  C0999100, 
  C0999400, 
  C1192300, 
  C1192400, 
  C1198800, 
  C1199100, 
  C1199400, 
  C1500100, 
  C1500200, 
  C1507800, 
  C1508100, 
  C1508400, 
  C1557000, 
  C1557100, 
  C1564700, 
  C1565000, 
  C1565300, 
  C1792700, 
  C1792800, 
  C1800100, 
  C1800400, 
  C1800700, 
  C1987300, 
  C2493300, 
  C2502600, 
  C2502800, 
  C2503700, 
  C2503900, 
  C2504300, 
  C2521100, 
  C2531100, 
  C2531300, 
  C2532200, 
  C2532400, 
  C2532800, 
  C2791600, 
  C2802400, 
  C2802600, 
  C2803000, 
  C2803200, 
  C2803600, 
  C3101100, 
  C3110400, 
  C3110600, 
  C3111500, 
  C3111700, 
  C3112100, 
  C3603400, 
  C3614100, 
  C3614300, 
  C3615200, 
  C3615400, 
  C3615800, 
  C3983400, 
  C3992700, 
  C3992900, 
  C3993800, 
  C3994000, 
  C3994400, 
  C5527300, 
  C5536700, 
  C5536900, 
  C5537800, 
  C5538000, 
  C5538400, 
  C5803600, 
  C5812500, 
  C5812700, 
  C5813600, 
  C5813800, 
  C5814200, 
  Y2267000.

*--- Tabulations using qname variables.
*freq var=CPUBID_XRND, 
  MPUBID_XRND, 
  CRACE_XRND, 
  CSEX_XRND, 
  CYRB_XRND, 
  MAGEBIR_XRND, 
  NHCHLD1991_1991, 
  NHCHLD1992_1992, 
  NHCHLD1993_1993, 
  NHCHLD1994_1994, 
  NHCHLD1996_1996, 
  COGNZ1986_1986, 
  EMOTZ1986_1986, 
  MATHZ1986_1986, 
  RECOGZ1986_1986, 
  COMPZ1986_1986, 
  COGNZ1988_1988, 
  EMOTZ1988_1988, 
  MATHZ1988_1988, 
  RECOGZ1988_1988, 
  COMPZ1988_1988, 
  COGNZ1990_1990, 
  EMOTZ1990_1990, 
  MATHZ1990_1990, 
  RECOGZ1990_1990, 
  COMPZ1990_1990, 
  COGNZ1992_1992, 
  EMOTZ1992_1992, 
  MATHZ1992_1992, 
  RECOGZ1992_1992, 
  COMPZ1992_1992, 
  COGNZ1994_1994, 
  EMOTZ1994_1994, 
  MATHZ1994_1994, 
  RECOGZ1994_1994, 
  COMPZ1994_1994, 
  COGNZ1996_1996, 
  EMOTZ1996_1996, 
  MATHZ1996_1996, 
  RECOGZ1996_1996, 
  COMPZ1996_1996, 
  COGNZ1998_1998, 
  EMOTZ1998_1998, 
  MATHZ1998_1998, 
  RECOGZ1998_1998, 
  COMPZ1998_1998, 
  NHCHLD1998_1998, 
  NHCHLD2000_2000, 
  COGNZ2000_2000, 
  EMOTZ2000_2000, 
  MATHZ2000_2000, 
  RECOGZ2000_2000, 
  COMPZ2000_2000, 
  NHCHLD2002_2002, 
  COGNZ2002_2002, 
  EMOTZ2002_2002, 
  MATHZ2002_2002, 
  RECOGZ2002_2002, 
  COMPZ2002_2002, 
  NHCHLD2004_2004, 
  COGNZ2004_2004, 
  EMOTZ2004_2004, 
  MATHZ2004_2004, 
  RECOGZ2004_2004, 
  COMPZ2004_2004, 
  NHCHLD2006_2006, 
  COGNZ2006_2006, 
  EMOTZ2006_2006, 
  MATHZ2006_2006, 
  RECOGZ2006_2006, 
  COMPZ2006_2006, 
  NHCHLD2008_2008, 
  COGNZ2008_2008, 
  EMOTZ2008_2008, 
  MATHZ2008_2008, 
  RECOGZ2008_2008, 
  COMPZ2008_2008, 
  NHCHLD2010_2010, 
  COGNZ2010_2010, 
  EMOTZ2010_2010, 
  MATHZ2010_2010, 
  RECOGZ2010_2010, 
  COMPZ2010_2010, 
  NHCHLD2012_2012, 
  COGNZ2012_2012, 
  EMOTZ2012_2012, 
  MATHZ2012_2012, 
  RECOGZ2012_2012, 
  COMPZ2012_2012, 
  NHCHLD2014_2014, 
  COGNZ2014_2014, 
  EMOTZ2014_2014, 
  MATHZ2014_2014, 
  RECOGZ2014_2014, 
  COMPZ2014_2014, 
  VERSION_R29_XRND.
