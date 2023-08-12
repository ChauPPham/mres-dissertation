file handle pcdat/name='NLSY79CYA_supplement.dat' /lrecl=119.
data list file pcdat free /
  C0000100 (F7)
  C0000200 (F5)
  C0003800 (F3)
  C0003900 (F3)
  C0004000 (F3)
  C0004100 (F3)
  C0004200 (F3)
  C0004300 (F3)
  C0004400 (F3)
  C0004500 (F3)
  C0004600 (F3)
  C0004700 (F3)
  C0004710 (F3)
  C0004720 (F3)
  C0004730 (F3)
  C0004740 (F3)
  C0004741 (F3)
  C0004742 (F3)
  C0004743 (F3)
  C0004744 (F3)
  C0004745 (F3)
  C0004746 (F3)
  C0004747 (F3)
  C0004748 (F3)
  C0005300 (F2)
  C0005400 (F2)
  C0005700 (F4)
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
  C0003800  "AGE OF CHILD (MOS) AT INT OF MOTHER 79"
  C0003900  "AGE OF CHILD (MOS) AT INT OF MOTHER 80"
  C0004000  "AGE OF CHILD (MOS) AT INT OF MOTHER 81"
  C0004100  "AGE OF CHILD (MOS) AT INT OF MOTHER 82"
  C0004200  "AGE OF CHILD (MOS) AT INT OF MOTHER 83"
  C0004300  "AGE OF CHILD (MOS) AT INT OF MOTHER 84"
  C0004400  "AGE OF CHILD (MOS) AT INT OF MOTHER 85"
  C0004500  "AGE OF CHILD (MOS) AT INT OF MOTHER 86"
  C0004600  "AGE OF CHILD (MOS) AT INT OF MOTHER 87"
  C0004700  "AGE OF CHILD (MOS) AT INT OF MOTHER 88"
  C0004710  "AGE OF CHILD (MOS) AT INT OF MOTHER 89"
  C0004720  "AGE OF CHILD (MOS) AT INT OF MOTHER 90"
  C0004730  "AGE OF CHILD (MOS) AT INT OF MOTHER 91"
  C0004740  "AGE OF CHILD (MOS) AT INT OF MOTHER 92"
  C0004741  "AGE OF CHILD (MOS) AT INT OF MOTHER 93"
  C0004742  "AGE OF CHILD (MOS) AT INT OF MOTHER 94"
  C0004743  "AGE OF CHILD (MOS) AT INT OF MOTHER 96"
  C0004744  "AGE OF CHILD (MOS) AT INT OF MOTHER 1998"
  C0004745  "AGE OF CHILD (MOS) AT INT OF MOTHER 2000"
  C0004746  "AGE OF CHILD (MOS) AT INT OF MOTHER 2002"
  C0004747  "AGE OF CHILD (MOS) AT INT OF MOTHER 2004"
  C0004748  "AGE OF CHILD (MOS) AT INT OF MOTHER 2006"
  C0005300  "RACE OF CHILD (FROM MOTHERS SCREENER 79)"
  C0005400  "SEX OF CHILD"
  C0005700  "DATE OF BIRTH OF CHILD - YEAR"
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
 C0003800 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0003900 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004000 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004100 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004200 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004300 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004400 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004500 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004600 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004700 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004710 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004720 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004730 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004740 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004741 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004742 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004743 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004744 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004745 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004746 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004747 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
    / 
 C0004748 
    (0 thru 11 eq 0)
    (12 thru 23 eq 12)
    (24 thru 35 eq 24)
    (36 thru 47 eq 36)
    (48 thru 59 eq 48)
    (60 thru 71 eq 60)
    (72 thru 83 eq 72)
    (84 thru 95 eq 84)
    (96 thru 107 eq 96)
    (108 thru 119 eq 108)
    (120 thru 131 eq 120)
    (132 thru 143 eq 132)
    (144 thru 155 eq 144)
    (156 thru 167 eq 156)
    (168 thru 179 eq 168)
    (180 thru 999 eq 180)
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
 C0003800
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0003900
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004000
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004100
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004200
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004300
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004400
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004500
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004600
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004700
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004710
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004720
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004730
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004740
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004741
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004742
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004743
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180+ MONTHS"
    /
 C0004744
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004745
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004746
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004747
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
    /
 C0004748
    0 "0 TO 11: 0-11 MONTHS"
    12 "12 TO 23: 12-23 MONTHS"
    24 "24 TO 35: 24-35 MONTHS"
    36 "36 TO 47: 36-47 MONTHS"
    48 "48 TO 59: 48-59 MONTHS"
    60 "60 TO 71: 60-71 MONTHS"
    72 "72 TO 83: 72-83 MONTHS"
    84 "84 TO 95: 84-95 MONTHS"
    96 "96 TO 107: 96-107 MONTHS"
    108 "108 TO 119: 108-119 MONTHS"
    120 "120 TO 131: 120-131 MONTHS"
    132 "132 TO 143: 132-143 MONTHS"
    144 "144 TO 155: 144-155 MONTHS"
    156 "156 TO 167: 156-167 MONTHS"
    168 "168 TO 179: 168-179 MONTHS"
    180 "180 TO 999: 180 + MONTHS"
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
  (C0003800 = AGECH1979_1979) 
  (C0003900 = AGECH1980_1980) 
  (C0004000 = AGECH1981_1981) 
  (C0004100 = AGECH1982_1982) 
  (C0004200 = AGECH1983_1983) 
  (C0004300 = AGECH1984_1984) 
  (C0004400 = AGECH1985_1985) 
  (C0004500 = AGECH1986_1986) 
  (C0004600 = AGECH1987_1987) 
  (C0004700 = AGECH1988_1988) 
  (C0004710 = AGECH1989_1989) 
  (C0004720 = AGECH1990_1990) 
  (C0004730 = AGECH1991_1991) 
  (C0004740 = AGECH1992_1992) 
  (C0004741 = AGECH1993_1993) 
  (C0004742 = AGECH1994_1994) 
  (C0004743 = AGECH1996_1996) 
  (C0004744 = AGECH1998_1998) 
  (C0004745 = AGECH2000_2000) 
  (C0004746 = AGECH2002_2002) 
  (C0004747 = AGECH2004_2004) 
  (C0004748 = AGECH2006_2006) 
  (C0005300 = CRACE_XRND) 
  (C0005400 = CSEX_XRND) 
  (C0005700 = CYRB_XRND) 
  (Y2267000 = VERSION_R29_XRND) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=C0000100, 
  C0000200, 
  C0003800, 
  C0003900, 
  C0004000, 
  C0004100, 
  C0004200, 
  C0004300, 
  C0004400, 
  C0004500, 
  C0004600, 
  C0004700, 
  C0004710, 
  C0004720, 
  C0004730, 
  C0004740, 
  C0004741, 
  C0004742, 
  C0004743, 
  C0004744, 
  C0004745, 
  C0004746, 
  C0004747, 
  C0004748, 
  C0005300, 
  C0005400, 
  C0005700, 
  Y2267000.

*--- Tabulations using qname variables.
*freq var=CPUBID_XRND, 
  MPUBID_XRND, 
  AGECH1979_1979, 
  AGECH1980_1980, 
  AGECH1981_1981, 
  AGECH1982_1982, 
  AGECH1983_1983, 
  AGECH1984_1984, 
  AGECH1985_1985, 
  AGECH1986_1986, 
  AGECH1987_1987, 
  AGECH1988_1988, 
  AGECH1989_1989, 
  AGECH1990_1990, 
  AGECH1991_1991, 
  AGECH1992_1992, 
  AGECH1993_1993, 
  AGECH1994_1994, 
  AGECH1996_1996, 
  AGECH1998_1998, 
  AGECH2000_2000, 
  AGECH2002_2002, 
  AGECH2004_2004, 
  AGECH2006_2006, 
  CRACE_XRND, 
  CSEX_XRND, 
  CYRB_XRND, 
  VERSION_R29_XRND.
