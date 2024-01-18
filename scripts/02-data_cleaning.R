#### Preamble ####
# Purpose: Cleaning the data downloaded from opendatatoronto package
# Author: Yichen Ji
# Date: 17 February 2023
# Contact: yic.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to get Toronto homeless death cause data.
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)
#### Clean data ####
raw_data <- read_csv("inputs/data/Homeless_death_by_cause.csv")

raw_repeated <- raw_data %>% ungroup() %>% slice(rep(row_number(), Count))

cleaned_data <-
  raw_repeated |>
  janitor::clean_names()|>
  rename(id = x_id)|>
  select(-count)

cleaned_data$id <-1:nrow(cleaned_data)


#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")

