file handle pcdat/name='NLSY79CYA_supplement2.dat' /lrecl=310.
data list file pcdat free /
  C0000100 (F7)
  C0000200 (F5)
  C0005300 (F2)
  C0005400 (F2)
  C0005700 (F4)
  C0574000 (F4)
  C0575400 (F4)
  C0576702 (F4)
  C0581100 (F2)
  C0794400 (F4)
  C0795800 (F4)
  C0797102 (F4)
  C0800600 (F2)
  C0994400 (F4)
  C0995800 (F4)
  C0997102 (F4)
  C0999800 (F2)
  C1194700 (F4)
  C1196100 (F4)
  C1197412 (F4)
  C1199800 (F2)
  C1502500 (F4)
  C1503900 (F3)
  C1505400 (F4)
  C1508800 (F2)
  C1559400 (F4)
  C1560800 (F4)
  C1562300 (F4)
  C1565700 (F2)
  C1795100 (F4)
  C1796500 (F4)
  C1798000 (F4)
  C1801100 (F2)
  C2495800 (F4)
  C2495900 (F4)
  C2496300 (F4)
  C2504500 (F2)
  C2524300 (F3)
  C2524400 (F4)
  C2524800 (F4)
  C2533000 (F2)
  C2795600 (F4)
  C2795700 (F4)
  C2796100 (F4)
  C2803800 (F2)
  C3103600 (F4)
  C3103700 (F4)
  C3104100 (F4)
  C3112300 (F2)
  C3607300 (F3)
  C3607400 (F4)
  C3607800 (F4)
  C3616000 (F2)
  C3985900 (F3)
  C3986000 (F4)
  C3986400 (F4)
  C3994600 (F2)
  C5529900 (F3)
  C5530000 (F4)
  C5530400 (F4)
  C5538600 (F2)
  C5806100 (F4)
  C5806200 (F4)
  C5806600 (F4)
  C5814400 (F2)
  C6051900 (F3)
  C6052000 (F4)
  C6052400 (F4)
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
  C0574000  "BPI: TOTAL PCTILE SCORE-ALL 86"
  C0575400  "BPI: TOTAL PCTILE-SAME SEX 86"
  C0576702  "BPI: REV TOTAL PCTILE SCORE"
  C0581100  "PPVT: TOTAL PCTILE SCORE 86"
  C0794400  "BPI: TOTAL PCTILE SCORE-ALL 88"
  C0795800  "BPI: TOTAL PCTILE-SAME SEX 88"
  C0797102  "BPI: REV TOTAL PCTILE SCORE"
  C0800600  "PPVT: TOTAL PCTILE SCORE 88"
  C0994400  "BPI: TOTAL PCTILE SCORE-ALL 90"
  C0995800  "BPI: TOTAL PCTILE-SAME SEX 90"
  C0997102  "BPI: REV TOTAL PCTILE SCORE"
  C0999800  "PPVT: TOTAL PCTILE SCORE 90"
  C1194700  "BPI: TOTAL PERCENTILE SCORE-ALL - 92"
  C1196100  "BPI: TOTAL PERCENTILE SCORE-SAME SEX-92"
  C1197412  "BPI: REV TOTAL PCTILE SCORE"
  C1199800  "PPVT: TOTAL PERCENTILE SCORE - 92"
  C1502500  "BPI: TOTAL PERCENTILE SCORE-ALL - 94"
  C1503900  "BPI: TOTAL PERCENTILE SCORE-SAME SEX-94"
  C1505400  "BPI: REV TOTAL PCT SCORE - 94"
  C1508800  "PPVT: TOTAL PERCENTILE SCORE - 94"
  C1559400  "BPI: TOTAL PERCENTILE SCORE-ALL 96"
  C1560800  "BPI: TOTAL PERCENTILE SCORE-SAME SEX 96"
  C1562300  "BPI: REV TOTAL PCTILE SCORE 96"
  C1565700  "PPVT: TOTAL PERCENTILE SCORE 96"
  C1795100  "BPI: TOTAL PERCENTILE SCORE-ALL 1998"
  C1796500  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 1998"
  C1798000  "BPI: REV TOTAL PCTILE SCORE 1998"
  C1801100  "PPVT: TOTAL PERCENTILE SCORE 1998"
  C2495800  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2000"
  C2495900  "BPI: TOTAL PERCENTILE SCORE-ALL 2000"
  C2496300  "BPI: REV TOTAL PCTILE SCORE 2000"
  C2504500  "PPVT: TOTAL PERCENTILE SCORE 2000"
  C2524300  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2002"
  C2524400  "BPI: TOTAL PERCENTILE SCORE-ALL 2002"
  C2524800  "BPI: REV TOTAL PCTILE SCORE 2002"
  C2533000  "PPVT: TOTAL PERCENTILE SCORE 2002"
  C2795600  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2004"
  C2795700  "BPI: TOTAL PERCENTILE SCORE-ALL 2004"
  C2796100  "BPI: REV TOTAL PCTILE SCORE 2004"
  C2803800  "PPVT: TOTAL PERCENTILE SCORE 2004"
  C3103600  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2006"
  C3103700  "BPI: TOTAL PERCENTILE SCORE-ALL 2006"
  C3104100  "BPI: REV TOTAL PCTILE SCORE 2006"
  C3112300  "PPVT: TOTAL PERCENTILE SCORE 2006"
  C3607300  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2008"
  C3607400  "BPI: TOTAL PERCENTILE SCORE-ALL 2008"
  C3607800  "BPI: REV TOTAL PCTILE SCORE 2008"
  C3616000  "PPVT: TOTAL PERCENTILE SCORE 2008"
  C3985900  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2010"
  C3986000  "BPI: TOTAL PERCENTILE SCORE-ALL 2010"
  C3986400  "BPI: REV TOTAL PCTILE SCORE 2010"
  C3994600  "PPVT: TOTAL PERCENTILE SCORE 2010"
  C5529900  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2012"
  C5530000  "BPI: TOTAL PERCENTILE SCORE-ALL 2012"
  C5530400  "BPI: REV TOTAL PCTILE SCORE 2012"
  C5538600  "PPVT: TOTAL PERCENTILE SCORE 2012"
  C5806100  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2014"
  C5806200  "BPI: TOTAL PERCENTILE SCORE-ALL 2014"
  C5806600  "BPI: REV TOTAL PCTILE SCORE 2014"
  C5814400  "PPVT: TOTAL PERCENTILE SCORE 2014"
  C6051900  "BPI: TOTAL PERCENTLE SCORE-SAME SEX 2016"
  C6052000  "BPI: TOTAL PERCENTILE SCORE-ALL 2016"
  C6052400  "BPI: REV TOTAL PCTILE SCORE 2016"
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
 C0574000 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0575400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0576702 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0581100 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C0794400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0795800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0797102 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0800600 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C0994400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0995800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0997102 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C0999800 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C1194700 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1196100 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1197412 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1199800 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C1502500 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1503900 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1505400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1508800 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C1559400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1560800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1562300 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1565700 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C1795100 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1796500 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1798000 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C1801100 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C2495800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2495900 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2496300 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2504500 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C2524300 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2524400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2524800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2533000 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C2795600 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2795700 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2796100 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C2803800 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C3103600 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3103700 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3104100 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3112300 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C3607300 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3607400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3607800 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3616000 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C3985900 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3986000 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3986400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C3994600 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C5529900 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5530000 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5530400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5538600 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C5806100 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5806200 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5806600 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C5814400 
    (0 thru 0 eq 0)
    (1 thru 9 eq 1)
    (10 thru 19 eq 10)
    (20 thru 29 eq 20)
    (30 thru 39 eq 30)
    (40 thru 49 eq 40)
    (50 thru 59 eq 50)
    (60 thru 69 eq 60)
    (70 thru 79 eq 70)
    (80 thru 89 eq 80)
    (90 thru 99 eq 90)
    (100 thru 100 eq 100)
    (101 thru 99999 eq 101)
    / 
 C6051900 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C6052000 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
    / 
 C6052400 
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
    (1000 thru 1000 eq 1000)
    (1001 thru 99999999 eq 1001)
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
 C0574000
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0575400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0576702
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0581100
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C0794400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0795800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0797102
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0800600
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C0994400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0995800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0997102
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C0999800
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C1194700
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1196100
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1197412
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1199800
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C1502500
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1503900
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1505400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1508800
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C1559400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1560800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1562300
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1565700
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C1795100
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1796500
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1798000
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C1801100
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C2495800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2495900
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2496300
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2504500
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C2524300
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2524400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2524800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2533000
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C2795600
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2795700
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2796100
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C2803800
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C3103600
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3103700
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3104100
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3112300
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C3607300
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3607400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3607800
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3616000
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C3985900
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3986000
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3986400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C3994600
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C5529900
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5530000
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5530400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5538600
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C5806100
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5806200
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5806600
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C5814400
    0 "0"
    1 "1 TO 9"
    10 "10 TO 19"
    20 "20 TO 29"
    30 "30 TO 39"
    40 "40 TO 49"
    50 "50 TO 59"
    60 "60 TO 69"
    70 "70 TO 79"
    80 "80 TO 89"
    90 "90 TO 99"
    100 "100"
    101 "101 TO 99999: 101+"
    /
 C6051900
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C6052000
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
    /
 C6052400
    0 "0"
    1 "1 TO 99: 00.1 - 09.9"
    100 "100 TO 199: 10.0 - 19.9"
    200 "200 TO 299: 20.0 - 29.9"
    300 "300 TO 399: 30.0 - 39.9"
    400 "400 TO 499: 40.0 - 49.9"
    500 "500 TO 599: 50.0 - 59.9"
    600 "600 TO 699: 60.0 - 69.9"
    700 "700 TO 799: 70.0 - 79.9"
    800 "800 TO 899: 80.0 - 89.9"
    900 "900 TO 999: 90.0 - 99.9"
    1000 "1000: 100.0"
    1001 "1001 TO 99999999: 100.1+"
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
  (C0574000 = BPIP1986_1986) 
  (C0575400 = BPIPX1986_1986) 
  (C0576702 = BPTOTP1986_1986) 
  (C0581100 = PPVTP1986_1986) 
  (C0794400 = BPIP1988_1988) 
  (C0795800 = BPIPX1988_1988) 
  (C0797102 = BPTOTP1988_1988) 
  (C0800600 = PPVTP1988_1988) 
  (C0994400 = BPIP1990_1990) 
  (C0995800 = BPIPX1990_1990) 
  (C0997102 = BPTOTP1990_1990) 
  (C0999800 = PPVTP1990_1990) 
  (C1194700 = BPIP1992_1992) 
  (C1196100 = BPIPX1992_1992) 
  (C1197412 = BPTOTP1992_1992) 
  (C1199800 = PPVTP1992_1992) 
  (C1502500 = BPIP1994_1994) 
  (C1503900 = BPIPX1994_1994) 
  (C1505400 = BPTOTP1994_1994) 
  (C1508800 = PPVTP1994_1994) 
  (C1559400 = BPIP1996_1996) 
  (C1560800 = BPIPX1996_1996) 
  (C1562300 = BPTOTP1996_1996) 
  (C1565700 = PPVTP1996_1996) 
  (C1795100 = BPIP1998_1998) 
  (C1796500 = BPIPX1998_1998) 
  (C1798000 = BPTOTP1998_1998) 
  (C1801100 = PPVTP1998_1998) 
  (C2495800 = BPIPX2000_2000) 
  (C2495900 = BPIP2000_2000) 
  (C2496300 = BPTOTP2000_2000) 
  (C2504500 = PPVTP2000_2000) 
  (C2524300 = BPIPX2002_2002) 
  (C2524400 = BPIP2002_2002) 
  (C2524800 = BPTOTP2002_2002) 
  (C2533000 = PPVTP2002_2002) 
  (C2795600 = BPIPX2004_2004) 
  (C2795700 = BPIP2004_2004) 
  (C2796100 = BPTOTP2004_2004) 
  (C2803800 = PPVTP2004_2004) 
  (C3103600 = BPIPX2006_2006) 
  (C3103700 = BPIP2006_2006) 
  (C3104100 = BPTOTP2006_2006) 
  (C3112300 = PPVTP2006_2006) 
  (C3607300 = BPIPX2008_2008) 
  (C3607400 = BPIP2008_2008) 
  (C3607800 = BPTOTP2008_2008) 
  (C3616000 = PPVTP2008_2008) 
  (C3985900 = BPIPX2010_2010) 
  (C3986000 = BPIP2010_2010) 
  (C3986400 = BPTOTP2010_2010) 
  (C3994600 = PPVTP2010_2010) 
  (C5529900 = BPIPX2012_2012) 
  (C5530000 = BPIP2012_2012) 
  (C5530400 = BPTOTP2012_2012) 
  (C5538600 = PPVTP2012_2012) 
  (C5806100 = BPIPX2014_2014) 
  (C5806200 = BPIP2014_2014) 
  (C5806600 = BPTOTP2014_2014) 
  (C5814400 = PPVTP2014_2014) 
  (C6051900 = BPIPX2016_2016) 
  (C6052000 = BPIP2016_2016) 
  (C6052400 = BPTOTP2016_2016) 
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
  C0574000, 
  C0575400, 
  C0576702, 
  C0581100, 
  C0794400, 
  C0795800, 
  C0797102, 
  C0800600, 
  C0994400, 
  C0995800, 
  C0997102, 
  C0999800, 
  C1194700, 
  C1196100, 
  C1197412, 
  C1199800, 
  C1502500, 
  C1503900, 
  C1505400, 
  C1508800, 
  C1559400, 
  C1560800, 
  C1562300, 
  C1565700, 
  C1795100, 
  C1796500, 
  C1798000, 
  C1801100, 
  C2495800, 
  C2495900, 
  C2496300, 
  C2504500, 
  C2524300, 
  C2524400, 
  C2524800, 
  C2533000, 
  C2795600, 
  C2795700, 
  C2796100, 
  C2803800, 
  C3103600, 
  C3103700, 
  C3104100, 
  C3112300, 
  C3607300, 
  C3607400, 
  C3607800, 
  C3616000, 
  C3985900, 
  C3986000, 
  C3986400, 
  C3994600, 
  C5529900, 
  C5530000, 
  C5530400, 
  C5538600, 
  C5806100, 
  C5806200, 
  C5806600, 
  C5814400, 
  C6051900, 
  C6052000, 
  C6052400, 
  Y2267000.

