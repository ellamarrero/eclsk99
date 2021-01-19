# ECLS-K, 1999

This is a repository for the data cleaning that still needs to be done for the ECLSK-99 dataset. This mainly involves creating the analytical version of the wide dataset. 

Files:
* analytical_build.R: builds analytical dataset (imports wide, changes necessary values in all variables, adds new/composite variables as requested), exports new wide analytical dataset
* var_mods.R: modifies variables from the wide dataset (e.g. combines responses)
