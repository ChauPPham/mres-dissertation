* ssc install project

project, setup

/* Calculate investment indices based on HOME for group A*/
use "NLSY79CYA_A.dta", clear

quietly foreach var in C0541200 C0751600 C0952700 C1150800 C1401600 C1603300 C1943800 C2264500 C2709300 C2985900 C3388400 C3914200 C5165700 C5741900 C6081200 {
	gen TOY1_`var' = 1 if `var' >= 10
	replace TOY1_`var' = 0 if (`var' < 10 & `var' >= 0)
}