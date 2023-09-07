* STATA Settings *
*========================================================================
* Project name: MRes dissertation
* Author: Chau Pham
* Last update: September 7, 2023

/*===== Stata setting =====*/
clear all
version 18

/*===== Define directories =====*/
global main = "E:/GitHub/mres-dissertation/NLSY79"
global tex = "$main/tex"


*ssc install reghdfe
*ssc install ftools
*ssc install estout


/*========== Clean NLSY79 Child and Young Adults ==========*/
do "CYA_clean.do"

/*========== Clean NLSY79 main dataset (mothers) ==========*/
do "NLSY79_clean.do"


/*===================================================*/
/*========== Merge child & mom data (long) ==========*/
/*===================================================*/
use MERGE_CHILD, clear
rename C0000200 R0000100
merge m:m R0000100 year using NLSY79_long.dta, keep(match) nogen
order C0000100 year C0005400 C0005300 C0005700 R0000100 R0214800 R0000149 R0173600 
gen DEGREE_CAT = 0 if HDC == 0 | (HGC < 9 & HGC >= 0)
replace DEGREE_CAT = 1 if HDC == 0 | (HGC >= 9 & HGC <= 12)
replace DEGREE_CAT = 2 if HDC == 1 | HGC == 12
replace DEGREE_CAT = 3 if (HDC == 1 | HDC == 2) & HGC > 12 & HGC < 90
replace DEGREE_CAT = 4 if (HDC == 3 | HDC == 4)
replace DEGREE_CAT = 5 if (HDC >= 5 & HDC < 8)
label define DEGREE_CAT 0 "No high school" 1 "Some high school" 2 "High school" 3 "Some college" 4 "College" 5 "Postgraduate"
label values DEGREE_CAT DEGREE_CAT
save POOL_long.dta, replace

**# Bookmark #1 Data analysis
*=====================================================================================*
/*==========================================*/
/*========== Data analysis (long) ==========*/
/*==========================================*/
use POOL_long.dta, clear

/* Generate dummy variable for new and old series */
gen NEW = 0
replace NEW = 1 if year >= 2010

gen ln_INCOME = log(HH_INCOME)
rename WEEKS_WORKED_SPS WKS_WORKED_SPS

gen MOM_AGE = year - R0000500 - 1900

/* Mom characteristics: Dummy for mother living with both biological parents at age 14 */	
gen AGE_14 = 0 if R0001900 >= 0		
replace AGE_14 = 1 if R0001900 == 11


/* Generate variable for age at first birth */
bys R0000100: egen AGE_FIRST_BIRTH = min(C0007000)

replace R0618301 = R0618301/1000

**# Bookmark #2 Summary table
do "summary-table.do"


**# Bookmark #11 Regression table
do "regression-table.do"





