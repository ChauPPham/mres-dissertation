

reghdfe d.INV_ALL d.IMPUTED_CRRA_4 IMPUTED_CRRA_4 c.IMPUTED_CRRA_4#AGE_CAT  c.IMPUTED_CRRA_4#C00054 c.IMPUTED_CRRA_4#b(3).C00053 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP, absorb(year AGE_CAT) cluster(R0000100)

xtreg INV_ALL IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* AGE_CAT_*, fe


reghdfe d.INV_ALL d.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP if year == 2010, absorb(year AGE_CAT) cluster(R0000100)




reghdfe TIME_ALL L.TIME_ALL cl.TIME_ALL#c.NO_SIB L.IMPUTED_CRRA_4 NO_SIB FAM_SIZE i.C00054#year b(3).C00053#year c.C000700#year c.AGE_FIRST_BIRTH#year c.R0618301#year AGE_14#year c.R0006500#year c.R0007900#year WKS_WORKED WKS_WORKED_SPS ln_INCOME c.MOM_AGE#year, absorb(year AGE_CAT C0000100) vce(cluster R0000100)



*==============================================================================
local identifier = 1
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COMP_SCORE EMO_SCORE {
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b
	
	local ++identifier
}

esttab model_*_a, keep(L.IMPUTED_CRRA_1) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
esttab model_*_b, keep(L.IMPUTED_CRRA_4) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress





local identifier = 1
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COMP_SCORE EMO_SCORE {
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.`i' WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_*, gmm(l.`i' L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b
	
	local ++identifier
}

esttab model_*_a, keep(L.IMPUTED_CRRA_1) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
esttab model_*_b, keep(L.IMPUTED_CRRA_4) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress



local identifier = 10
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COMP_SCORE EMO_SCORE {
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0045800 == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME L.IMPUTED_CRRA_4, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP AGE_CAT_* year_* if X0045800 == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP AGE_CAT_* year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b
	
	local ++identifier
}

esttab model_*_a, keep(L.IMPUTED_CRRA_4) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
esttab model_*_b, keep(L.IMPUTED_CRRA_4) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress




preserve
keep if R0618301 != . & R0006500 != . & R0007900 !=. & FAM_SIZE !=. & DEGREE_SEP != . & HH_INCOME != . & AGE_14 != . & WKS_WORKED != . & WKS_WORKED_SPS != . & IMPUTED_CRRA_1 != . & year >= 1993
keep DEGREE_CAT C0000100 year
tab DEGREE_CAT, gen(DEGREE_CAT_)
rename DEGREE_CAT_* DEGREE_CAT_*_ 
reshape wide DEGREE_CAT_*_, i(C0000100) j(year)

tab su DEGREE_CAT_*


restore


eststo clear
local identifier = 31
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COMP_SCORE EMO_SCORE {
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 1 & X0045800 == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_1
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 3 & X0045800 == 0, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 1 & X0045800 == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_3
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* if AGE_CAT == 3 & X0045800 == 1, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_4
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 1 & X0045800 == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_1
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 3 & X0045800 == 0, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 1 & X0045800 == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_3
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* if AGE_CAT == 3 & X0045800 == 1, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME, orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_4
	
	local ++identifier
}

forval i = 31/35 {
	esttab model_`i'*_a_*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
	esttab model_`i'*_b_*, keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress
*	if `i' == 1 esttab model_`i'_a_* using "tex/result-age-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs replace
*	if `i' == 1 esttab model_`i'_b_* using "tex/result-age-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
*	if `i' > 1 esttab model_`i'_a_* using "tex/result-age-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
*	if `i' > 1 esttab model_`i'_b_* using "tex/result-age-entrepreneur", keep(L.IMPUTED_CRRA_*) mtitle("") se star(* 0.10 ** 0.05 *** 0.01) label nonum b(%9.3f) compress booktabs append
}







/*==============================*/
/* RESULT BY AGE-GROUP: TABLE 8 */
/*==============================*/

eststo clear
local identifier = 11
qui foreach i of varlist INV_ALL GOODS_ALL TIME_ALL COG_SCORE EMO_SCORE {
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT  if AGE_CAT == 2, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT , orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_1 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_SEP year_* l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT  if AGE_CAT == 3, gmm(l.GOODS_ALL WKS_WORKED WKS_WORKED_SPS ln_INCOME l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT , orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_CAT year_* L.IMPUTED_CRRA_1) cluster(R0000100) orthog twostep
	eststo model_`identifier'_a_3
	
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT  if AGE_CAT == 2, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT , orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
	eststo model_`identifier'_b_2
	
	xtabond2 `i' L.`i' L.IMPUTED_CRRA_4 i.C00054 b(3).C00053 NO_SIB FAM_SIZE C000700 AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 WKS_WORKED WKS_WORKED_SPS ln_INCOME i.DEGREE_CAT year_* l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT  if AGE_CAT == 3, gmm(l.GOODS_ALL L.IMPUTED_CRRA_4 WKS_WORKED WKS_WORKED_SPS ln_INCOME l.PIAT_MATH L.PIAT_COMP L.PIAT_REC L.BPI_SAME_SEX L.PPVT , orthog) iv(i.C00054 b(3).C00053 NO_SIB FAM_SIZE AGE_FIRST_BIRTH R0618301 AGE_14 R0006500 R0007900 i.DEGREE_SEP year_*) cluster(R0000100) orthog twostep
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








