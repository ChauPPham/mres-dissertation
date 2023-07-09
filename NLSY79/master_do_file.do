* ssc install project

* project, setmaster("E:\GitHub\mres-dissertation\NLSY79\master_do_file.do")

/*========================================================*/
/* Calculate investment indices based on HOME for group A */
/*========================================================*/
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
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED*
*save HOME_A.dta, replace

/*========================================================*/
/* Calculate investment indices based on HOME for group B */
/*========================================================*/
use "NLSY79CYA_B.dta", clear

local year = 1986
gen temp_READ_2000 = C2266600 if C2266600 >= 0
replace temp_READ_2000 = C2417100 if C2417100 >= 0 
quietly foreach var in C0542000 C0752400 C0954000 C1152100 C1403300 C1604900 C1945500 temp_READ_2000 C2711400 C2987800 C3390300 C3916200 C5167400 C5743900 C6013800 C6082500 {
	gen READ_`year' = 1 if `var' >= 4
	replace READ_`year' = 0 if (`var' >= 0 & `var' < 4)
	local year = `year' + 2
} /*how often read to child >= 1 per week*/

local year = 1986
gen temp_BOOK_2000 = C2266700 if C2266700 >= 0
replace temp_BOOK_2000 = C2417200 if C2417200 >= 0 
quietly foreach var in C0542100 C0752500 C0954100 C1152200 C1403400 C1605000 C1945600 temp_BOOK_2000 C2711500 C2987900 C3390400 C3916300 C5167500 C5744000 C6013900 C6082600 {
	gen BOOK_`year' = 1 if `var' >= 4
	replace BOOK_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how many children books >= 10*/

local year = 1986
gen temp_MAG_2000 = C2266800 if C2266800 >= 0
replace temp_MAG_2000 = C2417300 if C2417300 >= 0
quietly foreach var in C0542200 C0752600 C0954200 C1152300 C1403500 C1605100 C1945700 temp_MAG_2000 C2711600 C2988000 C3390500 C3916400 C5167600 C5744100 C6014000 C6082700 {
	gen MAG_`year' = 1 if `var' >= 4
	replace MAG_`year' = 0 if (`var' < 4 & `var' > 0)
	local year = `year' + 2
}	/*how many magazine >= 3 regularly*/

local year = 1986
gen temp_TAPE_2000 = C2266900 if C2266900 >= 0 
replace temp_TAPE_2000 = C2417400 if C2417400 >= 0
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
gen temp_OUT_2000 = C2267900 if C2267900 >= 0
replace temp_OUT_2000 = C2419300 if C2419300 >= 0
quietly foreach var in C0543700 C0754400 C0956000 C1154100 C1405300 C1607000 C1947600 temp_OUT_2000 C2712700 C2989100 C3391600 C3917500 C5168700 C5745200 C6015100 C6083800 {
	gen OUT_`year' = 1 if `var' >= 4
	replace OUT_`year' = 0 if (`var' < 4 & `var' >= 0)
	local year = `year' + 2
}	/*how often go outing (group with get out of house for HOME A) > 3 per month*/

local year = 1986
gen temp_MUSEUM_2000 = C2268000 if C2268000 >= 0
replace temp_MUSEUM_2000 = C2419400 if C2419400 >= 0
quietly foreach var in C0543800 C0754500 C0956100 C1154200 C1405400 C1607100 C1947700 temp_MUSEUM_2000 C2712800 C2989200 C3391700 C3917600 C5168800 C5745300 C6015200 C6083900 {
	gen MUSEUM_`year' = 1 if `var' > 2
	replace MUSEUM_`year' = 0 if (`var' >= 0 & `var' <= 2)
	local year = `year' + 2
}	/*how often go to museum in PAST YEAR >= 3 times per year*/

local year = 1986
gen temp_SEE_DAD_2000 = C2268800 if C2268800 >= 0
replace temp_SEE_DAD_2000 = C2420100 if C2420100 >= 0
quietly foreach var in C0543900 C0754600 C0956700 C1154800 C1406000 C1607700 C1948300 temp_SEE_DAD_2000 C2713600 C2989900 C3392400 C3918300 C5169500 C5746000 C6015900 C6084600 {
	gen SEE_DAD_`year' = `var' if `var' == 1
	replace SEE_DAD_`year' = 0 if (`var' == 2 | `var' == 0)
	local year = `year' + 2
}	/* see father figure daily*/

local year = 1986
gen temp_EAT_2000 = C2268900 if C2268900 >= 0
replace temp_EAT_2000 = C2420200 if C2420200 >= 0
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
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED*
*save HOME_B.dta, replace


/*========================================================*/
/* Calculate investment indices based on HOME for group C */
/*========================================================*/
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
}

keep C0000100 C0000200 C0005300 C0005400 C0005700 Y2267000 *SCALED*
*save HOME_C.dta, replace


/*========================================================*/
/* Calculate investment indices based on HOME for group D */
/*========================================================*/
use "NLSY79CYA_D.dta", clear
