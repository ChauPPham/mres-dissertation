
/*==============================================================*/
/*==================== Output summary table ====================*/
/*==============================================================*/
label var INV_ALL "HOME index"
label var GOODS_ALL "Goods index"
label var TIME_ALL "Time index"
label var COG_SCORE "Cognitive Stimulation score (\%)"
label var EMO_SCORE "Emotional Support score (\%)"
label var C0005400 "Sex"
label var C0005300 "Race"
label var C0007000 "Age of mother at child's birth"
label var AGE_FIRST_BIRTH "Age of mother at first birth"
label var NO_SIB "Number of siblings"
label var FAM_SIZE "Family size"
label var DEGREE_CAT "Mother's education"
label var R0618301 "Mother's AFQT score (2006)"
label var R0006500 "Mother's mother's years of schooling"
label var R0007900 "Mother's father's years of schooling"
label var HH_INCOME "Net household income (\\$)"
label var WKS_WORKED "$\#$ weeks worked last year"
label var WKS_WORKED_SPS "$\#$ weeks spouse worked last year"
label var AGE_14 "Mother lives with both biological parents at age 14"
label var R9909800 "Marriage before first birth"
label var MARITAL_STAT "Marital status"
label var MOM_AGE "Mother's age"

tab C0005400, gen(SEX)
label var SEX2 "Female"

tab C0005300, gen(RACE)
label var RACE1 "Hispanic"
label var RACE2 "Black"
label var RACE3 "Non-Black, non-Hispanic"

tab RISK_AVERSE1, gen(RISK_AVERSION)
label var RISK_AVERSION1 "Lowest risk aversion"
label var RISK_AVERSION2 "Low risk aversion"
label var RISK_AVERSION3 "Moderate risk aversion"
label var RISK_AVERSION4 "High risk aversion"

gen DEGREE_SEP = .
replace DEGREE_SEP = 0 if DEGREE_CAT <= 1
replace DEGREE_SEP = 1 if DEGREE_CAT == 2
replace DEGREE_SEP = 2 if DEGREE_CAT >= 3 & DEGREE_CAT != .
label define DEGREE_SEP 0 "High school dropout" 1 "High school" 2 "College" /* Need to manually change to two lines in tex */
tab DEGREE_SEP, gen(DEGREE_SEP_) 
label var DEGREE_SEP_1 "High school dropout"
label var DEGREE_SEP_2 "High school"
label var DEGREE_SEP_3 "College"

label values DEGREE_SEP DEGREE_SEP

tab year, gen(year_)	
tab AGE_CAT, gen(AGE_CAT_)

/* Summary statistics for time-varying variables */
qui estpost tabstat IMPUTED_CRRA_1 IMPUTED_CRRA_4 INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE NO_SIB FAM_SIZE   WKS_WORKED WKS_WORKED_SPS HH_INCOME if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & DEGREE_SEP != . & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & WKS_WORKED_SPS != . & IMPUTED_CRRA_1 != ., statistics(mean sd) columns(statistics)
*esttab . using tex/summary.tex, main(mean %12.2f) aux(sd %12.2f) noobs nostar unstack nonote label replace booktabs nonum title("Summary statistics \label{table:5-summary}") wide
esttab ., main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum title("Summary statistics") noobs

/* Summary statistics for time-invariant variables */
* Temporarily change to wide format for time-invariant variables
preserve 

keep if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & DEGREE_SEP != . & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & WKS_WORKED_SPS != . & IMPUTED_CRRA_1 != . & year >= 1993
keep SEX2 RACE1 RACE2 RACE3 C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 C0000100 R0000100 year DEGREE_SEP_*

foreach i of varlist DEGREE_SEP_1 DEGREE_SEP_2 DEGREE_SEP_3 {
	rename `i' `i'_
}

reshape wide DEGREE_SEP_*_, i(C0000100) j(year)

su SEX2 RACE1 RACE2 RACE3 C000700 AGE_FIRST_BIRTH AGE_14 R0006500 R0007900 R0618301

qui estpost tabstat SEX2 RACE1 RACE2 RACE3 C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900, statistics(mean sd) columns(statistics)
esttab ., main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum long title("Summary statistics") noobs wide
*esttab . using tex/summary.tex, main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum noobs append wide

restore

/* Summary statistics for imputed CRRA values */
qui estpost tabstat IMPUTED_CRRA_1 IMPUTED_CRRA_4 if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & DEGREE_SEP != . & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & WKS_WORKED_SPS != . & IMPUTED_CRRA_1 != ., statistics(mean sd) columns(statistics) by(year) 
esttab ., main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum title("Summary statistics of imputed CRRA")
*esttab . using tex/CRRA-summary.tex, main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum title("Summary statistics of imputed CRRA") append


/* Correlation table for imputed values of CRRA and parental inputs */
qui estpost cor IMPUTED_CRRA_4 IMPUTED_CRRA_1 INV_ALL TIME_ALL GOODS_ALL EMO_SCORE COG_SCORE if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & WKS_WORKED_SPS != ., matrix
esttab ., not unstack compress noobs
*esttab . using tex/correlation-matrix.tex, not unstack compress noobs
