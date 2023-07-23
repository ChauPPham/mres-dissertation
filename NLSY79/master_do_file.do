* ssc install project

* project, setmaster("E:\GitHub\mres-dissertation\NLSY79\master_do_file.do")

*ssc install reghdfe
*ssc install ftools
*findit eststo -> Install related commands for outputing summary & regression tables

/*========== Calculate using NLSY79 Child and Young Adults ==========*/

**# Bookmark #1
/*==============================================================*/
/* Calculate investment indices based on HOME for group A (0-2) */
/*==============================================================*/
use "NLSY79CYA_A.dta", clear

*========== Creates dummy variables
local year = 1986
quietly foreach var in C0541200 C0751600 C0952700 C1150800 C1401600 C1603300 C1943800 C2264500 C2709300 C2985900 C3388400 C3914200 C5165700 C5741900 {
	gen TOY1_`year' = 1 if `var' >= 10
	replace TOY1_`year' = 0 if (`var' < 10 & `var' >= 0)
	local year = `year' + 2
}	/*soft toy >= 10*/

local year = 1986
quietly foreach var in C0541300 C0751700 C0952800 C1150900 C1401700 C1603400 C1943900 C2264600 C2709400 C2986000 C3388500 C3914300 C5165800 C5742000 {
	gen TOY2_`year' = 1 if `var' >= 10
	replace TOY2_`year' = 0 if (`var' < 10 & `var' >= 0)
	local year = `year' + 2
}	/*push pull toys >= 10*/

local year = 1986
quietly foreach var in C0540800 C0751200 C0952300 C1150400 C1401200 C1602900 C1943400 C2264100 C2708900 C2985500 C3388000 C3913800 C5165300 C5741500 {
	gen OUT_`year' = 1 if `var' >= 4
	replace OUT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often get out of house (group with outing for HOME B) > 3 per month*/

local year = 1986
quietly foreach var in C0540900 C0751300 C0952400 C1150500 C1401300 C1603000 C1943500 C2264200 C2709000 C2985600 C3388100 C3913900 C5165400 C5741600 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books >= 10*/

local year = 1986
quietly foreach var in C0541100 C0751500 C0952600 C1150700 C1401500 C1603200 C1943700 C2264400 C2709200 C2985800 C3388300 C3914100 C5165600 C5741800 {
	gen GROCERY_`year' = 1 if (`var' <= 2 & `var' > 0)
	replace GROCERY_`year' = 0 if (`var' > 2)
	local year = `year' + 2
}	/*how often take to grocery >= 1 per week*/

local year = 1986
quietly foreach var in C0541000 C0751400 C0952500 C1150600 C1401400 C1603100 C1943600 C2264300 C2709100 C2985700 C3388200 C3914000 C5165500 C5741700 {
	gen READ_`year' = 1 if `var' >= 4
	replace READ_`year' = 0 if (`var' >= 0 & `var' < 4)
	local year = `year' + 2
}	/*how often read to child >= 1 per week*/

local year = 1986
quietly foreach var in C0541600 C0752000 C0953700 C1151800 C1402600 C1603900 C1944800 C2265800 C2710600 C2987100 C3389600 C3915400 C5166700 C5743100 {
	gen EAT_`year' = 1 if (`var' <= 2 & `var' > 0)
	replace EAT_`year' = 0 if (`var' > 2)
	local year = `year' + 2
}	/*how often eat with both mom and dad >= 1 per day*/

local year = 1986
quietly foreach var in C0541500 C0751900 C0953600 C1151700 C1402500 C1604200 C1944700 C2265700 C2710500 C2987000 C3389500 C3915300 C5166600 C5743000 {
	gen SEE_DAD_`year' = `var' if `var' == 1
	replace SEE_DAD_`year' = 0 if (`var' == 2 | `var' == 0)
	local year = `year' + 2
}	/* see father figure daily*/


*========== Calculate investment indices
quietly forval i = 1986(2)2012 {
	egen INV_A_TOTAL_`i' = rowtotal(*_`i'), missing
	quietly su INV_A_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i' = r(sd)
	gen INV_A_SCALED_`i' = (INV_A_TOTAL_`i' - mean_`i')/sd_`i'
	egen GOODS_A_TOTAL_`i' = rowtotal(BOOK_`i' TOY1_`i' TOY2_`i'), missing
	quietly su GOODS_A_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen GOODS_A_SCALED_`i' = (GOODS_A_TOTAL_`i' - mean_`i')/sd_`i'
	gen TIME_A_TOTAL_`i' = INV_A_TOTAL_`i' - GOODS_A_TOTAL_`i'
	quietly su TIME_A_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen TIME_A_SCALED_`i' = (TIME_A_TOTAL_`i' - mean_`i')/sd_`i'
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED* *TOTAL*
reshape long INV_A_SCALED_ GOODS_A_SCALED_ TIME_A_SCALED_ INV_A_TOTAL_ GOODS_A_TOTAL_ TIME_A_TOTAL_, i(C0000100) j(year)
quietly foreach i of varlist *TOTAL* {
	su `i'
	scalar mean = r(mean)
	scalar sd = r(sd)
	gen `i'ALL = (`i' - mean)/sd
}
rename INV_A_TOTAL_ALL INV_ALL
rename GOODS_A_TOTAL_ALL GOODS_ALL
rename TIME_A_TOTAL_ALL TIME_ALL
drop *TOTAL*
gen AGE_AT_INVESTMENT = year - C0005700
rename INV_A_SCALED_ INVESTMENT 
rename GOODS_A_SCALED_ GOODS_INV
rename TIME_A_SCALED_ TIME_INV
keep if INVESTMENT != .
replace AGE_AT_INVESTMENT = 2 if AGE_AT_INVESTMENT > 2
*save HOME_A.dta, replace

