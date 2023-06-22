# Date created: 06/20/2023
# Author: Chau Pham
# Purpose: Exploratory coding with ALP data for MRES dissertation

# Last changes: 06/21/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("haven")
require("readxl")
require("tidyverse")
require("base")

background <- read_dta("ALP data/ms90002_public.dta")  # background data
wave1 <- read_dta("ALP data/ms315_weighted.dta") # wave 1 of the survey on decision quality
wave2 <- read_dta("ALP data/ms352_weighted.dta") # wave 2 of the survey on decision quality
merge <- inner_join(wave1, wave2, by = "prim_key")

amb <- read_dta("ALP data/ms243_weighted.dta")  # wave 1 (main) of the survey on ambiguity & risk
amb1 <- read_dta("ALP data/ms338_weighted.dta")  # wave 2 of the survey on ambiguity & risk (test trust)
amb2 <- read_dta("ALP data/ms339_weighted.dta")  # wave 2 of the survey on ambiguity & risk (test trust)

education <- read_xlsx("ALP data/ms301_weighted.xlsx")
ed_cols <- grep("seceloopchns_[0-9]+_e0uc", colnames(education))

for (i in ed_cols){
  for (j in 1:nrow(education)){
    if (!is.na(education[j,i])) {
      if (education[j, i] == 97) education[j,i] = -99
    }
  }
}

education$max_ed <- apply(education[, ed_cols], 1, max, na.rm = TRUE)
education_short <- education[,c(1:23, ed_cols, length(education))]

pool1 <- inner_join(amb, education_short, by = "prim_key")
pool2 <- inner_join(merge, education_short, by = "prim_key")

usable1 <- pool1 %>% filter(max_ed >= 0)
usable2 <- pool2 %>% filter(max_ed >= 0)

