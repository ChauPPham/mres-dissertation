file handle pcdat/name='NLSY79_supplement1.dat' /lrecl=340.
data list file pcdat free /
  R0000100 (F5)
  R0000500 (F2)
  R0000600 (F2)
  R0001900 (F2)
  R0173600 (F2)
  R0214700 (F2)
  R0214800 (F2)
  R0214901 (F2)
  R0217500 (F2)
  R0217502 (F2)
  R0405210 (F2)
  R0405600 (F2)
  R0406301 (F2)
  R0618600 (F2)
  R0618801 (F2)
  R0647103 (F2)
  R0780300 (F2)
  R0896710 (F2)
  R0898400 (F2)
  R0898501 (F2)
  R1021900 (F2)
  R1144410 (F2)
  R1144701 (F2)
  R1144900 (F2)
  R1391000 (F2)
  R1395700 (F2)
  R1404100 (F2)
  R1404700 (F2)
  R1405300 (F2)
  R1519610 (F2)
  R1519901 (F2)
  R1520100 (F2)
  R1774600 (F2)
  R1890210 (F2)
  R1890601 (F2)
  R1890800 (F2)
  R2257410 (F2)
  R2257701 (F2)
  R2257900 (F2)
  R2444610 (F2)
  R2445101 (F2)
  R2445300 (F2)
  R2716600 (F2)
  R2721100 (F2)
  R2721200 (F2)
  R2870110 (F2)
  R2870700 (F2)
  R2870900 (F2)
  R2968200 (F2)
  R3073910 (F2)
  R3074400 (F2)
  R3074600 (F2)
  R3400600 (F2)
  R3401100 (F2)
  R3401300 (F2)
  R3656000 (F2)
  R3656500 (F2)
  R3656700 (F2)
  R3915300 (F2)
  R3915400 (F2)
  R3915800 (F2)
  R4006500 (F2)
  R4007000 (F2)
  R4007200 (F2)
  R4417600 (F2)
  R4418100 (F2)
  R4418300 (F2)
  R4979200 (F2)
  R5053400 (F2)
  R5053500 (F2)
  R5053900 (F2)
  R5080600 (F2)
  R5081100 (F2)
  R5081300 (F2)
  R5165900 (F2)
  R5166400 (F2)
  R5166600 (F2)
  R6430700 (F2)
  R6430800 (F2)
  R6431200 (F2)
  R6478600 (F2)
  R6479000 (F2)
  R6479200 (F2)
  R7006400 (F2)
  R7006900 (F2)
  R7606400 (F2)
  R7703600 (F2)
  R7704200 (F2)
  R8496000 (F2)
  R8496600 (F2)
  R9909800 (F4)
  T0911100 (F2)
  T0987600 (F2)
  T0988200 (F2)
  T0988400 (F2)
  T2075400 (F2)
  T2209900 (F2)
  T2210400 (F2)
  T3044000 (F2)
  T3107700 (F2)
  T3108300 (F2)
  T3976200 (F2)
  T4112200 (F2)
  T4112800 (F2)
  T4914500 (F2)
  T5022500 (F2)
  T5023200 (F2)
  T5770700 (F2)
  T5771100 (F2)
  T8218600 (F2)
  T8219200 (F2)
