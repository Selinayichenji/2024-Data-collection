#### Preamble ####
# Purpose: Simulates homeless's death causes by its social factors
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

homeless_death_resources 

homeless_death_statistics <- homeless_death_resources  %>%
  slice(6) %>%
  get_resource()

homeless_death_statistics 



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(homeless_death_statistics, "inputs/data/raw_data.csv") 