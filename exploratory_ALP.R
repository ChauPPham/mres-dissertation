# Date created: 06/20/2023
# Author: Chau Pham
# Purpose: Exploratory coding with ALP data for MRES dissertation

# Last changes: 06/20/2023
#--------------------------------------------------------------#

##===== Load & clean data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("haven")
require("tidyverse")
require("base")

background <- read_dta("ALP data/ms90002_public.dta")  # background data
wave1 <- read_dta("ALP data/ms315_weighted.dta") # wave 1 of the survey on decision quality
wave2 <- read_dta("ALP data/ms352_weighted.dta") # wave 2 of the survey on decision quality
merge <- right_join(wave1, wave2, by = "prim_key")
