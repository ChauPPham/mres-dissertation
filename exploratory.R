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
# Updating functions
prob_update <- function(choice, ceil, floor, prob){
    # This function updates the probability of risky gain after each iterations
    if(choice == "Box B"){
        floor = prob
        prob = 1/2*(ceil + prob)
        assign(floor, floor, envir = parent.env(env))
        assign(prob, prob, envir = parent.env(env))
        return(prob)
    }
    else {
        ceil = prob
        prob = 1/2*(floor + prob)
        assign(ceil, ceil, envir = parent.env(env))
        assign(prob, prob, envir = parent.env(env))
        return(prob)
    }
}

get_m <- function(range, number_of_colours, dataset){
    col_range <- sprintf("bm10a%0.3d", range)
    dataset <- dataset %>% rowwise()
    prob <- 1/number_of_colours
    iter <- sym(col_range[length(col_range)])
    ceil <- 100
    floor <- 0
    
    dataset <- dataset %>% mutate("m_{prob}" := ifelse(!!iter == 1, prob, 0))
    dataset <- dataset %>% mutate("m_{prob}" := case_when(
        iter == 2 ~ prob_update()
    ))
}


# Calculate m(0.5)



# Calculate m(0.1)




# Calculate m(0.9)





# AA(0.1) = 0.1 - m(0.1)





# AA(0.5) = 0.5 - m(0.5)





# AA(0.9) = 0.9 - m(0.9)











