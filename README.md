# ECLS-K, 1999

This is a repository for the data cleaning that still needs to be done for the ECLSK-99 dataset. This mainly involves creating the analytical version of the wide dataset. 

Files:
* analytical_build.R: builds analytical dataset (imports wide, changes necessary values in all variables, adds new/composite variables as requested), exports new wide analytical dataset
* var_mods.R: modifies variables from the wide dataset (e.g. combines responses)

To do:
* change all missingness to system missing for all variables(DONE)

* change parent 1/2 to primary and secondary caretaker (Mom = prim, Dad = secondary)

* get rid of all race variables, only keep one composite with the following responses:
  * 1 = White, not hispanic
  * 2 = Black/African-American, not hispanic
  * 3 = Hispanic (any race)
  * 4 = Asian (not hispanic)
  * 5 = Native Hawaiian or Pacific Islander
  * 6 = American Indian or Alaskan Native
  * 7 = more than 1 race
  
* Create dummy race variables (directly from composite variable):
  * HISP (yes or no)
  * MT1RAC (yes or no) 
  
* Create composite home language variable ("HOMELANG")
  * 1 = English
  * 2 = Spanish
  * 3 = Any asian language (including indian)
  * 4 = Other

* Get rid of all dummy language variables

* Create dummies from the parent type ("types of parent in household")
  * 1 dummy = child lives with 2 married parents
  * 2 dummy = child lives with one single parent
  * 3 dummy = child lives with 2 biological parrents
  
* Only keep household income? or change all variables to household income label

* Change income variables so they are log-linear 
  * First response category = 2500
  1) Take midpoint of each range
  2) Last category: look at loess line to see what value it should be
  (can just google "how to convert income to a log-linear format")
  * Create a second variable that is the natural log of the log-linear variable (log income)--> now an integer, no longer a string
  
* Change baseline variables to be coalesced versions of all variables, not just first year (B_varname)

* Create flag for of age @ kindergarten entry (AGEENTFLG)
  * 1: in [60 - 72 months] - inclusive
    0: not in ""
    NA: NA
  * Don't drop original var!

* For any variable with a teacher AND parent report, keep only teacher (get rid of parent) 

    


  
