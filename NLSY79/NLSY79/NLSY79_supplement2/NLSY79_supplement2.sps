file handle pcdat/name='NLSY79_supplement2.dat' /lrecl=275.
data list file pcdat free /
  R0000100 (F5)
  R0172500 (F2)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
  R0216400 (F2)
  R0226100 (F2)
  R0329200 (F2)
  R0405700 (F2)
  R0413700 (F2)
  R0530700 (F2)
  R0602810 (F2)
  R0659600 (F2)
  R0809900 (F2)
  R0897910 (F2)
  R0902900 (F2)
  R1045700 (F2)
  R1144800 (F2)
  R1202700 (F2)
  R1427500 (F2)
  R1520000 (F2)
  R1602000 (F2)
  R1794600 (F2)
  R1890700 (F2)
  R1902000 (F2)
  R2156200 (F2)
  R2257800 (F2)
  R2302000 (F2)
  R2365700 (F2)
  R2445200 (F2)
  R2503100 (F2)
  R2742500 (F2)
  R2870800 (F2)
  R2903100 (F2)
  R2986100 (F2)
  R3074500 (F2)
  R3104500 (F2)
  R3302500 (F2)
  R3401200 (F2)
  R3504500 (F2)
  R3573400 (F2)
  R3656600 (F2)
  R3704500 (F2)
  R3917600 (F2)
  R4007100 (F2)
  R4100200 (F2)
  R4123200 (F2)
  R4418200 (F2)
  R4500201 (F2)
  R4519200 (F2)
  R5081200 (F2)
  R5166500 (F2)
  R5200201 (F2)
  R5218200 (F2)
  R5817700 (F2)
  R6435301 (F2)
  R6479100 (F2)
  R6749700 (F2)
  R6963301 (F2)
  R7006800 (F2)
  R7396900 (F2)
  R7656301 (F2)
  R7704100 (F2)
  R7800501 (F2)
  R8090200 (F2)
  R8496500 (F2)
  T0000901 (F2)
  T0321700 (F2)
  T0988300 (F2)
  T1200701 (F2)
  T1471300 (F2)
  T2210300 (F2)
  T2260601 (F2)
  T2520200 (F2)
  T3108200 (F2)
  T3195601 (F2)
  T3506500 (F2)
  T4112700 (F2)
  T4181101 (F2)
  T4478200 (F2)
  T5023100 (F2)
  T5150001 (F2)
  T5424100 (F2)
  T5771000 (F2)
  T7720001 (F2)
  T7979900 (F2)
  T8219100 (F2)
  T8330001 (F2)
  T8584600 (F2)
  T8788300 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0172500  "INT REM INT DATE - MONTH 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  R0216400  "REGION OF CURRENT RESIDENCE 79"
  R0226100  "# WEEKS WRKD BY SP 79 80"
  R0329200  "INT REM INT DATE - MONTH 80"
  R0405700  "REGION OF CURRENT RESIDENCE 80"
  R0413700  "# WEEKS WRKD BY SP 80 81"
  R0530700  "INT REM INT DATE - MONTH 81"
  R0602810  "REGION OF CURRENT RESIDENCE 81"
  R0659600  "# WEEKS WRKD BY SP 81 82"
  R0809900  "INT REM INT DATE - MONTH 82"
  R0897910  "REGION OF CURRENT RESIDENCE 82"
  R0902900  "# WEEKS WRKD BY SP 82 83"
  R1045700  "INT REM INT DATE - MONTH 83"
  R1144800  "REGION OF CURRENT RESIDENCE 83"
  R1202700  "# WEEKS WRKD BY SP 83 84"
  R1427500  "INT REM INT DATE - MONTH 84"
  R1520000  "REGION OF CURRENT RESIDENCE 84"
  R1602000  "# WEEKS WRKD BY SP 84 85"
  R1794600  "INT REM INT DATE - MONTH 85"
  R1890700  "REGION OF CURRENT RESIDENCE 85"
  R1902000  "# WEEKS WRKD BY SP 85 86"
  R2156200  "INT REM INT DATE - MONTH 86"
  R2257800  "REGION OF CURRENT RESIDENCE 86"
  R2302000  "# WEEKS WRKD BY SP 86 87"
  R2365700  "INT REM INT DATE - MONTH 87"
  R2445200  "REGION OF CURRENT RESIDENCE 87"
  R2503100  "# WEEKS WRKD BY SP 87 88"
  R2742500  "INT REM INT DATE - MONTH 88"
  R2870800  "REGION OF CURRENT RESIDENCE 88"
  R2903100  "# WEEKS WRKD BY SP 88 89"
  R2986100  "INT REM INT DATE - MONTH 89"
  R3074500  "REGION OF CURRENT RESIDENCE 89"
  R3104500  "# WEEKS WRKD BY SP 89 90"
  R3302500  "INT REM INT DATE - MONTH 90"
  R3401200  "REGION OF CURRENT RESIDENCE 90"
  R3504500  "# WEEKS WRKD BY SP 90 91"
  R3573400  "INT REM INT DATE - MONTH 91"
  R3656600  "REGION OF CURRENT RESIDENCE 91"
  R3704500  "# WEEKS WRKD BY SP 91 92"
  R3917600  "INT REM INT DATE - MONTH 92"
  R4007100  "REGION OF CURRENT RESIDENCE 92"
  R4100200  "DATE OF INTERVIEW 93:MO"
  R4123200  "NUMBER OF WEEKS WORKED BY SP IN 1993"
  R4418200  "REGION OF RESIDENCE 93"
  R4500201  "DATE OF INTERVIEW 94"
  R4519200  "NUM OF WKS WRKD SP-PAR 1993 94"
  R5081200  "REGION OF RESIDENCE 94"
  R5166500  "REGION OF RESIDENCE 96"
  R5200201  "DATE OF INTERVIEW 96"
  R5218200  "# WKS WRKD SP-PAR 1995 96"
  R5817700  "NUM OF WKS WRKD SP-PAR 1997 1998"
  R6435301  "DATE OF INTERVIEW - MONTH 1998"
  R6479100  "REGION OF RESIDENCE 1998"
  R6749700  "NUM OF WKS WRKD SP-PAR 1999 2000"
  R6963301  "DATE OF INTERVIEW - MONTH 2000"
  R7006800  "REGION OF RESIDENCE 2000"
  R7396900  "NUM OF WKS WRKD SP-PAR 2001 2002"
  R7656301  "DATE OF INTERVIEW - MONTH 2002"
  R7704100  "REGION OF RESIDENCE 2002"
  R7800501  "DATE OF INTERVIEW - MONTH 2004"
  R8090200  "NUM OF WKS WRKD SP-PAR 2003 2004"
  R8496500  "REGION OF RESIDENCE 2004"
  T0000901  "DATE OF INTERVIEW - MONTH 2006"
  T0321700  "NUM OF WKS WRKD SP-PAR 2005 2006"
  T0988300  "REGION OF RESIDENCE 2006"
  T1200701  "DATE OF INTERVIEW - MONTH 2008"
  T1471300  "NUM OF WKS WRKD SP-PAR 2007 2008"
  T2210300  "REGION OF RESIDENCE 2008"
  T2260601  "DATE OF INTERVIEW - MONTH 2010"
  T2520200  "NUM OF WKS WRKD SP-PAR 2009 2010"
  T3108200  "REGION OF RESIDENCE 2010"
  T3195601  "DATE OF INTERVIEW - MONTH 2012"
  T3506500  "NUM OF WKS WRKD SP-PAR 2011 2012"
  T4112700  "REGION OF RESIDENCE 2012"
  T4181101  "DATE OF INTERVIEW - MONTH 2014"
  T4478200  "NUM OF WKS WRKD SP-PAR PCY 2014"
  T5023100  "REGION OF RESIDENCE 2014"
  T5150001  "DATE OF INTERVIEW - MONTH 2016"
  T5424100  "NUM OF WKS WRKD SP-PAR PCY 2016"
  T5771000  "REGION OF RESIDENCE 2016"
  T7720001  "DATE OF INTERVIEW - MONTH 2018"
  T7979900  "NUM OF WKS WRKD SP-PAR PCY 2018"
  T8219100  "REGION OF RESIDENCE 2018"
  T8330001  "DATE OF INTERVIEW - MONTH 2020"
  T8584600  "NUM OF WKS WRKD SP-PAR PCY 2020"
  T8788300  "REGION OF RESIDENCE 2020"
