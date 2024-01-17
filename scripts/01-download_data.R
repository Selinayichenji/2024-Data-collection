#### Preamble ####
# Purpose: Download data from opendatatoronto package
# Author: Yichen Ji
# Date: 17 February 2023
# Contact: yic.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None



library(opendatatoronto)
library(tidyverse)
library(readr)

#### Download data ####
homeless_death_packages <- search_packages("Deaths of People Experiencing Homelessness")
homeless_death_packages

homeless_death_resources <- homeless_death_packages %>%
  list_package_resources()


homeless_death_statistics <- homeless_death_resources  %>%
  slice(6) %>%
  get_resource()

homeless_death_statistics 



#### Save data ####
write_csv(homeless_death_statistics, "inputs/data/Homeless_death_by_cause.csv") 

