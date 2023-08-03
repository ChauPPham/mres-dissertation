/* The following code imputes CRRA coefficient following Kimball, 2008 and Kimball, 2009 
*/
program define risk_mle
	args lnf mu sigma
	quietly replace `lnf' = log(normal((log(0.27)-`mu')/`sigma') - normal((log(10^-9)-`mu')/`sigma')) if $ML_y1 == 4
	quietly replace `lnf' = log(normal((log(0.5)-`mu')/`sigma') - normal((log(0.27)-`mu')/`sigma')) if $ML_y1 == 3
	quietly replace `lnf' = log(normal((log(1)-`mu')/`sigma') - normal((log(0.5)-`mu')/`sigma')) if $ML_y1 == 2
	quietly replace `lnf' = log(normal((log(10^9)-`mu')/`sigma') - normal((log(10^-9)-`mu')/`sigma')) if $ML_y1 == 1
end

foreach i in 1994 2002 2004 2006 {
	ml model lf risk_mle (RISK_AVERSE1 =) (RISK_AVERSE1=) if year == `i', robust
*	ml check
	ml maximize, nolog
	eststo mle_`i'
	mat temp = e(b)
	scalar mu_`i' = temp[1,1]
	scalar sigma_`i' = temp[1,2]
}

/* Output estimates of MLE models on gamma coefficient */
esttab mle_*, nonum mtitle("1994" "2002" "2004" "2006") se star(* 0.10 ** 0.05 *** 0.01)

gen gamma = .
foreach i in 1994 2002 2004 2006 {
	replace gamma = exp(-mu_`i'+sigma_`i'^2/2)*(normal((log(0.27)-mu_`i'+sigma_`i'^2)/sigma_`i')-normal((log(10^-9)-mu_`i'+sigma_`i'^2)/sigma_`i'))/(normal((log(0.27)-mu_`i')/sigma_`i')-normal((log(10^-9)-mu_`i')/sigma_`i')) if year == `i' & RISK_AVERSE1 == 4
	replace gamma = exp(-mu_`i'+sigma_`i'^2/2)*(normal((log(0.5)-mu_`i'+sigma_`i'^2)/sigma_`i')-normal((log(0.27)-mu_`i'+sigma_`i'^2)/sigma_`i'))/(normal((log(0.5)-mu_`i')/sigma_`i')-normal((log(0.27)-mu_`i')/sigma_`i')) if year == `i' & RISK_AVERSE1 == 3
	replace gamma = exp(-mu_`i'+sigma_`i'^2/2)*(normal((log(1)-mu_`i'+sigma_`i'^2)/sigma_`i')-normal((log(0.5)-mu_`i'+sigma_`i'^2)/sigma_`i'))/(normal((log(1)-mu_`i')/sigma_`i')-normal((log(0.5)-mu_`i')/sigma_`i')) if year == `i' & RISK_AVERSE1 == 2
	replace gamma = exp(-mu_`i'+sigma_`i'^2/2)*(normal((log(10^9)-mu_`i'+sigma_`i'^2)/sigma_`i')-normal((log(1)-mu_`i'+sigma_`i'^2)/sigma_`i'))/(normal((log(10^9)-mu_`i')/sigma_`i')-normal((log(1)-mu_`i')/sigma_`i')) if year == `i' & RISK_AVERSE1 == 1
}