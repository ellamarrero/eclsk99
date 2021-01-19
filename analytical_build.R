# load libraries
library(tidyverse)
library(mosaic)
library(broom)
library(kableExtra)
library(tidyr)
library(tibble)

# import wide dataset
og_wide <- read.csv("/Users/ellamarrero/Dropbox/DATA CLEANING/wide/ECLSK_rebuilt_v7.csv")

# change all missing types to system-missing
# define missing types
missing <- c(-9,-8,-7,-1,'NA')

# write function to recode as system-missing if a missing type
code_as_na<-function(x){
  ifelse((x %in% missing),NA,x)
}

# modify original dataset
new_wide <- og_wide %>%
  sapply(code_as_na)

new_wide <- as.data.frame(new_wide)

# add new vars

# export final wide analytical datset