**# Bookmark #2
/*==============================================================*/
/* Calculate investment indices based on HOME for group B (3-5) */
/*==============================================================*/
use "NLSY79CYA_B.dta", clear

/* Generate variables to deal with splitting of 3 category and 4-5 category*/

gen temp_READ_2000 = C2266600 if C2266600 >= 0
replace temp_READ_2000 = C2417100 if C2417100 >= 0 
gen temp_BOOK_2000 = C2266700 if C2266700 >= 0
replace temp_BOOK_2000 = C2417200 if C2417200 >= 0 
gen temp_MAG_2000 = C2266800 if C2266800 >= 0
replace temp_MAG_2000 = C2417300 if C2417300 >= 0
gen temp_TAPE_2000 = C2266900 if C2266900 >= 0 
replace temp_TAPE_2000 = C2417400 if C2417400 >= 0
gen temp_OUT_2000 = C2267900 if C2267900 >= 0
replace temp_OUT_2000 = C2419300 if C2419300 >= 0
gen temp_MUSEUM_2000 = C2268000 if C2268000 >= 0
replace temp_MUSEUM_2000 = C2419400 if C2419400 >= 0
gen temp_SEE_DAD_2000 = C2268800 if C2268800 >= 0
replace temp_SEE_DAD_2000 = C2420100 if C2420100 >= 0
gen temp_EAT_2000 = C2268900 if C2268900 >= 0
replace temp_EAT_2000 = C2420200 if C2420200 >= 0

quietly foreach var of varlist temp_* {
	replace `var' = -7 if `var' == .
}

local year = 1986
quietly foreach var in C0542000 C0752400 C0954000 C1152100 C1403300 C1604900 C1945500 temp_READ_2000 C2711400 C2987800 C3390300 C3916200 C5167400 C5743900 C6013800 C6082500 {
	gen READ_`year' = 1 if `var' >= 4
	replace READ_`year' = 0 if (`var' >= 0 & `var' < 4)
	local year = `year' + 2
} /*how often read to child >= 1 per week*/

local year = 1986
quietly foreach var in C0542100 C0752500 C0954100 C1152200 C1403400 C1605000 C1945600 temp_BOOK_2000 C2711500 C2987900 C3390400 C3916300 C5167500 C5744000 C6013900 C6082600 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books >= 10*/

local year = 1986
quietly foreach var in C0542200 C0752600 C0954200 C1152300 C1403500 C1605100 C1945700 temp_MAG_2000 C2711600 C2988000 C3390500 C3916400 C5167600 C5744100 C6014000 C6082700 {
	gen MAG_`year' = 1 if `var' >= 4
	replace MAG_`year' = 0 if (`var' < 4 & `var' > 0)
	local year = `year' + 2
}	/*how many magazine >= 3 regularly*/

local year = 1986
quietly foreach var in C0542300 C0752700 C0954300 C1152400 C1403600 C1605200 C1945800 temp_TAPE_2000 C2711700 C2988100 C3390600 C3916500 C5167700 C5744200 C6014100 C6082800 {
	gen TAPE_`year' = 1 if `var' == 1
	replace TAPE_`year' = 0 if `var' == 0
	local year = `year' + 2
}	/*child has CD player (tape)*/

/* helps child learn series (alphabet, number, etc.) will be omitted since only YES are recorded before 2000 
local year = 1986
gen temp_LEARN_NUMBER_2000 = C2267000 if C2267000 >= 0
replace temp_LEARN_NUMBER_2000 = C2417500 if C2417500 >= 0
foreach var in C0542400 C0752800 C0954400 C1152500 C1403700 C1605300 C1945900 temp_LEARN_NUMBER_2000 C2711800 C2988200 C3390700 C3916600 C5167800 C5744300 C6014200 C6082900 {
	gen LEARN_NUMBER_`year' = 1 if 
}
*/

