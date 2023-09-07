/*============================================================================*/
/*========== Calculate using NLSY79_main ==========*/
use NLSY79_main.dta, clear

*========== Impute answers with range
gen WTA_10K_IMPUTED = T0960500 if T0960500 >= 0
replace WTA_10K_IMPUTED = abs(T0960700 - T0960600)/2 if (T0960600 >= 0 & T0960700 >= 0)
replace WTA_10K_IMPUTED = T0960600 + 500/2 if (T0960700 - T0960600 == 0 & T0960600 >= 0 & T0960700 >= 0)

gen WTA_1K_IMPUTED = T0961100 if T0961100 >= 0
replace WTA_1K_IMPUTED = abs(T0961300 - T0961200)/2 if (T0961200 >= 0 & T0961300 >= 0)
replace WTA_1K_IMPUTED = T0961200 + 500/2 if (T0961200 - T0961300 == 0 & T0961200 >= 0 & T0961300 >= 0)

*save NLSY79_main.dta, replace

local year = 1986
foreach i of varlist G0070300 G0078100 G0085900 G0093700 G0101500 G0109300 G0117100 G0131400 G0132700 G0148200 G0148300 G0163800 G0163900 G0179400 G0179500 G0195000 G0195100 G0210600 G0210700 G0226300 G0226400 G0228100 G0241600 G0242100 G0260300 G0260700 G0276000 G0281900 G0292700 G0299300 G0313100 {
	rename `i' WELFARE_`year'
	local year = `year' + 1
}

local year = 1986
foreach i of varlist R2257500 R2444700 R2870200 R3074000 R3400700 R3656100 R4006600 R4417700 R5080700 R5166000 R6478700 R7006500 R7703700 R8496100 T0987800 T2210000 T3107800 T4112300 T5022600 T5770800 T8218700 {
	rename `i' HH_INCOME_`year'
	if `year' >= 1994 local year = `year' + 2 
	if `year' < 1994 local year = `year' + 1 
}

local year = 1987
foreach i of varlist R2444900 R2870400 R3074100 R3400800 R3656200 R4006700 R4417800 R5080800 R5166100 R6478800 R7006600 R7703900 R8496300 T0987900 T2210100 T3108000 T4112500 T5022800 T5770900 T8218900 {
	rename `i' POVERTY_`year' 
	if `year' >= 1994 local year = `year' + 2 
	if `year' < 1994 local year = `year' + 1 
}

/* For highest grade and degree completed/received, the first survey year are 1979 and 1988 respectively. In subsequent years, the survey update entries for which there are changes and leave those unchanged as unrecorded (minus values)? -> Need to update manually if want to find the highest grade/degree completed by any certain year
*/

local year = 1979
foreach i of varlist R0216701 R0406401 R0618901 R0898201 R1145001 R1520201 R1890901 R2258001 R2445401 R2871101 R3074801 R3401501 R3656901 R4007401 R4418501 R5103900 R5166901 R6479600 R7007300 R7704600 R8497000 T0988800 T2210700 T3108600 T9900000 {
	if `year' <= 1994 local prev_year = `year' - 1 
	if `year' > 1994 local prev_year = `year' - 2 
	if `year' > 1979 replace `i' = HGC_`prev_year' if (`i' < 0 | `i' > HGC_`prev_year')
	rename `i' HGC_`year'
	if `year' >= 1994 local year = `year' + 2 
	if `year' < 1994 local year = `year' + 1 
}

replace T1215600 = T1215400 if T1215600 < 0
local year = 1988
foreach i of varlist R2509800 R2909200 R3111200 R3511200 R3711200 R4138900 R4527600 R5222900 R5822800 R6541400 R7104600 R7811500 T0015400 T1215600 T2274100 T3214200 T4202500 {
	if `year' <= 1994 local prev_year = `year' - 1 
	if `year' > 1994 local prev_year = `year' - 2 
	if `year' > 1988 replace `i' = HDC_`prev_year' if (`i' < 0 | `i' > HDC_`prev_year')
	rename `i' HDC_`year'
	if `year' >= 1994 local year = `year' + 2 
	if `year' < 1994 local year = `year' + 1 
}

/* Recode Question on risk aversion: Choosing job in 1993 version */
local year = 1994 /*year 1993 will be recoded as 1994 for convenience*/
foreach i of varlist R4395800 R7353300 R8047100 T0279100 {
	rename `i' RISK1_a_`year'
	if `year' > 1994 local year = `year' + 2 
	if `year' == 1994 local year = `year' + 8 
}

local year = 1994
foreach i of varlist R4395900 R7353400 R8047200 T0279200 {
	rename `i' RISK1_b_`year'
	if `year' > 1994 local year = `year' + 2 
	if `year' == 1994 local year = `year' + 8 
}

local year = 1994
foreach i of varlist R4396000 R7353500 R8047300 T0279300 {
	rename `i' RISK1_c_`year'
	if `year' > 1994 local year = `year' + 2 
	if `year' == 1994 local year = `year' + 8 
}