.
* The following code works with current versions of SPSS.
missing values all (-5 thru -1).
* older versions of SPSS may require this:
* recode all (-5,-3,-2,-1=-4).
* missing values all (-4).
variable labels
  R0000100  "ID# (1-12686) 79"
  R0000500  "DATE OF BIRTH - YR 79"
  R0000600  "AGE OF R 79"
  R0001900  "WITH WHOM DID R LIVE @ AGE 14 79"
  R0173600  "SAMPLE ID  79 INT"
  R0214700  "RACL/ETHNIC COHORT /SCRNR 79"
  R0214800  "SEX OF R 79"
  R0214901  "EMPLOYMENT STATUS RECODE (COLLAPSED) 79"
  R0217500  "MARITAL STATUS (COLLAPSED) 79"
  R0217502  "FAMILY SIZE 79"
  R0405210  "FAMILY SIZE 80"
  R0405600  "MARITAL STATUS (COLLAPSED) 80"
  R0406301  "EMPLOYMENT STATUS RECODE (COLLAPSED) 80"
  R0618600  "MARITAL STATUS (COLLAPSED) 81"
  R0618801  "EMPLOYMENT STATUS RECODE (COLLAPSED) 81"
  R0647103  "FAMILY SIZE 81"
  R0780300  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 82"
  R0896710  "FAMILY SIZE 82"
  R0898400  "MARITAL STATUS (COLLAPSED) 82"
  R0898501  "EMPLOYMENT STATUS RECODE (COLLAPSED) 82"
  R1021900  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 83"
  R1144410  "FAMILY SIZE 83"
  R1144701  "EMPLOYMENT STATUS RECODE (COLLAPSED) 83"
  R1144900  "MARITAL STATUS (COLLAPSED) 83"
  R1391000  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 84"
  R1395700  "DRUG #TMS USE MARJ/HASH PAST 30 DAYS 84"
  R1404100  "DRUG #TMS USE COCAINE 84"
  R1404700  "DRUG #TMS USE OTHER NARCOTICS 84"
  R1405300  "DRUG #TMS USE OTHER DRUGS 84"
  R1519610  "FAMILY SIZE 84"
  R1519901  "EMPLOYMENT STATUS RECODE (COLLAPSED) 84"
  R1520100  "MARITAL STATUS (COLLAPSED) 84"
  R1774600  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 85"
  R1890210  "FAMILY SIZE 85"
  R1890601  "EMPLOYMENT STATUS RECODE (COLLAPSED) 85"
  R1890800  "MARITAL STATUS (COLLAPSED) 85"
  R2257410  "FAMILY SIZE 86"
  R2257701  "EMPLOYMENT STATUS RECODE (COLLAPSED) 86"
  R2257900  "MARITAL STATUS (COLLAPSED) 86"
  R2444610  "FAMILY SIZE 87"
  R2445101  "EMPLOYMENT STATUS RECODE (COLLAPSED) 87"
  R2445300  "MARITAL STATUS (COLLAPSED) 87"
  R2716600  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 88"
  R2721100  "DRUG #TMS USE MARJ/HASH PAST 30 DAYS 88"
  R2721200  "DRUG #TMS USE OCCASIONS USED COCAINE 88"
  R2870110  "FAMILY SIZE 88"
  R2870700  "EMPLOYMENT STATUS RECODE (COLLAPSED) 88"
  R2870900  "MARITAL STATUS (COLLAPSED) 88"
  R2968200  "ALCHL-HAD ANY ALCHL BVRGS LAST MO 89"
  R3073910  "FAMILY SIZE 89"
  R3074400  "EMPLOYMENT STATUS RECODE (COLLAPSED) 89"
  R3074600  "MARITAL STATUS (COLLAPSED) 89"
  R3400600  "FAMILY SIZE 90"
  R3401100  "EMPLOYMENT STATUS RECODE (COLLAPSED) 90"
  R3401300  "MARITAL STATUS (COLLAPSED) 90"
  R3656000  "FAMILY SIZE 91"
  R3656500  "EMPLOYMENT STATUS RECODE (COLLAPSED) 91"
  R3656700  "MARITAL STATUS (COLLAPSED) 91"
  R3915300  "DRUG #TMS USE MARJ PAST 30 DAYS 92"
  R3915400  "DRUG #TMS USE OCCASIONS USED COCAINE 92"
  R3915800  "DRUG #TMS USE COCAINE PAST 30 DAYS 92"
  R4006500  "FAMILY SIZE 92"
  R4007000  "EMPLOYMENT STATUS RECODE (COLLAPSED) 92"
  R4007200  "MARITAL STATUS (COLLAPSED) 92"
  R4417600  "FAMILY SIZE 93"
  R4418100  "EMP STATUS RECODE (COLLAPSED) 93"
  R4418300  "MARITAL STATUS (COLLAPSED) 93"
  R4979200  "HAD ALCHOLC BEVERAGE IN LAST 30 94"
  R5053400  "NMBR TIMES POT PAST 30 DAYS 94"
  R5053500  "HOW MANY OCCASIONS USED COCAINE 94"
  R5053900  "HOW MANY OCCASIONS USED CRACK 94"
  R5080600  "FAMILY SIZE 94"
  R5081100  "EMP STATUS RECODE (COLLAPSED) 94"
  R5081300  "MARITAL STATUS (COLLAPSED) 94"
  R5165900  "FAMILY SIZE 96"
  R5166400  "EMP STATUS RECODE (COLLAPSED) 96"
  R5166600  "MARITAL STATUS (COLLAPSED) 96"
  R6430700  "NMBR TIMES POT PAST 30 DAYS 1998"
  R6430800  "HOW MANY OCCASIONS USED COCAINE 1998"
  R6431200  "HOW MANY OCCASIONS USED CRACK 1998"
  R6478600  "FAMILY SIZE 1998"
  R6479000  "EMP STATUS RECODE (COLLAPSED) 1998"
  R6479200  "MARITAL STATUS (COLLAPSED) 1998"
  R7006400  "FAMILY SIZE 2000"
  R7006900  "MARITAL STATUS (COLLAPSED) 2000"
  R7606400  "HAD ALCOHOLC BEVERAGE LAST 30 DAYS 2002"
  R7703600  "FAMILY SIZE 2002"
  R7704200  "MARITAL STATUS (COLLAPSED) 2002"
  R8496000  "FAMILY SIZE 2004"
  R8496600  "MARITAL STATUS (COLLAPSED) 2004"
  R9909800  "WAS 1ST MARRIAGE BEFORE 1ST BIRTH? XRND"
  T0911100  "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2006"
  T0987600  "FAMILY SIZE 2006"
  T0988200  "EMP STATUS RECODE (COLLAPSED) 2006"
  T0988400  "MARITAL STATUS (COLLAPSED) 2006"
  T2075400  "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2008"
  T2209900  "FAMILY SIZE 2008"
  T2210400  "MARITAL STATUS (COLLAPSED) 2008"
  T3044000  "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2010"
  T3107700  "FAMILY SIZE 2010"
  T3108300  "MARITAL STATUS (COLLAPSED) 2010"
  T3976200  "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2012"
  T4112200  "FAMILY SIZE 2012"
  T4112800  "MARITAL STATUS (COLLAPSED) 2012"
  T4914500  "R CONSUMED ALCOHOL IN LAST 30 DAYS? 2014"
  T5022500  "FAMILY SIZE 2014"
  T5023200  "MARITAL STATUS (COLLAPSED) 2014"
  T5770700  "FAMILY SIZE 2016"
  T5771100  "MARITAL STATUS (COLLAPSED) 2016"
  T8218600  "FAMILY SIZE 2018"
  T8219200  "MARITAL STATUS (COLLAPSED) 2018"