*--- Tabulations using qname variables.
*freq var=CPUBID_XRND, 
  MPUBID_XRND, 
  CRACE_XRND, 
  CSEX_XRND, 
  CYRB_XRND, 
  BPIP1986_1986, 
  BPIPX1986_1986, 
  BPTOTP1986_1986, 
  PPVTP1986_1986, 
  BPIP1988_1988, 
  BPIPX1988_1988, 
  BPTOTP1988_1988, 
  PPVTP1988_1988, 
  BPIP1990_1990, 
  BPIPX1990_1990, 
  BPTOTP1990_1990, 
  PPVTP1990_1990, 
  BPIP1992_1992, 
  BPIPX1992_1992, 
  BPTOTP1992_1992, 
  PPVTP1992_1992, 
  BPIP1994_1994, 
  BPIPX1994_1994, 
  BPTOTP1994_1994, 
  PPVTP1994_1994, 
  BPIP1996_1996, 
  BPIPX1996_1996, 
  BPTOTP1996_1996, 
  PPVTP1996_1996, 
  BPIP1998_1998, 
  BPIPX1998_1998, 
  BPTOTP1998_1998, 
  PPVTP1998_1998, 
  BPIPX2000_2000, 
  BPIP2000_2000, 
  BPTOTP2000_2000, 
  PPVTP2000_2000, 
  BPIPX2002_2002, 
  BPIP2002_2002, 
  BPTOTP2002_2002, 
  PPVTP2002_2002, 
  BPIPX2004_2004, 
  BPIP2004_2004, 
  BPTOTP2004_2004, 
  PPVTP2004_2004, 
  BPIPX2006_2006, 
  BPIP2006_2006, 
  BPTOTP2006_2006, 
  PPVTP2006_2006, 
  BPIPX2008_2008, 
  BPIP2008_2008, 
  BPTOTP2008_2008, 
  PPVTP2008_2008, 
  BPIPX2010_2010, 
  BPIP2010_2010, 
  BPTOTP2010_2010, 
  PPVTP2010_2010, 
  BPIPX2012_2012, 
  BPIP2012_2012, 
  BPTOTP2012_2012, 
  PPVTP2012_2012, 
  BPIPX2014_2014, 
  BPIP2014_2014, 
  BPTOTP2014_2014, 
  PPVTP2014_2014, 
  BPIPX2016_2016, 
  BPIP2016_2016, 
  BPTOTP2016_2016, 
  VERSION_R29_XRND.
