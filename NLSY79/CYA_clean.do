**# Bookmark #1 Investment indice HOME A
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

**# Bookmark #2 Investment indice HOME B
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


**# Bookmark #3 Investment indice HOME C
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


**# Bookmark #4 Investment indice HOME D
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

**# Bookmark #5 Supplement data
/*=============================================*/
/*========== Reshape supplement data ==========*/
/*=============================================*/
use NLSY79CYA_supplement.dta, clear

local year = 1991
quietly foreach i of varlist C0127410 C0127610 C0127810 C0127910 C0128010 C1987300 C2493300 C2521100 C2791600 C3101100 C3603400 C3983400 C5527300 C5803600 {
	rename `i' NO_UNDER_18_`year'
	if `year' >= 1994 local year = `year' + 2
	if `year' < 1994 local year = `year' + 1
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

**# Bookmark #6 Merging child datasets
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
merge m:m C0000100 year C0000200 C0005300 C0005400 C0005700 Y2267000 using NLSY79CYA_supplement2, keep(match) nogen
merge m:m C0000100 year C0000200 C0005300 C0005400 C0005700 Y2267000 using NLSY79CYA_MONTH_AGE, keep(match) nogen

* since there are multiple entries in a single year for some individuals
* exclude duplicated years depending on the AGE (MONTH) of child DURING MOTHER'S SUPPLEMENT
* MOTHER SUPPLEMENT is when data on investment is collected

bys C0000100 year: gen dup = cond(_N==1, 0, _n)

gen AGE_FLOOR = .
replace AGE_FLOOR = 0 if AGE_CAT == 0
replace AGE_FLOOR = 36 if AGE_CAT == 1
replace AGE_FLOOR = 72 if AGE_CAT == 2
replace AGE_FLOOR = 120 if AGE_CAT == 3

gen AGE_CEIL = .
replace AGE_CEIL = 35 if AGE_CAT == 0
replace AGE_CEIL = 71 if AGE_CAT == 1
replace AGE_CEIL = 119 if AGE_CAT == 2
replace AGE_CEIL = 179 if AGE_CAT == 3

drop if dup != 0 & (AGE_MONTH > AGE_CEIL | AGE_MONTH < AGE_FLOOR)

drop AGE_FLOOR AGE_CEIL dup

/* Counting the number of siblings one has by year */
by C0000200 C0000100 (year), sort: gen NO_SIB = _n == 1
sort C0000200 year
by C0000200: replace NO_SIB = sum(NO_SIB)
replace NO_SIB = NO_SIB - 1
bys C0000200 year: egen max_temp = max(NO_SIB)
replace NO_SIB = max_temp
drop max_temp
sort C0000100 year

save MERGE_CHILD.dta, replace
