# Date created: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding with LISS data for MRES dissertation

# Last changes: 06/21/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("haven")
require("tidyverse")
require("base")

background <- read_dta("LISS data/avars_201001_EN_2.0p.dta")  # background data
family <- read_dta("LISS data/cf10c_EN_1.0p.dta")             # family data
ambiguity <- read_dta("LISS data/bm10a_EN_1.0p.dta")          # ambiguity data
timeuse <- read_dta("LISS data/tp19a_EN_1.0p.dta")

background_short <- select(background, -c(lftdcat, woonvorm, brutocat, nettocat, doetmee))
pool <- right_join(background_short, ambiguity, by = c("nomem_encr" = "nomem_encr", "nohouse_encr" = "nohouse_encr"))



##===== Calculate ambiguity indices
# NOTE: THE FINAL NUMBER OF WINNING BALLS IN THE RISKY BOX IS CALCULATED IN bm10a043 (for m_0.5)
# bm10a065 (for m_0.1) and bm10a087 (for m_0.9)

# m(0.5), AA(0.5) = 0.5 - m(0.5)
pool <- pool %>% mutate(m_0.5 = bm10a043/100, AA_0.5 = 0.5 - m_0.5)

# m(0.1), AA(0.1) = 0.1 - m(0.1) 
pool <- pool %>% mutate(m_0.1 = bm10a065/100, AA_0.1 = 0.1 - m_0.1)

# m(0.9), AA(0.9) = 0.9 - m(0.9)
pool <- pool %>% mutate(m_0.9 = bm10a087/100, AA_0.9 = 0.9 - m_0.9)

 
useful_variables <- c(1:10, 17:28, 31, 175:180, 182:183, 226) # If merge before calculating 
# the ambiguity indices, need to alter this slightly, potentially from 175

# To get the usable data, I choose households that have at least one children living 
# in household in time-use survey (2019), and filter out households that already have
# children leaving the household. To account for educational expenditures, I also filter out
# NAs values of variable tp19a045 which records monthly schooling fees that households pay

usable <- inner_join(pool, timeuse) %>% mutate(child_dif = tp19a003 - aantalki
) %>% filter(child_dif >= 0, (aantalki+tp19a003 != 0), !is.na(tp19a045)
) %>% select(all_of(useful_variables), "child_dif") 
usable$oplcat <- factor(usable$oplcat, levels = c("1", "2", "3", "4", "5", "6"),
                        labels = c("primary", "vmbo", "havo/vwo", "mbo", "hbo", "wo"))

test <- lm(tp19a045 ~ AA_0.1 + AA_0.5 + AA_0.9 + bm10a004 + oplcat + nettohh_f, data = usable)
summary(test)


##===== Calculate risk-aversion indices

















