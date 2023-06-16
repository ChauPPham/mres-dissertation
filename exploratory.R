# Date created: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding for MRES dissertation

# Last changes: 06/16/2023
#--------------------------------------------------------------#

# Load data
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

require("foreign")
require("tidyverse")

background <- read.dta("LISS data/bm10a_EN_1.0p/bm10a_EN_1.0p.dta") # background data
ambiguity <- read.dta("LISS data/avars_201001_EN_2.0p/avars_201001_EN_2.0p.dta")  # ambiguity data

background_short <- select(background, -c(lftdcat, woonvorm, brutocat, nettocat, doetmee))