.

* Recode continuous values. 
* recode 
 R0172500 
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
 R0226100 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R0329200 
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
 R0413700 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R0530700 
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
 R0659600 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R0809900 
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
 R0902900 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R1045700 
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
 R1202700 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R1427500 
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
 R1602000 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R1794600 
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
 R1902000 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R2156200 
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
 R2302000 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R2365700 
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
 R2503100 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R2742500 
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
 R2903100 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R2986100 
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
 R3104500 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R3302500 
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
 R3504500 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R3573400 
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
 R3704500 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R3917600 
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
 R4100200 
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
 R4123200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 9999999 eq 53)
    / 
 R4519200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 R5218200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 R5817700 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 R6749700 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 R7396900 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 R8090200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T0321700 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T1471300 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T2520200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T3506500 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T4478200 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T5424100 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T7979900 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
    / 
 T8584600 
    (0 thru 0 eq 0)
    (1 thru 13 eq 1)
    (14 thru 26 eq 14)
    (27 thru 39 eq 27)
    (40 thru 48 eq 40)
    (49 thru 51 eq 49)
    (52 thru 52 eq 52)
    (53 thru 99999999 eq 53)
.

* value labels
 R0172500
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
 R0173600
    1 "CROSS MALE WHITE"
    2 "CROSS MALE WH. POOR"
    3 "CROSS MALE BLACK"
    4 "CROSS MALE HISPANIC"
    5 "CROSS FEMALE WHITE"
    6 "CROSS FEMALE WH POOR"
    7 "CROSS FEMALE BLACK"
    8 "CROSS FEMALE HISPANIC"
    9 "SUP MALE WH POOR"
    10 "SUP MALE BLACK"
    11 "SUP MALE HISPANIC"
    12 "SUP FEM WH POOR"
    13 "SUP FEMALE BLACK"
    14 "SUP FEMALE HISPANIC"
    15 "MIL MALE WHITE"
    16 "MIL MALE BLACK"
    17 "MIL MALE HISPANIC"
    18 "MIL FEMALE WHITE"
    19 "MIL FEMALE BLACK"
    20 "MIL FEMALE HISPANIC"
    /
 R0214700
    1 "HISPANIC"
    2 "BLACK"
    3 "NON-BLACK, NON-HISPANIC"
    /
 R0214800
    1 "MALE"
    2 "FEMALE"
    /
 R0216400
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R0226100
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R0329200
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
 R0405700
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R0413700
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R0530700
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
 R0602810
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R0659600
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R0809900
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
 R0897910
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R0902900
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R1045700
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
 R1144800
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R1202700
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R1427500
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
 R1520000
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R1602000
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R1794600
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
 R1890700
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R1902000
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R2156200
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
 R2257800
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R2302000
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R2365700
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
 R2445200
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R2503100
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R2742500
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
 R2870800
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R2903100
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R2986100
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
 R3074500
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R3104500
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R3302500
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
 R3401200
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R3504500
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R3573400
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
 R3656600
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R3704500
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R3917600
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
 R4007100
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R4100200
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
 R4123200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 9999999: > 52"
    /
 R4418200
    1 "NORTHEAST"
    2 "NORTH CENTRAL"
    3 "SOUTH"
    4 "WEST"
    /
 R4500201
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R4519200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R5081200
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 R5166500
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 R5200201
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R5218200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R5817700
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R6435301
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R6479100
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 R6749700
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R6963301
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R7006800
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 R7396900
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R7656301
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R7704100
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 R7800501
    0 "0: Month not reported"
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 R8090200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 R8496500
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 T0000901
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T0321700
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T0988300
    1 "1: 1  NORTHEAST"
    2 "2: 2  NORTH CENTRAL"
    3 "3: 3  SOUTH"
    4 "4: 4  WEST"
    /
 T1200701
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T1471300
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T2210300
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T2260601
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T2520200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T3108200
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T3195601
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T3506500
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T4112700
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T4181101
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T4478200
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T5023100
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T5150001
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T5424100
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T5771000
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T7720001
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T7979900
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T8219100
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
 T8330001
    1 "1: January"
    2 "2: February"
    3 "3: March"
    4 "4: April"
    5 "5: May"
    6 "6: June"
    7 "7: July"
    8 "8: August"
    9 "9: September"
    10 "10: October"
    11 "11: November"
    12 "12: December"
    /
 T8584600
    0 "0"
    1 "1 TO 13"
    14 "14 TO 26"
    27 "27 TO 39"
    40 "40 TO 48"
    49 "49 TO 51"
    52 "52"
    53 "53 TO 99999999: > 52"
    /
 T8788300
    1 "1: NORTHEAST"
    2 "2: NORTH CENTRAL"
    3 "3: SOUTH"
    4 "4: WEST"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0172500 = CURDATE_M_1979)   /* CURDATE~M */
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (R0216400 = REGION_1979) 
  (R0226100 = Q2_15A_1980)   /* Q2-15A */
  (R0329200 = CURDATE_M_1980)   /* CURDATE~M */
  (R0405700 = REGION_1980) 
  (R0413700 = Q2_15A_1981)   /* Q2-15A */
  (R0530700 = CURDATE_M_1981)   /* CURDATE~M */
  (R0602810 = REGION_1981) 
  (R0659600 = Q2_15A_1982)   /* Q2-15A */
  (R0809900 = CURDATE_M_1982)   /* CURDATE~M */
  (R0897910 = REGION_1982) 
  (R0902900 = Q2_15A_1983)   /* Q2-15A */
  (R1045700 = CURDATE_M_1983)   /* CURDATE~M */
  (R1144800 = REGION_1983) 
  (R1202700 = Q2_15A_1984)   /* Q2-15A */
  (R1427500 = CURDATE_M_1984)   /* CURDATE~M */
  (R1520000 = REGION_1984) 
  (R1602000 = Q2_15A_1985)   /* Q2-15A */
  (R1794600 = CURDATE_M_1985)   /* CURDATE~M */
  (R1890700 = REGION_1985) 
  (R1902000 = Q2_15A_1986)   /* Q2-15A */
  (R2156200 = CURDATE_M_1986)   /* CURDATE~M */
  (R2257800 = REGION_1986) 
  (R2302000 = Q2_15A_1987)   /* Q2-15A */
  (R2365700 = CURDATE_M_1987)   /* CURDATE~M */
  (R2445200 = REGION_1987) 
  (R2503100 = Q2_15A_1988)   /* Q2-15A */
  (R2742500 = CURDATE_M_1988)   /* CURDATE~M */
  (R2870800 = REGION_1988) 
  (R2903100 = Q2_15A_1989)   /* Q2-15A */
  (R2986100 = CURDATE_M_1989)   /* CURDATE~M */
  (R3074500 = REGION_1989) 
  (R3104500 = Q2_15A_1990)   /* Q2-15A */
  (R3302500 = CURDATE_M_1990)   /* CURDATE~M */
  (R3401200 = REGION_1990) 
  (R3504500 = Q2_15A_1991)   /* Q2-15A */
  (R3573400 = CURDATE_M_1991)   /* CURDATE~M */
  (R3656600 = REGION_1991) 
  (R3704500 = Q2_15A_1992)   /* Q2-15A */
  (R3917600 = CURDATE_M_1992)   /* CURDATE~M */
  (R4007100 = REGION_1992) 
  (R4100200 = CURDATE_M_1993)   /* CURDATE~M */
  (R4123200 = Q2_15A_1993)   /* Q2-15A */
  (R4418200 = REGION_1993) 
  (R4500201 = CURDATE_M_1994)   /* CURDATE~M */
  (R4519200 = Q2_15A_1994)   /* Q2-15A */
  (R5081200 = REGION_1994) 
  (R5166500 = REGION_1996) 
  (R5200201 = CURDATE_M_1996)   /* CURDATE~M */
  (R5218200 = Q2_15A_1996)   /* Q2-15A */
  (R5817700 = Q2_15A_1998)   /* Q2-15A */
  (R6435301 = CURDATE_M_1998)   /* CURDATE~M */
  (R6479100 = REGION_1998) 
  (R6749700 = Q2_15A_2000)   /* Q2-15A */
  (R6963301 = CURDATE_M_2000)   /* CURDATE~M */
  (R7006800 = REGION_2000) 
  (R7396900 = Q2_15A_2002)   /* Q2-15A */
  (R7656301 = CURDATE_M_2002)   /* CURDATE~M */
  (R7704100 = REGION_2002) 
  (R7800501 = CURDATE_M_2004)   /* CURDATE~M */
  (R8090200 = Q2_15A_2004)   /* Q2-15A */
  (R8496500 = REGION_2004) 
  (T0000901 = CURDATE_M_2006)   /* CURDATE~M */
  (T0321700 = Q2_15A_2006)   /* Q2-15A */
  (T0988300 = REGION_2006) 
  (T1200701 = CURDATE_M_2008)   /* CURDATE~M */
  (T1471300 = Q2_15A_2008)   /* Q2-15A */
  (T2210300 = REGION_2008) 
  (T2260601 = CURDATE_M_2010)   /* CURDATE~M */
  (T2520200 = Q2_15A_2010)   /* Q2-15A */
  (T3108200 = REGION_2010) 
  (T3195601 = CURDATE_M_2012)   /* CURDATE~M */
  (T3506500 = Q2_15A_2012)   /* Q2-15A */
  (T4112700 = REGION_2012) 
  (T4181101 = CURDATE_M_2014)   /* CURDATE~M */
  (T4478200 = Q2_15A_2014)   /* Q2-15A */
  (T5023100 = REGION_2014) 
  (T5150001 = CURDATE_M_2016)   /* CURDATE~M */
  (T5424100 = Q2_15A_2016)   /* Q2-15A */
  (T5771000 = REGION_2016) 
  (T7720001 = CURDATE_M_2018)   /* CURDATE~M */
  (T7979900 = Q2_15A_2018)   /* Q2-15A */
  (T8219100 = REGION_2018) 
  (T8330001 = CURDATE_M_2020)   /* CURDATE~M */
  (T8584600 = Q2_15A_2020)   /* Q2-15A */
  (T8788300 = REGION_2020) 
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0172500, 
  R0173600, 
  R0214700, 
  R0214800, 
  R0216400, 
  R0226100, 
  R0329200, 
  R0405700, 
  R0413700, 
  R0530700, 
  R0602810, 
  R0659600, 
  R0809900, 
  R0897910, 
  R0902900, 
  R1045700, 
  R1144800, 
  R1202700, 
  R1427500, 
  R1520000, 
  R1602000, 
  R1794600, 
  R1890700, 
  R1902000, 
  R2156200, 
  R2257800, 
  R2302000, 
  R2365700, 
  R2445200, 
  R2503100, 
  R2742500, 
  R2870800, 
  R2903100, 
  R2986100, 
  R3074500, 
  R3104500, 
  R3302500, 
  R3401200, 
  R3504500, 
  R3573400, 
  R3656600, 
  R3704500, 
  R3917600, 
  R4007100, 
  R4100200, 
  R4123200, 
  R4418200, 
  R4500201, 
  R4519200, 
  R5081200, 
  R5166500, 
  R5200201, 
  R5218200, 
  R5817700, 
  R6435301, 
  R6479100, 
  R6749700, 
  R6963301, 
  R7006800, 
  R7396900, 
  R7656301, 
  R7704100, 
  R7800501, 
  R8090200, 
  R8496500, 
  T0000901, 
  T0321700, 
  T0988300, 
  T1200701, 
  T1471300, 
  T2210300, 
  T2260601, 
  T2520200, 
  T3108200, 
  T3195601, 
  T3506500, 
  T4112700, 
  T4181101, 
  T4478200, 
  T5023100, 
  T5150001, 
  T5424100, 
  T5771000, 
  T7720001, 
  T7979900, 
  T8219100, 
  T8330001, 
  T8584600, 
  T8788300.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  CURDATE_M_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  REGION_1979, 
  Q2_15A_1980, 
  CURDATE_M_1980, 
  REGION_1980, 
  Q2_15A_1981, 
  CURDATE_M_1981, 
  REGION_1981, 
  Q2_15A_1982, 
  CURDATE_M_1982, 
  REGION_1982, 
  Q2_15A_1983, 
  CURDATE_M_1983, 
  REGION_1983, 
  Q2_15A_1984, 
  CURDATE_M_1984, 
  REGION_1984, 
  Q2_15A_1985, 
  CURDATE_M_1985, 
  REGION_1985, 
  Q2_15A_1986, 
  CURDATE_M_1986, 
  REGION_1986, 
  Q2_15A_1987, 
  CURDATE_M_1987, 
  REGION_1987, 
  Q2_15A_1988, 
  CURDATE_M_1988, 
  REGION_1988, 
  Q2_15A_1989, 
  CURDATE_M_1989, 
  REGION_1989, 
  Q2_15A_1990, 
  CURDATE_M_1990, 
  REGION_1990, 
  Q2_15A_1991, 
  CURDATE_M_1991, 
  REGION_1991, 
  Q2_15A_1992, 
  CURDATE_M_1992, 
  REGION_1992, 
  CURDATE_M_1993, 
  Q2_15A_1993, 
  REGION_1993, 
  CURDATE_M_1994, 
  Q2_15A_1994, 
  REGION_1994, 
  REGION_1996, 
  CURDATE_M_1996, 
  Q2_15A_1996, 
  Q2_15A_1998, 
  CURDATE_M_1998, 
  REGION_1998, 
  Q2_15A_2000, 
  CURDATE_M_2000, 
  REGION_2000, 
  Q2_15A_2002, 
  CURDATE_M_2002, 
  REGION_2002, 
  CURDATE_M_2004, 
  Q2_15A_2004, 
  REGION_2004, 
  CURDATE_M_2006, 
  Q2_15A_2006, 
  REGION_2006, 
  CURDATE_M_2008, 
  Q2_15A_2008, 
  REGION_2008, 
  CURDATE_M_2010, 
  Q2_15A_2010, 
  REGION_2010, 
  CURDATE_M_2012, 
  Q2_15A_2012, 
  REGION_2012, 
  CURDATE_M_2014, 
  Q2_15A_2014, 
  REGION_2014, 
  CURDATE_M_2016, 
  Q2_15A_2016, 
  REGION_2016, 
  CURDATE_M_2018, 
  Q2_15A_2018, 
  REGION_2018, 
  CURDATE_M_2020, 
  Q2_15A_2020, 
  REGION_2020.