.

* Recode continuous values. 
* recode 
 R0000500 
    (0 thru 56 eq 0)
    (57 thru 57 eq 57)
    (58 thru 58 eq 58)
    (59 thru 59 eq 59)
    (60 thru 60 eq 60)
    (61 thru 61 eq 61)
    (62 thru 62 eq 62)
    (63 thru 63 eq 63)
    (64 thru 64 eq 64)
    (65 thru 65 eq 65)
    (66 thru 66 eq 66)
    (67 thru 67 eq 67)
    (68 thru 68 eq 68)
    (69 thru 69 eq 69)
    (70 thru 70 eq 70)
    (71 thru 71 eq 71)
    (72 thru 72 eq 72)
    (73 thru 99999 eq 73)
    / 
 R0000600 
    (0 thru 13 eq 0)
    (14 thru 14 eq 14)
    (15 thru 15 eq 15)
    (16 thru 16 eq 16)
    (17 thru 17 eq 17)
    (18 thru 18 eq 18)
    (19 thru 19 eq 19)
    (20 thru 20 eq 20)
    (21 thru 21 eq 21)
    (22 thru 22 eq 22)
    (23 thru 23 eq 23)
    (24 thru 24 eq 24)
    (25 thru 25 eq 25)
    (26 thru 26 eq 26)
    (27 thru 27 eq 27)
    (28 thru 28 eq 28)
    (29 thru 29 eq 29)
    (30 thru 99999 eq 30)
    / 
 R0217502 
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
 R0405210 
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
 R0647103 
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
 R0896710 
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
 R1144410 
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
 R1519610 
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
 R1890210 
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
 R2257410 
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
 R2444610 
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
 R2870110 
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
 R3073910 
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
 R3400600 
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
 R3656000 
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
 R4006500 
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
 R4417600 
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
 R5080600 
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
    (10 thru 999 eq 10)
    / 
 R5165900 
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
    (10 thru 999 eq 10)
    / 
 R6478600 
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
    (10 thru 999 eq 10)
    / 
 R7006400 
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
    (10 thru 999 eq 10)
    / 
 R7703600 
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
    (10 thru 999 eq 10)
    / 
 R8496000 
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
    (10 thru 999 eq 10)
    / 
 T0987600 
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
    (10 thru 999 eq 10)
    / 
 T2209900 
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
    (10 thru 999 eq 10)
    / 
 T3107700 
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
    (10 thru 999 eq 10)
    / 
 T4112200 
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
    (10 thru 999 eq 10)
    / 
 T5022500 
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
    (10 thru 999 eq 10)
    / 
 T5770700 
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
    (10 thru 999 eq 10)
    / 
 T8218600 
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
    (10 thru 999 eq 10)
.

