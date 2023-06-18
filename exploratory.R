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
# Updating functions
prob_update <- function(choice, ceil, floor, prob){
    # This function updates the probability of risky gain after each iterations
    if(choice == "Box B"){
        floor = prob
        prob = 1/2*(ceil + prob)
        assign("floor", floor, envir = parent.frame())
        assign("prob", prob, envir = parent.frame())
        return(prob)
    }
    else {
        ceil = prob
        prob = 1/2*(floor + prob)
        assign("ceil", ceil, envir = parent.frame())
        assign("prob", prob, envir = parent.frame())
        return(prob)
    }
}

prob_update_v <- Vectorize(prob_update, vectorize.args = "choice")

get_m <- function(range, number_of_colours, dataset){
    col_range <- sprintf("bm10a%0.3d", range)
    dataset <- dataset %>% rowwise()
    prob <- 1/number_of_colours
    iter <- sym(col_range[length(col_range)])
    ceil <- 1
    floor <- 0
    
    dataset <- dataset %>% mutate("m_{prob}" := case_when(
        !!iter == 1 ~ prob,
        !!iter == 2 ~ prob_update_v(!!sym(col_range[2]), ceil, floor, prob), 
        !!iter == 3 ~ 
    ))
    unique(dataset[,dim(dataset)[2]])
}


# Calculate m(0.5)



# Calculate m(0.1)




# Calculate m(0.9)





# AA(0.1) = 0.1 - m(0.1)





# AA(0.5) = 0.5 - m(0.5)





# AA(0.9) = 0.9 - m(0.9)











