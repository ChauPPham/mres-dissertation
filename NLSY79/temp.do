
local identifier1 = 1
local identifier2 = 1

foreach j of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	forval k = 1/4 {
		reghdfe `j' l.`j' IMPUTED_CRRA_`k' i.C00054 i.C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED ln_INCOME  if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & year == 1994 & DEGREE_SEP != . , absorb(AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier2'_`identifier1'
	forval i = 0/2 {
		reghdfe `j' l.`j' IMPUTED_CRRA_`k' i.C00054 i.C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED ln_INCOME  if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & year == 1994 & DEGREE_SEP == `i' , absorb(AGE_CAT) vce(cluster R0000100)
		eststo model_`identifier2'_`identifier1'_`j'
		local ++identifier1
	}
	
	}
	local ++identifier2
	
	}
	

eststo clear	
	
local identifier1 = 1
local identifier2 = 1
foreach j of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	forval k = 1/4 {
		reghdfe `j' l.`j' IMPUTED_CRRA_`k' i.C00054 i.C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED ln_INCOME i.DEGREE_SEP if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & year == 1994, absorb(AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier2'_`identifier1'
	local ++identifier1
	}
	local ++identifier2
	
	}
	
	
forvalues i = 1/5 {
		esttab model_`i'*, keep(IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
	}