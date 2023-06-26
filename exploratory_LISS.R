# Date created: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding with LISS data for MRES dissertation

# Last changes: 06/26/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("haven")
require("tidyverse")
require("base")
require("nleqslv")

background <- read_dta("LISS data/avars_201001_EN_2.0p.dta")  # background data
family <- read_dta("LISS data/cf10c_EN_1.0p.dta")             # family data
ambiguity <- read_dta("LISS data/bm10a_EN_1.0p.dta")          # ambiguity data
timeuse <- read_dta("LISS data/tp19a_EN_1.0p.dta")

background_short <- select(background, -c(lftdcat, woonvorm, brutocat, nettocat, doetmee))
pool <- right_join(background_short, ambiguity, by = c("nomem_encr" = "nomem_encr", "nohouse_encr" = "nohouse_encr"))



##========== Calculate ambiguity indices
# NOTE: THE FINAL NUMBER OF WINNING BALLS IN THE RISKY BOX IS CALCULATED IN bm10a043 (for m_0.5)
# bm10a065 (for m_0.1) and bm10a087 (for m_0.9)

# m(0.5), AA(0.5) = 0.5 - m(0.5)
pool <- pool %>% mutate(m_0.5 = bm10a043/100, AA_0.5 = 0.5 - m_0.5)

# m(0.1), AA(0.1) = 0.1 - m(0.1) 
pool <- pool %>% mutate(m_0.1 = bm10a065/100, AA_0.1 = 0.1 - m_0.1)

# m(0.9), AA(0.9) = 0.9 - m(0.9)
pool <- pool %>% mutate(m_0.9 = bm10a087/100, AA_0.9 = 0.9 - m_0.9)



##========== Calculate risk-aversion indices
# Coefficients of risk aversion (more specifically CRRA) is derived using method of 
# Tanaka et al. (2010) using Prelec (1998) value function to evaluate prospects
# Value of prospect: v(y) + pi(p)(v(x) - v(y))
# where v(x) = x^sigma, sigma is the coefficient of risk aversion
# pi(p) = 1/exp(log(1/p)^alpha), pi(p) is the probability weighting function; p is probability of outcome x
# when involving sure gain, p = 1 -> Value of prospect reduces to v(x) = x^sigma

# bm10a107 records the prize of the sure gain box at last iteration -> certainty equivalence for 1000 risky box while the risky box is fixed (get 0 prob 0.5 and get 1000 prob 0.5)
# bm10a128 records the prize of the sure gain box at last iteration -> certainty equivalence for 18000 risky box while the risky box is fixed (get 0 prob 0.5 and get 18000 prob 0.5)
# use the power utility: u(x) = x^sigma
# CE ~ 1000_p_0 implies w(p) = CE^sigma/1000^sigma
# Using 2 questions on CE, run a linear regression of the form log(CE) = a + b*log(stake)
# where a = 1/sigma*log(w(p)), if assume EU -> w(p) = 0.5
pool$sigma1 <- 0
pool$sigma2 <- 0

for (i in 1:nrow(pool)) {
  data_temp <- tibble(stake = c(1000, 18000), CE = c(pool$bm10a107[i], pool$bm10a128[i]))
  test <- lm(log(CE) ~ log(stake), data = data_temp)
  inter <- test$coefficients[1]
  beta <- test$coefficients[2]
  pool[i, "sigma1"] <- 1/((inter/beta)/log(0.5))
}

pool <- pool %>% mutate(CRRA_coef = 1 - sigma1)




#========== Linear regression
useful_variables <- c(1:10, 17:28, 31, 175:180, 182:183) # If merge before calculating 
# the ambiguity indices, need to alter this slightly, potentially from 175

# To get the usable data, I choose households that have at least one children living 
# in household in time-use survey (2019), and filter out households that already have
# children leaving the household. To account for educational expenditures, I also filter out
# NAs values of variable tp19a045 which records monthly schooling fees that households pay

usable <- inner_join(pool, timeuse) %>% mutate(child_dif = tp19a003 - aantalki
) %>% filter(child_dif >= 0, (aantalki+tp19a003 != 0), !is.na(tp19a045)
) %>% select(all_of(useful_variables), child_dif, CRRA_coef, tp19a045, simpc) 
usable$oplcat <- factor(usable$oplcat, levels = c("1", "2", "3", "4", "5", "6"),
                        labels = c("primary", "vmbo", "havo/vwo", "mbo", "hbo", "wo"))

test <- lm(tp19a045 ~ AA_0.1 + AA_0.5 + AA_0.9 + CRRA_coef + bm10a004 + oplcat + nettohh_f + simpc, data = usable)
summary(test)

# write.csv(pool, "LISS data/pool.csv")
# write.csv(usable, "LISS data/usable.csv")
# pool %>% select(bm10a107, sigma1, alpha1, bm10a128, sigma2, alpha2, coef_risk_low, coef_risk_high)












