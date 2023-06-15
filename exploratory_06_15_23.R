# Date: 06/15/2023
# Author: Chau Pham
# Purpose: Exploratory coding for MRES dissertation
#--------------------------------------------------------------#

# Load data
getwd()
setwd(...)

require("foreign")
require("tidyverse")

background <- read.dta("...") # background data
ambiguity <- read.dta("...")  # ambiguity data

background_short <- select(background, -c(lftdcat, woonvorm, brutocat, nettocat, doetmee))