/* Recode Question on risk aversion: Choosing job in 2010 version */
local year = 2010
foreach i of varlist T3094500 T4093600 T4998800 {
	rename `i' RISK2_a_`year'
	local year = `year' + 2
}

local year = 2010
foreach i of varlist T3094600 T4093700 T4998900 {
	rename `i' RISK2_b_`year'
	local year = `year' + 2
}

local year = 2010
foreach i of varlist T3094700 T4093800 T4999000 {
	rename `i' RISK2_c_`year'
	local year = `year' + 2
}

/* Recode Question on risk aversion: Willingness to take risk in GENERAL */
local year = 2010
foreach i of varlist T3094800 T4093900 T4999100 {
	rename `i' RISK3_`year'
	local year = `year' + 2
}

/* Recode Question on risk aversion: Willingness to take risk in placing fair bets */
local year = 2010
foreach i of varlist T3095000 T4094100 T4999300 {
	rename `i' RISK4_`year'
	local year = `year' + 2
}

/* Recode Questions on willingness to take risks in different scenarios */
local year = 2010 
foreach i of varlist T3094901 T4094001 T4999201 {
	rename `i' RISK_FINANCIAL_`year'
	local year = `year' + 2
}

local year = 2010
foreach i of varlist T3094902 T4094002 T4999202 {
	rename `i' RISK_OCCUPATION_`year'
	local year = `year' + 2
}

local year = 2010 
foreach i of varlist T3094906 T4094006 T4999206 {
	rename `i' RISK_MAJOR_`year' 
	local year = `year' + 2
}

quietly reshape long HGC_ HDC_ RISK1_a_ RISK1_b_ RISK1_c_ RISK2_a_ RISK2_b_ RISK2_c_ RISK3_ RISK4_ RISK_FINANCIAL_ RISK_OCCUPATION_ RISK_MAJOR_ WELFARE_ POVERTY_  HH_INCOME_, i(R0000100) j(year)
quietly foreach i of varlist HGC_ HDC_ RISK1_a_ RISK1_b_ RISK1_c_ RISK2_a_ RISK2_b_ RISK2_c_ RISK3_ RISK4_ RISK_FINANCIAL_ RISK_OCCUPATION_ RISK_MAJOR_ WELFARE_ POVERTY_  HH_INCOME_ {
	replace `i' = . if `i' < 0
}
rename *_ *
replace WELFARE = 0 if WELFARE < 0

/* Private school choice */
quietly foreach i of varlist T4969200 T4969300 T4969400 T4969500 T4969600 T4969700 T4969800 T4969900 {
	replace `i' = . if `i' < 0
}

/* Private school tuition fees */
quietly foreach i of varlist T4970600 T4970700 T4970800 T4970900 T4971000 T4971100 {
	replace `i' = . if `i' < 0
}

/* Child attends 2 or 4 years college */
quietly foreach i of varlist T4976800 T4976900 T4977000 T4977100 T4977200 T4977300 T4977400 T4977500 T4977600 {
	replace `i' = . if `i' < 0
}

/* Child graduates with Bachelor degree */
quietly foreach i of varlist T4978500 T4978600 T4978700 T4978800 T4978900 T4979000 T4979100 T4979200 {
	replace `i' = . if `i' < 0
}

/* Number of years child attend college */
quietly foreach i of varlist T4981600 T4981700 T4981800 T4981900 T4982000 T4982100 T4982200 T4982300 {
	replace `i' = . if `i' < 0
}

/* Amount of child living expenses paid by parents */
quietly foreach i of varlist T4990400 T4990500 T4990600 T4990700 T4990800 T4990900 T4991000 T4991100 {
	replace `i' = . if `i' < 0
}

/* Child attend college longer/more expensive if more help */
quietly foreach i of varlist T4994400 T4994500 T4994600 T4994700 T4994800 T4994900 T4995000 T4995100 {
	replace `i'= . if `i' < 0
}

/* Family contribute if child attends college */
quietly foreach i of varlist T4996100 T4996200 T4996300 T4996400 T4996500 T4996600 T4996700 T4996800 T4996900 {
	replace `i' = . if `i' < 0
}

/* Generate a categorical variable for risk aversion based on 1993-2006 questions*/
gen RISK_AVERSE1 = .
replace RISK_AVERSE1 = 4 if RISK1_a == 0 & RISK1_c == 0
replace RISK_AVERSE1 = 3 if RISK1_a == 0 & RISK1_c == 1
replace RISK_AVERSE1 = 2 if RISK1_a == 1 & RISK1_b == 0
replace RISK_AVERSE1 = 1 if RISK1_a == 1 & RISK1_b == 1
label define RISK1 4 "High risk aversion" 3 "Moderate risk aversion" 2 "Low risk aversion" 1 "Lowest risk aversion"
label values RISK_AVERSE1 RISK1

gen RISK_AVERSE2 = .
replace RISK_AVERSE2 = 4 if RISK2_a == 1 & RISK2_c == 1
replace RISK_AVERSE2 = 3 if RISK2_a == 1 & RISK2_c == 2
replace RISK_AVERSE2 = 2 if RISK2_a == 2 & RISK2_b == 1
replace RISK_AVERSE2 = 1 if RISK2_a == 2 & RISK2_b == 2
label values RISK_AVERSE2 RISK1

* Run MLE to generate gamma - coefficient of relative risk aversion 
* NEW COEFFICIENTS ARE ESTIMATED FROM MATLAB AND IMPORTED


*save NLSY79_long.dta, replace


/* Summary statistics for imputed CRRA values */
qui estpost tabstat IMPUTED_CRRA_1 IMPUTED_CRRA_4 if IMPUTED_CRRA_1 != ., by(year) statistics(mean sd) columns(statistics) 
esttab ., main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum title("Summary statistics of imputed CRRA") noobs
*esttab . using tex/CRRA-summary.tex, main(mean %12.2f n) aux(sd %12.2f) nostar nonote label unstack nonum title("Summary statistics of imputed CRRA")