* value labels
 R0000500
    0 "0 TO 56: < 57"
    57 "57"
    58 "58"
    59 "59"
    60 "60"
    61 "61"
    62 "62"
    63 "63"
    64 "64"
    65 "65"
    66 "66"
    67 "67"
    68 "68"
    69 "69"
    70 "70"
    71 "71"
    72 "72"
    73 "73 TO 99999: 73+"
    /
 R0000600
    0 "0 TO 13: < 14"
    14 "14"
    15 "15"
    16 "16"
    17 "17"
    18 "18"
    19 "19"
    20 "20"
    21 "21"
    22 "22"
    23 "23"
    24 "24"
    25 "25"
    26 "26"
    27 "27"
    28 "28"
    29 "29"
    30 "30 TO 99999: 30+"
    /
 R0001900
    11 "FATHER-MOTHER"
    12 "FATHER-STEPMOTHER"
    13 "FATHER-OTHER WOMAN RELATIVE"
    14 "FATHER-OTHER WOMAN"
    15 "FATHER-NO WOMAN"
    19 "FATHER-MISSING WOMAN"
    21 "STEPFATHER-MOTHER"
    22 "STEPFATHER-STEPMOTHER"
    23 "STEPFATHER-WOMAN RELATIVE"
    24 "STEPFATHER-OTHER WOMAN"
    25 "STEPFATHER-NO WOMAN"
    31 "MAN RELATIVE-MOTHER"
    32 "MAN RELATIVE-STEPMOTHER"
    33 "MAN RELATIVE-WOMAN RELATIVE"
    34 "MAN RELATIVE-OTHER WOMAN"
    35 "MAN RELATIVE-NO WOMAN"
    41 "OTHER MAN-MOTHER"
    42 "OTHER MAN-STEPMOTHER"
    43 "OTHER MAN-WOMAN RELATIVE"
    44 "OTHER MAN-OTHER WOMAN"
    45 "OTHER MAN-NO WOMAN"
    51 "NO MAN-MOTHER"
    52 "NO MAN-STEPMOTHER"
    53 "NO MAN-WOMAN RELATIVE"
    54 "NO MAN-OTHER WOMAN"
    55 "NO MAN-NO WOMAN"
    80 "OTHER ARRANGEMENT"
    90 "ON MY OWN"
    91 "MISSING MAN-MOTHER"
    93 "MISSING MAN-WOMAN RELATIVE"
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
 R0214901
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R0217500
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R0217502
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
 R0405210
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
 R0405600
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R0406301
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R0618600
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R0618801
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R0647103
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
 R0780300
    0 "NO"
    1 "YES"
    /
 R0896710
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
 R0898400
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R0898501
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R1021900
    0 "NO"
    1 "YES"
    /
 R1144410
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
 R1144701
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R1144900
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R1391000
    0 "NO"
    1 "YES"
    /
 R1395700
    0 "NONE"
    1 "1-2 OCCASIONS"
    2 "3-5 OCCASIONS"
    3 "6-9 OCCASIONS"
    4 "10-19 OCCASIONS"
    5 "20-39 OCCASIONS"
    6 "40 OR MORE OCCASIONS"
    /
 R1404100
    0 "NEVER USED"
    1 "1-9 OCCASIONS"
    2 "10-39 OCCASIONS"
    3 "40-99 OCCASIONS"
    4 "100-999 OCCASIONS"
    5 "1,000 OR MORE OCCASIONS"
    /
 R1404700
    0 "NEVER USED"
    1 "1-9 OCCASIONS"
    2 "10-39 OCCASIONS"
    3 "40-99 OCCASIONS"
    4 "100-999 OCCASIONS"
    5 "1,000 OR MORE OCCASIONS"
    /
 R1405300
    0 "NEVER USED"
    1 "1-9 OCCASIONS"
    2 "10-39 OCCASIONS"
    3 "40-99 OCCASIONS"
    4 "100-999 OCCASIONS"
    5 "1,000 OR MORE OCCASIONS"
    /
 R1519610
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
 R1519901
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R1520100
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R1774600
    0 "NO"
    1 "YES"
    /
 R1890210
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
 R1890601
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R1890800
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R2257410
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
 R2257701
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R2257900
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R2444610
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
 R2445101
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R2445300
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R2716600
    0 "NO"
    1 "YES"
    /
 R2721100
    0 "NONE"
    1 "1-2 OCCASIONS"
    2 "3-5 OCCASIONS"
    3 "6-9 OCCASIONS"
    4 "10-19 OCCASIONS"
    5 "20-39 OCCASIONS"
    6 "40 OR MORE OCCASIONS"
    /
 R2721200
    0 "NEVER"
    1 "1 TO 2 OCCASIONS"
    2 "3 TO 9 OCCASIONS"
    3 "10 TO 39 OCCASIONS"
    4 "40 TO 99 OCCASIONS"
    5 "100 OR MORE OCCASIONS"
    /
 R2870110
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
 R2870700
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R2870900
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R2968200
    0 "NO"
    1 "YES"
    /
 R3073910
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
 R3074400
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R3074600
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R3400600
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
 R3401100
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R3401300
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R3656000
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
 R3656500
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R3656700
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R3915300
    1 "LESS OFTEN THAN ONCE PER WEEK"
    2 "1-2 DAYS PER WEEK"
    3 "3-4 DAYS PER WEEK"
    4 "5-6 DAYS PER WEEK"
    5 "EVERY DAY"
    /
 R3915400
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R3915800
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R4006500
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
 R4007000
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R4007200
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R4417600
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
 R4418100
    1 "EMPLOYED"
    2 "UNEMPLOYED"
    3 "OUT OF LABOR FORCE"
    4 "IN ACTIVE FORCES"
    /
 R4418300
    1 "NEVER MARRIED"
    2 "MARRIED, SPOUSE PRESENT"
    3 "OTHER"
    /
 R4979200
    0 "NO"
    1 "YES"
    /
 R5053400
    1 "LESS OFTEN THAN ONCE A WEEK"
    2 "1-2 DAYS PER WEEK"
    3 "3-4 DAYS PER WEEK"
    4 "5-6 DAYS PER WEEK"
    5 "EVERY DAY"
    /
 R5053500
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R5053900
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R5080600
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
    10 "10 TO 999: 10+"
    /
 R5081100
    1 "1: 1  EMPLOYED"
    2 "2: 2  UNEMPLOYED"
    3 "3: 3  OUT OF LABOR FORCE"
    4 "4: 4  IN ACTIVE FORCES"
    /
 R5081300
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R5165900
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
    10 "10 TO 999: 10+"
    /
 R5166400
    1 "1: EMPLOYED"
    2 "2: UNEMPLOYED"
    3 "3: OUT OF LABOR FORCE"
    4 "4: IN ACTIVE FORCES"
    /
 R5166600
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 R6430700
    1 "LESS OFTEN THAN ONCE A WEEK"
    2 "1-2 DAYS PER WEEK"
    3 "3-4 DAYS PER WEEK"
    4 "5-6 DAYS PER WEEK"
    5 "EVERY DAY"
    /
 R6430800
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R6431200
    0 "NEVER"
    1 "1 OR 2 TIMES"
    2 "3 TO 5 TIMES"
    3 "6 TO 10 TIMES"
    4 "11 TO 49 TIMES"
    5 "50 TO 99 TIMES"
    6 "100 OR MORE TIMES"
    /
 R6478600
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
    10 "10 TO 999: 10+"
    /
 R6479000
    1 "1: 1  EMPLOYED"
    2 "2: 2  UNEMPLOYED"
    3 "3: 3  OUT OF LABOR FORCE"
    4 "4: 4  IN ACTIVE FORCES"
    /
 R6479200
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R7006400
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
    10 "10 TO 999: 10+"
    /
 R7006900
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R7606400
    0 "No"
    1 "Yes"
    /
 R7703600
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
    10 "10 TO 999: 10+"
    /
 R7704200
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R8496000
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
    10 "10 TO 999: 10+"
    /
 R8496600
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 R9909800
    -999 "-999: MISSING DATE"
    -998 "-998: NO CHILDREN"
    -997 "-997: NEVER MARRIED"
    0 "0: 1ST MARRIAGE AFTER 1ST BIRTH"
    1 "1: 1ST MARRIAGE BEFORE 1ST BIRTH"
    /
 T0911100
    0 "No"
    1 "Yes"
    /
 T0987600
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
    10 "10 TO 999: 10+"
    /
 T0988200
    1 "1: EMPLOYED"
    2 "2: UNEMPLOYED"
    3 "3: OUT OF LABOR FORCE"
    4 "4: IN ACTIVE FORCES"
    /
 T0988400
    1 "1: 1  NEVER MARRIED"
    2 "2: 2  MARRIED, SPOUSE PRESENT"
    3 "3: 3  OTHER"
    /
 T2075400
    0 "No"
    1 "Yes"
    /
 T2209900
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
    10 "10 TO 999: 10+"
    /
 T2210400
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T3044000
    0 "No"
    1 "Yes"
    /
 T3107700
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
    10 "10 TO 999: 10+"
    /
 T3108300
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T3976200
    0 "No"
    1 "Yes"
    /
 T4112200
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
    10 "10 TO 999: 10+"
    /
 T4112800
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T4914500
    0 "No"
    1 "Yes"
    /
 T5022500
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
    10 "10 TO 999: 10+"
    /
 T5023200
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T5770700
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
    10 "10 TO 999: 10+"
    /
 T5771100
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
 T8218600
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
    10 "10 TO 999: 10+"
    /
 T8219200
    1 "1: NEVER MARRIED"
    2 "2: MARRIED, SPOUSE PRESENT"
    3 "3: OTHER"
    /
