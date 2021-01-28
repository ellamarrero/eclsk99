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

# * Create dummy race variables (directly from composite variable):
#   * HISP (yes or no)
# * MT1RAC (yes or no) 
# 
# * Get rid of all dummy language variables
# 
# * Create dummies from the parent type ("types of parent in household")
# * 1 dummy = child lives with 2 married parents
# * 2 dummy = child lives with one single parent
# * 3 dummy = child lives with 2 biological parrents
# 
# * Create flag for of age @ kindergarten entry (AGEENTFLG)
# * 1: in [60 - 72 months] - inclusive
# 0: not in ""
# NA: NA
# * Don't drop original var!

# delete vars

# * For any variable with a teacher AND parent report, keep only teacher (get rid of parent) 

# export final wide analytical datset