local year = 1986
quietly foreach var in C0543700 C0754400 C0956000 C1154100 C1405300 C1607000 C1947600 temp_OUT_2000 C2712700 C2989100 C3391600 C3917500 C5168700 C5745200 C6015100 C6083800 {
	gen OUT_`year' = 1 if `var' >= 4
	replace OUT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often go outing (group with get out of house for HOME A) > 3 per month*/

local year = 1986
quietly foreach var in C0543800 C0754500 C0956100 C1154200 C1405400 C1607100 C1947700 temp_MUSEUM_2000 C2712800 C2989200 C3391700 C3917600 C5168800 C5745300 C6015200 C6083900 {
	gen MUSEUM_`year' = 1 if `var' > 2
	replace MUSEUM_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to museum in PAST YEAR >= 3 times per year*/

local year = 1986
quietly foreach var in C0543900 C0754600 C0956700 C1154800 C1406000 C1607700 C1948300 temp_SEE_DAD_2000 C2713600 C2989900 C3392400 C3918300 C5169500 C5746000 C6015900 C6084600 {
	gen SEE_DAD_`year' = `var' if `var' == 1
	replace SEE_DAD_`year' = 0 if (`var' == 2 | `var' == 0)
	local year = `year' + 2
}	/* see father figure daily*/

local year = 1986
quietly foreach var in C0544000 C0754700 C0956800 C1154900 C1406100 C1607400 C1948400 temp_EAT_2000 C2713700 C2990000 C3392500 C3918400 C5169600 C5746100 C6016000 C6084700 {
	gen EAT_`year' = 1 if (`var' <= 2 & `var' > 0)
	replace EAT_`year' = 0 if (`var' > 2)
	local year = `year' + 2
}	/*how often eat with both mom and dad >= 1 per day*/

*========== Calculate investment indices
drop temp*
quietly forval i = 1986(2)2016 {
	egen INV_B_TOTAL_`i' = rowtotal(*_`i'), missing
	quietly su INV_B_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i' = r(sd)
	gen INV_B_SCALED_`i' = (INV_B_TOTAL_`i' - mean_`i')/sd_`i'
	egen GOODS_B_TOTAL_`i' = rowtotal(BOOK_`i' MAG_`i' TAPE_`i'), missing
	quietly su GOODS_B_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen GOODS_B_SCALED_`i' = (GOODS_B_TOTAL_`i' - mean_`i')/sd_`i'
	gen TIME_B_TOTAL_`i' = INV_B_TOTAL_`i' - GOODS_B_TOTAL_`i'
	quietly su TIME_B_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen TIME_B_SCALED_`i' = (TIME_B_TOTAL_`i' - mean_`i')/sd_`i'
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED* *TOTAL*
reshape long INV_B_SCALED_ GOODS_B_SCALED_ TIME_B_SCALED_ INV_B_TOTAL_ GOODS_B_TOTAL_ TIME_B_TOTAL_, i(C0000100) j(year)
quietly foreach i of varlist *TOTAL* {
	su `i'
	scalar mean = r(mean)
	scalar sd = r(sd)
	gen `i'ALL = (`i' - mean)/sd
}
rename INV_B_TOTAL_ALL INV_ALL
rename GOODS_B_TOTAL_ALL GOODS_ALL
rename TIME_B_TOTAL_ALL TIME_ALL
drop *TOTAL*
gen AGE_AT_INVESTMENT = year - C0005700
rename INV_B_SCALED_ INVESTMENT
rename GOODS_B_SCALED_ GOODS_INV
rename TIME_B_SCALED_ TIME_INV
keep if INVESTMENT != .
replace AGE_AT_INVESTMENT = 5 if AGE_AT_INVESTMENT > 5
replace AGE_AT_INVESTMENT = 3 if AGE_AT_INVESTMENT < 3
*save HOME_B.dta, replace


**# Bookmark #3
/*==============================================================*/
/* Calculate investment indices based on HOME for group C (6-9) */
/*==============================================================*/
use "NLSY79CYA_C.dta", clear

local year = 1986
quietly foreach var in C0544300 C0755000 C0957000 C1155100 C1406700 C1608300 C1949000 C2420800 C2714400 C2990700 C3393200 C3919100 C5170300 C5746800 C6016700 C6085400 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books >= 10*/