.
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME VARIABLES statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */  /* *start* */

* RENAME VARIABLES
  (R0000100 = CASEID_1979) 
  (R0000500 = Q1_3_A_Y_1979)   /* Q1-3_A~Y */
  (R0000600 = FAM_1B_1979)   /* FAM-1B */
  (R0001900 = FAM_7_1979)   /* FAM-7 */
  (R0173600 = SAMPLE_ID_1979) 
  (R0214700 = SAMPLE_RACE_78SCRN) 
  (R0214800 = SAMPLE_SEX_1979) 
  (R0214901 = ESR_COL_1979) 
  (R0217500 = MARSTAT_COL_1979)   /* MARSTAT-COL */
  (R0217502 = FAMSIZE_1979) 
  (R0405210 = FAMSIZE_1980) 
  (R0405600 = MARSTAT_COL_1980)   /* MARSTAT-COL */
  (R0406301 = ESR_COL_1980) 
  (R0618600 = MARSTAT_COL_1981)   /* MARSTAT-COL */
  (R0618801 = ESR_COL_1981) 
  (R0647103 = FAMSIZE_1981) 
  (R0780300 = Q12_3_1982)   /* Q12-3 */
  (R0896710 = FAMSIZE_1982) 
  (R0898400 = MARSTAT_COL_1982)   /* MARSTAT-COL */
  (R0898501 = ESR_COL_1982) 
  (R1021900 = Q12_3_1983)   /* Q12-3 */
  (R1144410 = FAMSIZE_1983) 
  (R1144701 = ESR_COL_1983) 
  (R1144900 = MARSTAT_COL_1983)   /* MARSTAT-COL */
  (R1391000 = Q12_3_1984)   /* Q12-3 */
  (R1395700 = DS_11_1984)   /* DS-11 */
  (R1404100 = DS_12_1984)   /* DS-12 */
  (R1404700 = DRUG_27_1984)   /* DRUG-27 */
  (R1405300 = DRUG_33_1984)   /* DRUG-33 */
  (R1519610 = FAMSIZE_1984) 
  (R1519901 = ESR_COL_1984) 
  (R1520100 = MARSTAT_COL_1984)   /* MARSTAT-COL */
  (R1774600 = Q12_3_1985)   /* Q12-3 */
  (R1890210 = FAMSIZE_1985) 
  (R1890601 = ESR_COL_1985) 
  (R1890800 = MARSTAT_COL_1985)   /* MARSTAT-COL */
  (R2257410 = FAMSIZE_1986) 
  (R2257701 = ESR_COL_1986) 
  (R2257900 = MARSTAT_COL_1986)   /* MARSTAT-COL */
  (R2444610 = FAMSIZE_1987) 
  (R2445101 = ESR_COL_1987) 
  (R2445300 = MARSTAT_COL_1987)   /* MARSTAT-COL */
  (R2716600 = Q12_3_1988)   /* Q12-3 */
  (R2721100 = DS_11_1988)   /* DS-11 */
  (R2721200 = DS_12_1988)   /* DS-12 */
  (R2870110 = FAMSIZE_1988) 
  (R2870700 = ESR_COL_1988) 
  (R2870900 = MARSTAT_COL_1988)   /* MARSTAT-COL */
  (R2968200 = Q12_3_1989)   /* Q12-3 */
  (R3073910 = FAMSIZE_1989) 
  (R3074400 = ESR_COL_1989) 
  (R3074600 = MARSTAT_COL_1989)   /* MARSTAT-COL */
  (R3400600 = FAMSIZE_1990) 
  (R3401100 = ESR_COL_1990) 
  (R3401300 = MARSTAT_COL_1990)   /* MARSTAT-COL */
  (R3656000 = FAMSIZE_1991) 
  (R3656500 = ESR_COL_1991) 
  (R3656700 = MARSTAT_COL_1991)   /* MARSTAT-COL */
  (R3915300 = DS_11_1992)   /* DS-11 */
  (R3915400 = DS_12_1992)   /* DS-12 */
  (R3915800 = DS_16_1992)   /* DS-16 */
  (R4006500 = FAMSIZE_1992) 
  (R4007000 = ESR_COL_1992) 
  (R4007200 = MARSTAT_COL_1992)   /* MARSTAT-COL */
  (R4417600 = FAMSIZE_1993) 
  (R4418100 = ESR_COL_1993) 
  (R4418300 = MARSTAT_COL_1993)   /* MARSTAT-COL */
  (R4979200 = Q12_3_1994)   /* Q12-3 */
  (R5053400 = DS_11_1994)   /* DS-11 */
  (R5053500 = DS_12_1994)   /* DS-12 */
  (R5053900 = DS_16_1994)   /* DS-16 */
  (R5080600 = FAMSIZE_1994) 
  (R5081100 = ESR_COL_1994) 
  (R5081300 = MARSTAT_COL_1994)   /* MARSTAT-COL */
  (R5165900 = FAMSIZE_1996) 
  (R5166400 = ESR_COL_1996) 
  (R5166600 = MARSTAT_COL_1996)   /* MARSTAT-COL */
  (R6430700 = DS_11_1998)   /* DS-11 */
  (R6430800 = DS_12_1998)   /* DS-12 */
  (R6431200 = DS_16_1998)   /* DS-16 */
  (R6478600 = FAMSIZE_1998) 
  (R6479000 = ESR_COL_1998) 
  (R6479200 = MARSTAT_COL_1998)   /* MARSTAT-COL */
  (R7006400 = FAMSIZE_2000) 
  (R7006900 = MARSTAT_COL_2000)   /* MARSTAT-COL */
  (R7606400 = Q12_3_2002)   /* Q12-3 */
  (R7703600 = FAMSIZE_2002) 
  (R7704200 = MARSTAT_COL_2002)   /* MARSTAT-COL */
  (R8496000 = FAMSIZE_2004) 
  (R8496600 = MARSTAT_COL_2004)   /* MARSTAT-COL */
  (R9909800 = FL1M1B_XRND) 
  (T0911100 = Q12_3_2006)   /* Q12-3 */
  (T0987600 = FAMSIZE_2006) 
  (T0988200 = ESR_COL_2006) 
  (T0988400 = MARSTAT_COL_2006)   /* MARSTAT-COL */
  (T2075400 = Q12_3_2008)   /* Q12-3 */
  (T2209900 = FAMSIZE_2008) 
  (T2210400 = MARSTAT_COL_2008)   /* MARSTAT-COL */
  (T3044000 = Q12_3_2010)   /* Q12-3 */
  (T3107700 = FAMSIZE_2010) 
  (T3108300 = MARSTAT_COL_2010)   /* MARSTAT-COL */
  (T3976200 = Q12_3_2012)   /* Q12-3 */
  (T4112200 = FAMSIZE_2012) 
  (T4112800 = MARSTAT_COL_2012)   /* MARSTAT-COL */
  (T4914500 = Q12_3_2014)   /* Q12-3 */
  (T5022500 = FAMSIZE_2014) 
  (T5023200 = MARSTAT_COL_2014)   /* MARSTAT-COL */
  (T5770700 = FAMSIZE_2016) 
  (T5771100 = MARSTAT_COL_2016)   /* MARSTAT-COL */
  (T8218600 = FAMSIZE_2018) 
  (T8219200 = MARSTAT_COL_2018)   /* MARSTAT-COL */
