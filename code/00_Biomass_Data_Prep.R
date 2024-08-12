## Data prep for nearshore estimates

## Load packages
lapply(c("plyr","dplyr","ggplot2","cowplot",
         "lubridate","tidyverse", "reshape2"), require, character.only=T)

##############################
## Data Import & Processing ##
##############################
data <- readRDS("../data/SFS24_data_T.rds")
data$date <- as.POSIXct(as.character(data$date), format="%Y-%m-%d")

## Check data
data[which(data$middle_GPP < 0),]
data[which(data$middle_ER > 0),]

#test




