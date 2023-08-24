* Code transform dataset to impute CRRA from MATLAB

use NLSY79_long, clear

* List of categorical variable to be turned into dummy categorical
rename R0214700 RACE
rename R0214800 R_SEX
rename R0001900 AGE_14
rename R9909800 FIRST_MARRIAGE
rename R0006500 MOM_HGC
rename R0007900 DAD_HGC
rename R0618301 AFQT_2006
rename WKS_WORKED WEEKS_WORKED

gen DEGREE_CAT = 0 if HDC == 0 | (HGC < 9 & HGC >= 0)
replace DEGREE_CAT = 1 if HDC == 0 | (HGC >= 9 & HGC <= 12)
replace DEGREE_CAT = 2 if HDC == 1 | HGC == 12
replace DEGREE_CAT = 3 if (HDC == 1 | HDC == 2) & HGC > 12 & HGC < 90
replace DEGREE_CAT = 4 if (HDC == 3 | HDC == 4)
replace DEGREE_CAT = 5 if (HDC >= 5 & HDC < 8)

gen DEGREE_SEP = .
replace DEGREE_SEP = 0 if DEGREE_CAT <= 1
replace DEGREE_SEP = 1 if DEGREE_CAT == 2
replace DEGREE_SEP = 2 if DEGREE_CAT >= 3 & DEGREE_CAT != .
label define DEGREE_SEP 0 "High school dropout" 1 "High school" 2 "College" 
label values DEGREE_SEP DEGREE_SEP

foreach i of varlist RACE R_SEX REGION FIRST_MARRIAGE MARITAL_STAT DEGREE_SEP {
	tab `i', gen(`i'_) 
}

gen AGE_14_BOTH_PARENTS = AGE_14 == 11

replace RISK_AVERSE1 = RISK_AVERSE1[_n+1] if year == 1993

keep if year == 1993 | year == 2002 | year == 2004 | year == 2006 | year == 2010 | year == 2012 | year == 2014

gen RISK = RISK_AVERSE1
replace RISK = RISK_AVERSE2 if RISK_AVERSE1 == .

gen AGE = year - R0000500 - 1900

/*============== Excluding certain categories to act as base level ================
RACE_3: Non-black/non-Hispanic
REGION_2: NORTH-CENTRAL
MARITAL_STAT_1: NEVER MARRIED
DEGREE_SEP_1: HS DROPOUT
 */
 
keep R0000100 year MOM_HGC DAD_HGC AFQT_2006 HH_INCOME RISK INTERVIEW_MONTH WEEKS_WORKED WEEKS_WORKED_SPS RACE_1 RACE_2 R_SEX_2 REGION_1 REGION_3 REGION_4 MARITAL_STAT_2 MARITAL_STAT_3 DEGREE_SEP_2 DEGREE_SEP_3 AGE_14_BOTH_PARENTS AGE

rename R_SEX_2 FEMALE
rename RACE_1 HISPANIC
rename RACE_2 BLACK
rename REGION_1 EAST
rename REGION_3 SOUTH
rename REGION_4 WEST
rename MARITAL_STAT_2 MARRIED
rename MARITAL_STAT_3 OTHER
rename DEGREE_SEP_2 HIGHSCHOOL
rename DEGREE_SEP_3 COLLEGE

foreach i of varlist HH_INCOME INTERVIEW_MONTH EAST SOUTH WEST MARRIED OTHER HIGHSCHOOL COLLEGE RISK WEEKS_WORKED WEEKS_WORKED_SPS AGE {
	rename `i' `i'_
}

reshape wide HH_INCOME INTERVIEW_MONTH EAST SOUTH WEST MARRIED OTHER HIGHSCHOOL COLLEGE RISK WEEKS_WORKED_ WEEKS_WORKED_SPS AGE_, i(R0000100) j(year)

* Generate indicator variable for being asked question about risks in a certain year
foreach i in 1993 2002 2004 2006 2010 2012 2014 {
	gen INTERVIEW_`i' = cond(RISK_`i' !=., 1, 0)
}


drop if INTERVIEW_1993 == 0 & INTERVIEW_2002 == 0 & INTERVIEW_2004 == 0 & INTERVIEW_2006 == 0 & INTERVIEW_2010 == 0 & INTERVIEW_2012 == 0 & INTERVIEW_2014 == 0

*export delimited using "MATLAB_INPUT.txt", delimiter(tab) novarnames nolabel replace



/* Output from the MATLAB code section
Output file: RISK1.csv RISK2.csv RISK3.csv RISK4.csv -> MANUALLY COMBINE INTO ONE FILE
Each file has in the first column the ID of participants and the imputed values ...
of CRRA for all year (even if she did not participate) -> change to null in STATA ...
depending on whether she participated in the interview in that year or not. 
IMPUTED_CRRA_1: TIME-INVARIANT CRRA
IMPUTED_CRRA_2,3,4: TIME-VARYING CRRA (with different sets of covariates)
*/

*===========================================================================================*
/* This next piece of code uses as input the output file from MATLAB, then merge to the main NLSY79 dataset which are then to be merge with the NLSY79CYA. */

import delimited "RISK_MATLAB.csv", case(upper) clear
reshape long RISK1_ RISK2_ RISK3_ RISK4_, i(R0000100) j(year)
rename RISK*_ IMPUTE_CRRA_*
replace year = 1994 if year == 1993 /*recode to match investment data*/
* save RISK_MATLAB, replace

use NLSY79_long, clear

merge 1:1 R0000100 year using RISK_MATLAB, nogen

/* Change imputed values to NULL for years that the individuals did not participate in the risk survey */
foreach i of varlist IMPUTED* {
	replace `i' = . if RISK1_a == . & RISK2_a == .
}
save NLSY79_long, replace