.
  /* *end* */

descriptives all.

*--- Tabulations using reference number variables.
*freq var=R0000100, 
  R0000500, 
  R0000600, 
  R0001900, 
  R0173600, 
  R0214700, 
  R0214800, 
  R0214901, 
  R0217500, 
  R0217502, 
  R0405210, 
  R0405600, 
  R0406301, 
  R0618600, 
  R0618801, 
  R0647103, 
  R0780300, 
  R0896710, 
  R0898400, 
  R0898501, 
  R1021900, 
  R1144410, 
  R1144701, 
  R1144900, 
  R1391000, 
  R1395700, 
  R1404100, 
  R1404700, 
  R1405300, 
  R1519610, 
  R1519901, 
  R1520100, 
  R1774600, 
  R1890210, 
  R1890601, 
  R1890800, 
  R2257410, 
  R2257701, 
  R2257900, 
  R2444610, 
  R2445101, 
  R2445300, 
  R2716600, 
  R2721100, 
  R2721200, 
  R2870110, 
  R2870700, 
  R2870900, 
  R2968200, 
  R3073910, 
  R3074400, 
  R3074600, 
  R3400600, 
  R3401100, 
  R3401300, 
  R3656000, 
  R3656500, 
  R3656700, 
  R3915300, 
  R3915400, 
  R3915800, 
  R4006500, 
  R4007000, 
  R4007200, 
  R4417600, 
  R4418100, 
  R4418300, 
  R4979200, 
  R5053400, 
  R5053500, 
  R5053900, 
  R5080600, 
  R5081100, 
  R5081300, 
  R5165900, 
  R5166400, 
  R5166600, 
  R6430700, 
  R6430800, 
  R6431200, 
  R6478600, 
  R6479000, 
  R6479200, 
  R7006400, 
  R7006900, 
  R7606400, 
  R7703600, 
  R7704200, 
  R8496000, 
  R8496600, 
  R9909800, 
  T0911100, 
  T0987600, 
  T0988200, 
  T0988400, 
  T2075400, 
  T2209900, 
  T2210400, 
  T3044000, 
  T3107700, 
  T3108300, 
  T3976200, 
  T4112200, 
  T4112800, 
  T4914500, 
  T5022500, 
  T5023200, 
  T5770700, 
  T5771100, 
  T8218600, 
  T8219200.