local year = 1986
quietly foreach var in C0544400 C0755100 C0957100 C1155200 C1406800 C1608400 C1949100 C2420900 C2714500 C2990800 C3393300 C3919200 C5170400 C5746900 C6016800 C6085500 {
	gen READ_`year' = 1 if `var' >= 4
	replace READ_`year' = 0 if (`var' >= 0 & `var' < 4)
	local year = `year' + 2
}	/*how often read to child >= 1 per week*/

local year = 1986
quietly foreach var in C0545000 C0755700 C0957700 C1155800 C1407400 C1609000 C1949700 C2421500 C2715100 C2991400 C3393900 C3919800 C5171000 C5747500 C6017400 C6086100 {
	gen MUSIC_`year' = 1 if `var' == 1
	replace MUSIC_`year' = 0 if `var' == 0
	local year = `year' + 2
}	/*is there musical instrument at home for child*/

local year = 1986
quietly foreach var in C0545100 C0755800 C0957800 C1155900 C1407500 C1609100 C1949800 C2421600 C2715200 C2991500 C3394000 C3919900 C5171100 C5747600 C6017500 C6086200 {
	gen NEWS_`year' = 1 if `var' == 1
	replace NEWS_`year' = 0 if (`var' >= 0 & `var' != 1)
	local year = `year' + 2
}	/*daily newspaper subscribe?*/

local year = 1986
quietly foreach var in C0545500 C0756200 C0958200 C1156300 C1407900 C1609500 C1950200 C2422000 C2715600 C2991900 C3394400 C3920300 C5171500 C5748000 C6017900 C6086600 {
	gen MUSEUM_`year' = 1 if `var' > 2
	replace MUSEUM_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to museum in PAST YEAR >= 3 times per year*/

local year = 1986
quietly foreach var in C0545600 C0756300 C0958300 C1156400 C1408000 C1609600 C1950300 C2422100 C2715700 C2992000 C3394500 C3920400 C5171600 C5748100 C6018000 C6086700 {
	gen THEATER_`year' = 1 if `var' > 2
	replace THEATER_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to theater (performance) PAST YEAR >= 3 times per year*/

local year = 1986
quietly foreach var in C0545700 C0756400 C0958400 C1156500 C1408100 C1609700 C1950400 C2422200 C2715800 C2992100 C3394600 C3920500 C5171700 C5748200 C6018100 C6086800 {
	gen VISIT_`year' = 1 if `var' >= 4
	replace VISIT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often see friends, relatives >= 2 times a month*/

local year = 1986
quietly foreach var in C0545900 C0756600 C0959000 C1157100 C1408700 C1610300 C1951000 C2422900 C2716600 C2992800 C3395300 C3921200 C5172400 C5748900 C6018800 C6087500 {
	gen WITH_DAD_`year' = 1 if (`var' <= 2 & `var' >= 0)
	replace WITH_DAD_`year' = 0 if `var' > 2
	local year = `year' + 2
}	/*how often spend time with dad >= 4 times a week*/

local year = 1986
quietly foreach var in C0546000 C0756700 C0959100 C1157200 C1408800 C1610400 C1951100 C2423000 C2716700 C2992900 C3395400 C3921300 C5172500 C5749000 C6018900 C6087600 {
	gen DAD_OUTDOOR_`year' = 1 if (`var' <= 3 & `var' >= 0)
	replace DAD_OUTDOOR_`year' = 0 if `var' > 3
	local year = `year' + 2
}	/*how often spend time with dad outdoors >= once a week*/

local year = 1986
quietly foreach var in C0546200 C0756900 C0959300 C1157400 C1409000 C1610500 C1951300 C2423200 C2717000 C2993100 C3395600 C3921500 C5172700 C5749200 C6019100 C6087800 {
	gen DISCUSS_`year' = 1 if `var' == 1
	replace DISCUSS_`year' = 0 if (`var' >= 0 & `var' != 1)
	local year = `year' + 2
}	/*whether discuss TV programs*/


*========== Calculate investment indices
quietly forval i = 1986(2)2016 {
	egen INV_C_TOTAL_`i' = rowtotal(*_`i'), missing
	quietly su INV_C_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i' = r(sd)
	gen INV_C_SCALED_`i' = (INV_C_TOTAL_`i' - mean_`i')/sd_`i'
	egen GOODS_C_TOTAL_`i' = rowtotal(BOOK_`i' MUSIC_`i' NEWS_`i'), missing
	quietly su GOODS_C_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen GOODS_C_SCALED_`i' = (GOODS_C_TOTAL_`i' - mean_`i')/sd_`i'
	gen TIME_C_TOTAL_`i' = INV_C_TOTAL_`i' - GOODS_C_TOTAL_`i'
	quietly su TIME_C_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen TIME_C_SCALED_`i' = (TIME_C_TOTAL_`i' - mean_`i')/sd_`i'
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED* *TOTAL*
reshape long INV_C_SCALED_ GOODS_C_SCALED_ TIME_C_SCALED_ INV_C_TOTAL_ GOODS_C_TOTAL_ TIME_C_TOTAL_, i(C0000100) j(year)
quietly foreach i of varlist *TOTAL* {
	su `i'
	scalar mean = r(mean)
	scalar sd = r(sd)
	gen `i'ALL = (`i' - mean)/sd
}
rename INV_C_TOTAL_ALL INV_ALL
rename GOODS_C_TOTAL_ALL GOODS_ALL
rename TIME_C_TOTAL_ALL TIME_ALL
drop *TOTAL*
gen AGE_AT_INVESTMENT = year - C0005700
rename INV_C_SCALED_ INVESTMENT
rename GOODS_C_SCALED_ GOODS_INV
rename TIME_C_SCALED_ TIME_INV
keep if INVESTMENT != .
replace AGE_AT_INVESTMENT = 9 if AGE_AT_INVESTMENT > 9
replace AGE_AT_INVESTMENT = 6 if AGE_AT_INVESTMENT < 6
*save HOME_C.dta, replace


