# Date created: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding for MRES dissertation

# Last changes: 06/17/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("foreign")
require("tidyverse")

background <- read.dta("LISS data/avars_201001_EN_2.0p/avars_201001_EN_2.0p.dta")  # background data
ambiguity <- read.dta("LISS data/bm10a_EN_1.0p/bm10a_EN_1.0p.dta") # ambiguity data


background_short <- select(background, -c(lftdcat, woonvorm, brutocat, nettocat, doetmee))
pool <- right_join(background_short, ambiguity, by = c("nomem_encr" = "nomem_encr", "nohouse_encr" = "nohouse_encr"))


##===== Calculate ambiguity indexes
# AA(0.5)





# AA(0.1)





# AA(0.9)