*--- Tabulations using qname variables.
*freq var=CASEID_1979, 
  Q1_3_A_Y_1979, 
  FAM_1B_1979, 
  FAM_7_1979, 
  SAMPLE_ID_1979, 
  SAMPLE_RACE_78SCRN, 
  SAMPLE_SEX_1979, 
  ESR_COL_1979, 
  MARSTAT_COL_1979, 
  FAMSIZE_1979, 
  FAMSIZE_1980, 
  MARSTAT_COL_1980, 
  ESR_COL_1980, 
  MARSTAT_COL_1981, 
  ESR_COL_1981, 
  FAMSIZE_1981, 
  Q12_3_1982, 
  FAMSIZE_1982, 
  MARSTAT_COL_1982, 
  ESR_COL_1982, 
  Q12_3_1983, 
  FAMSIZE_1983, 
  ESR_COL_1983, 
  MARSTAT_COL_1983, 
  Q12_3_1984, 
  DS_11_1984, 
  DS_12_1984, 
  DRUG_27_1984, 
  DRUG_33_1984, 
  FAMSIZE_1984, 
  ESR_COL_1984, 
  MARSTAT_COL_1984, 
  Q12_3_1985, 
  FAMSIZE_1985, 
  ESR_COL_1985, 
  MARSTAT_COL_1985, 
  FAMSIZE_1986, 
  ESR_COL_1986, 
  MARSTAT_COL_1986, 
  FAMSIZE_1987, 
  ESR_COL_1987, 
  MARSTAT_COL_1987, 
  Q12_3_1988, 
  DS_11_1988, 
  DS_12_1988, 
  FAMSIZE_1988, 
  ESR_COL_1988, 
  MARSTAT_COL_1988, 
  Q12_3_1989, 
  FAMSIZE_1989, 
  ESR_COL_1989, 
  MARSTAT_COL_1989, 
  FAMSIZE_1990, 
  ESR_COL_1990, 
  MARSTAT_COL_1990, 
  FAMSIZE_1991, 
  ESR_COL_1991, 
  MARSTAT_COL_1991, 
  DS_11_1992, 
  DS_12_1992, 
  DS_16_1992, 
  FAMSIZE_1992, 
  ESR_COL_1992, 
  MARSTAT_COL_1992, 
  FAMSIZE_1993, 
  ESR_COL_1993, 
  MARSTAT_COL_1993, 
  Q12_3_1994, 
  DS_11_1994, 
  DS_12_1994, 
  DS_16_1994, 
  FAMSIZE_1994, 
  ESR_COL_1994, 
  MARSTAT_COL_1994, 
  FAMSIZE_1996, 
  ESR_COL_1996, 
  MARSTAT_COL_1996, 
  DS_11_1998, 
  DS_12_1998, 
  DS_16_1998, 
  FAMSIZE_1998, 
  ESR_COL_1998, 
  MARSTAT_COL_1998, 
  FAMSIZE_2000, 
  MARSTAT_COL_2000, 
  Q12_3_2002, 
  FAMSIZE_2002, 
  MARSTAT_COL_2002, 
  FAMSIZE_2004, 
  MARSTAT_COL_2004, 
  FL1M1B_XRND, 
  Q12_3_2006, 
  FAMSIZE_2006, 
  ESR_COL_2006, 
  MARSTAT_COL_2006, 
  Q12_3_2008, 
  FAMSIZE_2008, 
  MARSTAT_COL_2008, 
  Q12_3_2010, 
  FAMSIZE_2010, 
  MARSTAT_COL_2010, 
  Q12_3_2012, 
  FAMSIZE_2012, 
  MARSTAT_COL_2012, 
  Q12_3_2014, 
  FAMSIZE_2014, 
  MARSTAT_COL_2014, 
  FAMSIZE_2016, 
  MARSTAT_COL_2016, 
  FAMSIZE_2018, 
  MARSTAT_COL_2018.