**# Bookmark #4
/*================================================================*/
/* Calculate investment indices based on HOME for group D (10-14) */
/*================================================================*/
use "NLSY79CYA_D.dta", clear

*===== Not HOME section
local year = 1988
quietly foreach var in C0722200 C0932800 C1123000 C1348800 C1570100 C1908700 C2445100 C2751400 C3030900 C3356200 C3859900 C5108100 C5685400 C5957300 {
	gen NH_MOVIE_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: movie with parents last month?*/

local year = 1988
quietly foreach var in C0722300 C0932900 C1123100 C1348900 C1570200 C1908800 C2445200 C2751401 C3030901 C3356201 C3859901 C5108101 C5685401 C5957301 {
	gen NH_DINNER_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: dinner with parents last month?*/

local year = 1988
quietly foreach var in C0722400 C0933000 C1123200 C1349000 C1570300 C1908900 C2445300 C2751402 C3030902 C3356202 C3859902 C5108102 C5685402 C5957302 {
	gen NH_SHOPPING_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: shopping with parents last month?*/

local year = 1988
quietly foreach var in C0722500 C0933100 C1123300 C1349100 C1570400 C1909000 C2445400 C2751405 C3030905 C3356205 C3859905 C5108105 C5685405 C5957305 {
	gen NH_OUTING_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: outing with parents last month (type other)?*/

local year = 1988
quietly foreach var in C0722700 C0933300 C1123500 C1349300 C1570600 C1909200 C2445600 C2751500 C3031000 C3356300 C3860000 C5108200 C5685500 C5957400 {
	gen NH_DO_TOGETHER_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: do something together with parents LAST WEEK?*/

local year = 1988
quietly foreach var in C0722900 C0933500 C1123700 C1349500 C1570800 C1909400 C2445800 C2751502 C3031002 C3356302 C3860002 C5108202 C5685502 C5957402 {
	gen NH_GAME_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: play game or sports together with parents LAST WEEK?*/

local year = 1988
quietly foreach var in C0722800 C0933400 C1123600 C1349400 C1570700 C1909300 C2445700 C2751501 C3031001 C3356301 C3860001 C5108201 C5685501 C5957401 {
	gen NH_SCHOOLWORK_`year' = `var' if `var' >= 0
	local year = `year' + 2
}	/*Not HOME: do school work together with parents LAST WEEK?*/


*===== HOME section
local year = 1988
quietly foreach var in C0759500 C0962000 C1160200 C1412200 C1613800 C1954600 C2426700 C2719700 C2995800 C3398300 C3924200 C5175400 C5751900 C6021800 C6090400 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books >= 10*/

local year = 1988
quietly foreach var in C0760200 C0962700 C1160900 C1412900 C1614500 C1955300 C2427400 C2720400 C2996500 C3399000 C3924900 C5176100 C5752600 C6022500 C6091100 {
	gen MUSIC_`year' = 1 if `var' == 1
	replace MUSIC_`year' = 0 if `var' == 0
	local year = `year' + 2
}	/*is there musical instrument at home for child*/

local year = 1988
quietly foreach var in C0760300 C0962800 C1161000 C1413000 C1614600 C1955400 C2427500 C2720500 C2996600 C3399100 C3925000 C5176200 C5752700 C6022600 C6091200 {
	gen NEWS_`year' = 1 if `var' == 1
	replace NEWS_`year' = 0 if (`var' >= 0 & `var' != 1)
	local year = `year' + 2
}	/*daily newspaper subscribe?*/

local year = 1988
quietly foreach var in C0760700 C0963200 C1161400 C1413400 C1615000 C1955800 C2427900 C2720900 C2997000 C3399500 C3925400 C5176600 C5753100 C6023000 C6091600 {
	gen MUSEUM_`year' = 1 if `var' > 2
	replace MUSEUM_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to museum in PAST YEAR >= 3 times per year*/

local year = 1988
quietly foreach var in C0760800 C0963300 C1161500 C1413500 C1615100 C1955900 C2428000 C2721000 C2997100 C3399600 C3925500 C5176700 C5753200 C6023100 C6091700 {
	gen THEATER_`year' = 1 if `var' > 2
	replace THEATER_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to theater (performance) PAST YEAR >= 3 times per year*/

local year = 1988
quietly foreach var in C0760900 C0963400 C1161600 C1413600 C1615200 C1956000 C2428100 C2721100 C2997200 C3399700 C3925600 C5176800 C5753300 C6023200 C6091800 {
	gen VISIT_`year' = 1 if `var' >= 4
	replace VISIT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often see friends, relatives >= 2 times a month*/

local year = 1988
quietly foreach var in C0761100 C0964000 C1162200 C1414200 C1615800 C1956600 C2428800 C2721900 C2997900 C3400400 C3926300 C5177500 C5754000 C6023900 C6092500 {
	gen WITH_DAD_`year' = 1 if (`var' <= 2 & `var' >= 0)
	replace WITH_DAD_`year' = 0 if `var' > 2
	local year = `year' + 2
}	/*how often spend time with dad >= 4 times a week*/

local year = 1988
quietly foreach var in C0761200 C0964100 C1162300 C1414300 C1615900 C1956700 C2428900 C2722000 C2998000 C3400500 C3926400 C5177600 C5754100 C6024000 C6092600 {
	gen DAD_OUTDOOR_`year' = 1 if (`var' <= 3 & `var' >= 0)
	replace DAD_OUTDOOR_`year' = 0 if `var' > 3
	local year = `year' + 2
}	/*how often spend time with dad outdoors >= once a week*/

local year = 1988
quietly foreach var in C0761400 C0964300 C1162500 C1414500 C1616000 C1956900 C2429100 C2722300 C2998200 C3400700 C3926600 C5177800 C5754300 C6024200 C6092800 {
	gen DISCUSS_`year' = 1 if `var' == 1
	replace DISCUSS_`year' = 0 if (`var' >= 0 & `var' != 1)
	local year = `year' + 2
}	/*whether discuss TV programs*/

quietly forval i = 1988(2)2016 {
	egen INV_D_TOTAL_`i' = rowtotal(*_`i'), missing
	quietly su INV_D_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i' = r(sd)
	gen INV_D_SCALED_`i' = (INV_D_TOTAL_`i' - mean_`i')/sd_`i'
	egen GOODS_D_TOTAL_`i' = rowtotal(BOOK_`i' MUSIC_`i' NEWS_`i'), missing
	quietly su GOODS_D_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen GOODS_D_SCALED_`i' = (GOODS_D_TOTAL_`i' - mean_`i')/sd_`i'
	gen TIME_D_TOTAL_`i' = INV_D_TOTAL_`i' - GOODS_D_TOTAL_`i'
	quietly su TIME_D_TOTAL_`i'
	scalar mean_`i' = r(mean)
	scalar sd_`i'= r(sd)
	gen TIME_D_SCALED_`i' = (TIME_D_TOTAL_`i' - mean_`i')/sd_`i'
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED* *TOTAL*
reshape long INV_D_SCALED_ GOODS_D_SCALED_ TIME_D_SCALED_ INV_D_TOTAL_ GOODS_D_TOTAL_ TIME_D_TOTAL_, i(C0000100) j(year)
quietly foreach i of varlist *TOTAL* {
	su `i'
	scalar mean = r(mean)
	scalar sd = r(sd)
	gen `i'ALL = (`i' - mean)/sd
}
rename INV_D_TOTAL_ALL INV_ALL
rename GOODS_D_TOTAL_ALL GOODS_ALL
rename TIME_D_TOTAL_ALL TIME_ALL
drop *TOTAL*
gen AGE_AT_INVESTMENT = year - C0005700
rename INV_D_SCALED_ INVESTMENT
rename GOODS_D_SCALED_ GOODS_INV
rename TIME_D_SCALED_ TIME_INV
keep if INVESTMENT != .
replace AGE_AT_INVESTMENT = 14 if AGE_AT_INVESTMENT > 14
replace AGE_AT_INVESTMENT = 10 if AGE_AT_INVESTMENT < 10
*save HOME_D.dta, replace

**# Bookmark #5
/*=============================================*/
/*========== Reshape supplement data ==========*/
/*=============================================*/
use NLSY79CYA_supplement.dta, clear

local year = 1991
quietly foreach i of varlist C0127410 C0127610 C0127810 C0127910 C0128010 C1987300 C2493300 C2521100 C2791600 C3101100 C3603400 C3983400 C5527300 C5803600 {
	rename `i' NO_UNDER_18_`year'
	if `year' < 1994 local year = `year' + 1
	if `year' >= 1994 local year = `year' + 2
}

local year 1986
quietly foreach i of varlist C0571300 C0791700 C0991700 C1192000 C1499800 C1556700 C1792400 C2502700 C2531200 C2802500 C3110500 C3614200 C3992800 C5536800 C5812600 {
	rename `i' COG_SCORE_`year'
	local year = `year' + 2
}

local year = 1986
quietly foreach i of varlist C0571400 C0791800 C0991800 C1192100 C1499900 C1556800 C1792500 C2502900 C2531400 C2802700 C3110700 C3614400 C3993000 C5537000 C5812800 {
	rename `i' EMO_SCORE_`year'
	local year = `year' + 2
}

local year = 1986
quietly foreach i of varlist C0580100 C0799600 C0998800 C1198800 C1507800 C1564700 C1800100 C2503700 C2532200 C2803000 C3111500 C3615200 C3993800 C5537800 C5813600 {
	rename `i' PIAT_MATH_`year'
	local year = `year' + 2
}

local year = 1986
quietly foreach i of varlist C0580400 C0799900 C0999100 C1199100 C1508100 C1565000 C1800400 C2503900 C2532400 C2803200 C3111700 C3615400 C3994000 C5538000 C5813800 {
	rename `i' PIAT_REC_`year' 
	local year = `year' + 2
}

local year = 1986
quietly foreach i of varlist C0580700 C0800200 C0999400 C1199400 C1508400 C1565300 C1800700 C2504300 C2532800 C2803600 C3112100 C3615800 C3994400 C5538400 C5814200 {
	rename `i' PIAT_COMP_`year'
	local year = `year' + 2
}

reshape long NO_UNDER_18_ COG_SCORE_ EMO_SCORE_ PIAT_MATH_ PIAT_COMP_ PIAT_REC_, i(C0000100) j(year)
rename *_ *
save NLSY79CYA_supplement, replace

**# Bookmark #6
/*======================================*/
/*========== Merge child data ==========*/
/*======================================*/
use HOME_A, clear
append using HOME_B HOME_C HOME_D, gen(source)
gen AGE_CAT = source
label define AGE_CAT 0 "Group A (0-2)" 1 "Group B (3-5)" 2 "Group C(6-9)" 3 "Group D (10-14)"
label values AGE_CAT AGE_CAT
drop source
sort C0000100 year
merge m:m C0000100 year C0000200 C0005300 C0005400 C0005700 Y2267000 using NLSY79CYA_supplement, keep(match) nogen
save MERGE_CHILD.dta, replace

**# Bookmark #7
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

*save NLSY79_long.dta, replace

/* INACCURATE UNDERLYING THEORY
gen alpha1 = 1-ln(2)/ln(10000/WTA_10K_IMPUTED)
replace alpha1 = 1 if WTA_10K_IMPUTED == 0
replace alpha1 = -6 if WTA_10K_IMPUTED > 9000 & WTA_10K_IMPUTED != .

gen alpha2 = 1-ln(2)/ln(1000/WTA_1K_IMPUTED)
replace alpha2 = 1 if WTA_1K_IMPUTED == 0
replace alpha2 = -6 if WTA_1K_IMPUTED > 900 & WTA_1K_IMPUTED != .
*/

**# Bookmark #8
/*===================================================*/
/*========== Merge child & mom data (wide) ==========*/
/*===================================================*/
use MERGE_CHILD, clear
rename C0000200 R0000100
merge m:1 R0000100 using NLSY79_main.dta, keep(match) nogen
order C0000100 year C0005400 C0005300 C0005700 R0000100 R0214800 R0000149 R0173600 
replace T2274100 = T1215600 if T2274100 < 0
gen DEGREE_CAT = 0 if T2274100 == 0 & T3108600 < 9 & T3108600 >= 0
replace DEGREE_CAT = 1 if T2274100 == 0 & T3108600 >= 9 & T3108600 <= 12
replace DEGREE_CAT = 2 if T2274100 == 1 & T3108600 == 12
replace DEGREE_CAT = 3 if (T2274100 == 1 | T2274100 == 2) & T3108600 > 12 & T3108600 < 90
replace DEGREE_CAT = 4 if (T2274100 == 3 | T2274100 == 4)
replace DEGREE_CAT = 5 if (T2274100 >= 5 & T2274100 < 8)
label define DEGREE_CAT 0 "No high school" 1 "Some high school" 2 "High school" 3 "Some college" 4 "College" 5 "Postgraduate"
label values DEGREE_CAT DEGREE_CAT
save POOL.dta, replace

**# Bookmark #9
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

**# Bookmark #10
/*==========================================*/
/*========== Data analysis (wide) ==========*/
/*==========================================*/
use POOL.dta, clear
/* Using 1993 risk aversion question -> investment in 1994*/
gen RISK_AVERSE_1993 = 0 if R4395800 >= 0
replace RISK_AVERSE_1993 = 1 if R4395800 == 0 & R4396000 == 0 & year == 1994
replace RISK_AVERSE_1993 = 2 if R4395800 == 0 & R4396000 == 1 & year == 1994
replace RISK_AVERSE_1993 = 3 if R4395800 == 1 & R4395900 == 0 & year == 1994
replace RISK_AVERSE_1993 = 4 if R4395800 == 1 & R4395900 == 1 & year == 1994
replace RISK_AVERSE_1993 = . if RISK_AVERSE_1993 == 0
label define RISK_1993 1 "Very strongly risk averse" 2 "Strongly risk averse" 3 "Moderately risk averse" 4 "Weakly risk averse"
label values RISK_AVERSE_1993 RISK_1993


/* Using 2010 risk-aversion questions*/
gen RISK_AVERSE_2010 = 0 if T3094500 >= 0
replace RISK_AVERSE_2010 = 1 if T3094500 == 1 & T3094700 == 1 & year == 2010
replace RISK_AVERSE_2010 = 2 if T3094500 == 1 & T3094700 == 2 & year == 2010
replace RISK_AVERSE_2010 = 3 if T3094500 == 2 & T3094600 == 1 & year == 2010
replace RISK_AVERSE_2010 = 4 if T3094500 == 2 & T3094600 == 2 & year == 2010
replace RISK_AVERSE_2010 = . if RISK_AVERSE == 0 


**# Bookmark #11
/*==========================================*/
/*========== Data analysis (long) ==========*/
/*==========================================*/
use POOL_long.dta, clear

/* Generate a categorical variable for risk aversion based on 1993-2006 questions*/
gen RISK_AVERSE1 = .
replace RISK_AVERSE1 = 4 if RISK1_a == 0 & RISK1_c == 0
replace RISK_AVERSE1 = 3 if RISK1_a == 0 & RISK1_c == 1
replace RISK_AVERSE1 = 2 if RISK1_a == 1 & RISK1_b == 0
replace RISK_AVERSE1 = 1 if RISK1_a == 1 & RISK1_b == 1
label define RISK1 4 "Very strongly risk averse" 3 "Strongly risk averse" 2 "Moderately risk averse" 1 "Weakly risk averse"
label values RISK_AVERSE1 RISK1

gen ln_INCOME = log(HH_INCOME)

/*Drop duplicate values
bys C0000100 year: gen dup = cond(_N==1, 0, _n)
tabulate dup
drop if dup > 1
*/

/* Count the number of siblings one has */
by R0000100 C0000100, sort: gen NO_SIB = _n == 1
by R0000100: replace NO_SIB = sum(NO_SIB)
by R0000100: replace NO_SIB = NO_SIB[_N] - 1


local identifier = 1
quietly foreach i of varlist INV_ALL GOODS_ALL TIME_ALL {
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & DEGREE_CAT != ., absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & (DEGREE_CAT == 0 | DEGREE_CAT == 1), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_a
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & (DEGREE_CAT == 2 | DEGREE_CAT == 3), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_b
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & (DEGREE_CAT == 4 | DEGREE_CAT == 5), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_c
	
	local ++identifier
}

quietly foreach i of varlist COG_SCORE EMO_SCORE {
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & `i' >= 0 & (DEGREE_CAT != .), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & `i' >= 0 & (DEGREE_CAT == 0 | DEGREE_CAT == 1), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_a
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & `i' >= 0 & (DEGREE_CAT == 2 | DEGREE_CAT == 3), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_b
	
	reghdfe `i' i.RISK_AVERSE1 POVERTY ln_INCOME R0618300 i.C00054 i.C00053 NO_UNDER_18 NO_SIB C0007000 R0006500 R0007900 if POVERTY >= 0 & R0618300 >= 0 & NO_UNDER_18 >= 0 & C0007000 >= 0 & R0006500 >= 0 & R0007900 >= 0 & `i' >= 0 & (DEGREE_CAT == 4 | DEGREE_CAT == 5), absorb(year AGE_CAT) vce(cluster R0000100)
	eststo model_`identifier'_c
	
	local ++identifier
}


/*==================================================================*/
/*==================== Output regression tables ====================*/
/*==================================================================*/
* 1 - HOME SCORE (normalised)
* 2 - Goods investment (normalised) (taken from HOME SECTION)
* 3 - Time investment (normalised) (taken from HOME SECTION)
* 4 - Cognitive stimulation (in %) (taken from HOME SECTION)
* 5 - Emotional support (in %) (taken from HOME SECTION)

forvalues i = 1(1)5 {
	if `i' == 1 esttab model_`i'*, keep(2.RISK_AVERSE1 3.RISK_AVERSE1 4.RISK_AVERSE1) mtitle("All" "HS dropout" "HS" "College") se star(* 0.10 ** 0.05 *** 0.01) label nonum 
	if `i' > 1 esttab model_`i'*, keep(2.RISK_AVERSE1 3.RISK_AVERSE1 4.RISK_AVERSE1) mtitle("All" "HS dropout" "HS" "College") se star(* 0.10 ** 0.05 *** 0.01) label nonum
}

/* 
forvalues i = 1(1)5 {
	if `i' == 1 esttab model_`i'* using tex\regression, keep(2.RISK_AVERSE1 3.RISK_AVERSE1 4.RISK_AVERSE1) mtitle("All" "HS dropout" "HS" "College") se star(* 0.10 ** 0.05 *** 0.01) label nonum booktabs replace
	if `i' > 1 esttab model_`i'* using tex\regression, keep(2.RISK_AVERSE1 3.RISK_AVERSE1 4.RISK_AVERSE1) mtitle("All" "HS dropout" "HS" "College") se star(* 0.10 ** 0.05 *** 0.01) label nonum booktabs append
}
*/

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



