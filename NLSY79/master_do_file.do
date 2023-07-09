* ssc install project

* project, setmaster("E:\GitHub\mres-dissertation\NLSY79\master_do_file.do")

/*========================================================*/
/* Calculate investment indices based on HOME for group A */
/*========================================================*/
use "NLSY79CYA_A.dta", clear

*========== Creates dummy variables
local year = 1986
quietly foreach var in C0541200 C0751600 C0952700 C1150800 C1401600 C1603300 C1943800 C2264500 C2709300 C2985900 C3388400 C3914200 C5165700 C5741900 C6081200 {
	gen TOY1_`year' = 1 if `var' >= 10
	replace TOY1_`year' = 0 if (`var' < 10 & `var' >= 0)
	local year = `year' + 2
}	/*soft toy*/

local year = 1986
quietly foreach var in C0541300 C0751700 C0952800 C1150900 C1401700 C1603400 C1943900 C2264600 C2709400 C2986000 C3388500 C3914300 C5165800 C5742000 C6081300 {
	gen TOY2_`year' = 1 if `var' >= 10
	replace TOY2_`year' = 0 if (`var' < 10 & `var' >= 0)
	local year = `year' + 2
}	/*push pull toys*/

local year = 1986
quietly foreach var in C0540800 C0751200 C0952300 C1150400 C1401200 C1602900 C1943400 C2264100 C2708900 C2985500 C3388000 C3913800 C5165300 C5741500 C6080800 {
	gen OUT_`year' = 1 if `var' >= 4
	replace OUT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often get out of house (group with outing for group B)*/

local year = 1986
quietly foreach var in C0540900 C0751300 C0952400 C1150500 C1401300 C1603000 C1943500 C2264200 C2709000 C2985600 C3388100 C3913900 C5165400 C5741600 C6080900 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books*/

local year = 1986
quietly foreach var in C0541100 C0751500 C0952600 C1150700 C1401500 C1603200 C1943700 C2264400 C2709200 C2985800 C3388300 C3914100 C5165600 C5741800 C6081100 {
	gen GROCERY_`year' = 1 if (`var' <= 2 & `var' > 0)
	replace GROCERY_`year' = 0 if (`var' > 2)
	local year = `year' + 2
}	/*how often take to grocery*/

local year = 1986
quietly foreach var in C0541000 C0751400 C0952500 C1150600 C1401400 C1603100 C1943600 C2264300 C2709100 C2985700 C3388200 C3914000 C5165500 C5741700 C6081000 {
	gen READ_`year' = 1 if `var' >= 4
	replace READ_`year' = 0 if (`var' >= 0 & `var' < 4)
	local year = `year' + 2
}	/*how often read to child*/

local year = 1986
quietly foreach var in C0541600 C0752000 C0953700 C1151800 C1402600 C1603900 C1944800 C2265800 C2710600 C2987100 C3389600 C3915400 C5166700 C5743100 {
	gen EAT_`year' = 1 if (`var' <= 2 & `var' > 0)
	replace EAT_`year' = 0 if (`var' > 2)
	local year = `year' + 2
}	/*how often eat with both mom and dad*/

local year = 1986
quietly foreach var in C0541500 C0751900 C0953600 C1151700 C1402500 C1604200 C1944700 C2265700 C2710500 C2987000 C3389500 C3915300 C5166600 C5743000 {
	gen SEE_DAD_`year' = `var' if (`var' == 1 | `var' == 2)
	replace SEE_DAD_`year' = 0 if (`var' > 2 | `var' == 0)
	local year = `year' + 2
}	/* see father figure daily*/


*========== Calculate investment indices





