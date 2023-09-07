/*==================================================================*/
/*==================== Output regression tables ====================*/
/*==================================================================*/
* 1 - HOME SCORE (normalised)
* 2 - Goods investment (normalised) (taken from HOME SECTION)
* 3 - Time investment (normalised) (taken from HOME SECTION)
* 4 - Cognitive stimulation (in %) (taken from HOME SECTION)
* 5 - Emotional support (in %) (taken from HOME SECTION)

xtset C0000100 year, delta(2)

eststo clear
mata: mata set matafavor speed, perm

*==================== RISK AS COEF OF RRA ============================*
/*======================*/
/* MAIN RESULT: TABLE 7 */
/*======================*/
* First 2 columns: OLS for time-invariant risk preference & time-variant risk preference
* Next 2 columns: 2-step GMM for time-invariant risk preference & time-variant  risk preference

local identifier = 1
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	reghdfe `i' L.`i' L.IMPUTED_CRRA_1 i.C00054#year b(3).C00053#year c.NO_SIB#year c.FAM_SIZE#year c.C000700#year c.AGE_FIRST_BIRTH#year c.R0618301#year AGE_14#year c.R0006500#year c.R0007900#year WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT#year, absorb(C0000100 year AGE_CAT) cluster(R0000100) keepsingleton
	eststo model_`identifier'_a
	
	reghdfe `i' L.`i' L.IMPUTED_CRRA_4 i.C00054#year b(3).C00053#year c.NO_SIB#year c.FAM_SIZE#year c.C000700#year c.AGE_FIRST_BIRTH#year c.R0618301#year AGE_14#year c.R0006500#year c.R0007900#year WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT#year, absorb(C0000100 year AGE_CAT) cluster(R0000100) keepsingleton
	eststo model_`identifier'_b
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_c
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_*, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_d
	
	local ++identifier
}

forval i = 1/5 {
	esttab model_`i'*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
*	if `i' == 1 esttab model_`i'* using "tex/main_result", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs replace
*	if `i' > 1 esttab model_`i'* using "tex/main_result", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
}


/*==============================*/
/* RESULT BY AGE-GROUP: TABLE 8 */
/*==============================*/

local identifier = 11
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_0
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_1
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 2, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 3, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_3
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_0
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_1
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 2, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 3, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_3
	
	local ++identifier
}

forval i = 11/15 {
	esttab model_`i'*_a_*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
	esttab model_`i'*_b_*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
*	if `i' == 1 esttab model_`i'_a_* using "tex/result-age", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs replace
*	if `i' == 1 esttab model_`i'_b_* using "tex/result-age", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
*	if `i' > 1 esttab model_`i'_a_* using "tex/result-age", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
*	if `i' > 1 esttab model_`i'_b_* using "tex/result-age", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
}







/*==============================*/
/* ENTREPRENEUR RESULT: TABLE 9 */
/*==============================*/
* First 2 columns: 2-step GMM for time-invariant risk preference & time-variant  risk preference FOR EMPLOYEES
* Next 2 columns: 2-step GMM for time-invariant risk preference & time-variant  risk preference FOR BUSINESS OWNERS (NLSY79)
* Next 2 columns: 2-step GMM for time-invariant risk preference & time-variant  risk preference FOR BUSINESS OWNERS (CREATED)
* Last 2 columns: 2-step GMM for time-invariant risk preference & time-variant  risk preference FOR SELF-PROCLAIMED ENTREPRENEURS

gen BUS_OWN = cond(X0045900 >= 1 & X0045900 != ., 1, 0)
replace BUS_OWN = X0045900 if X0045800 == .

/*		THIS PART FOR THE REDOING DATA
foreach i of varlist X0045800 X0062000 BUS_OWN {
	sort R0000100 `i'
	by R0000100: replace `i' = `i'[1] if missing(`i')
}
sort C0000100 year
*/

local identifier = 21
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0045800 == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if X0045800 == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0045800 == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_c
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if X0045800 == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_d
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if BUS_OWN == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_e
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if BUS_OWN == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_f
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if BUS_OWN == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_g
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if BUS_OWN == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_h
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0062000 == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_i
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if X0062000 == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_j
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0062000 == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_k
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* if X0062000 == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_l
	
	
	local ++identifier
}

forval i = 21/25 {
	esttab model_`i'*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress
*	if `i' == 11 esttab model_`i'* using "tex/result-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs replace
*	if `i' > 11 esttab model_`i'* using "tex/result-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs append
}




/*=======================================*/
/* INFORMATION UPDATING RESULT: TABLE 10 */
/*=======================================*/


local identifier = 31
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* L.PPVT, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PPVT, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_1
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* L.BPI_TRI, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME L.BPI_TRI, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* L.PIAT_MATH L.PIAT_REC, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PIAT_MATH L.PIAT_REC, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_3
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* L.PPVT L.BPI_TRI L.PIAT_MATH L.PIAT_REC, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PPVT L.BPI_TRI L.PIAT_MATH L.PIAT_REC, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_4
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* L.PPVT, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PPVT, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_1
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* L.BPI_TRI, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PPVT, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* L.PIAT_MATH L.PIAT_REC, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PIAT_MATH L.PIAT_REC, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_3
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_* L.PPVT L.BPI_TRI L.PIAT_MATH L.PIAT_REC, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME L.PPVT L.BPI_TRI L.PIAT_MATH L.PIAT_REC, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_4
	
	
	local ++identifier
}


forval i = 31/35 {
	esttab model_`i'_a*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress
	esttab model_`i'_b*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress	

/*
	if `i' == 31 esttab model_`i'_a* using "tex/robust-2", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs replace
	if `i' == 31 esttab model_`i'_b* using "tex/robust-2", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs append
	if `i' > 31 esttab model_`i'_a* using "tex/robust-2", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs append
	if `i' > 31 esttab model_`i'_b* using "tex/robust-2", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.2f) compress booktabs append
	*/
}





*==================== RISK AS CATEGORICAL VARIABLE ===========================*

gen RISK_AVERSE = RISK_AVERSE1
replace RISK_AVERSE = RISK_AVERSE2 if RISK_AVERSE == .


/*==============================*/
/* CATEGORICAL RESULT: TABLE 11 */
/*==============================*/


local identifier = 41
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	reghdfe `i' L.`i' Li.RISK_AVERSE#NEW i.C00054#year b(3).C00053#year c.NO_SIB#year c.FAM_SIZE#year c.C000700#year c.AGE_FIRST_BIRTH#year c.R0618301#year AGE_14#year c.R0006500#year c.R0007900#year WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT#year, absorb(C0000100 year AGE_CAT) cluster(R0000100) keepsingleton
	eststo model_`identifier'_a
	
	
	xtabond2 `i' L.`i' Li.RISK_AVERSE#NEW i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT AGE_CAT_* year_* Li.RISK_AVERSE#NEW) cluster(R0000100) orthog twostep
	eststo model_`identifier'_c
	
	xtabond2 `i' L.`i' Li.RISK_AVERSE#NEW i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT AGE_CAT_* year_*, gmm(l.GOODS_ALL Li.RISK_AVERSE#NEW WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_d
	
	local ++identifier
}

forval i = 41/45 {
	esttab model_`i'*, keep(*L.RISK_AVERSE*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress long
*	if `i' == 1 esttab model_`i'* using "tex/robust-1", keep(*L.RISK_AVERSE*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs replace long
*	if `i' > 1 esttab model_`i'* using "tex/robust-1", keep(*L.RISK_AVERSE*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append long
}
