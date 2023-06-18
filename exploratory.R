# Date created: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding for MRES dissertation

# Last changes: 06/17/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("foreign")
require("tidyverse")
require("base")

background <- read.dta("LISS data/avars_201001_EN_2.0p/avars_201001_EN_2.0p.dta")  # background data
ambiguity <- read.dta("LISS data/bm10a_EN_1.0p/bm10a_EN_1.0p.dta") # ambiguity data


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


##===== Calculate risk-aversion indices
















