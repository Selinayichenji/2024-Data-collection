#### Preamble ####
# Purpose: Test the simulated data
# Author: Yichen Ji
# Date: 17 February 2023
# Contact: yic.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: get the simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test data ####
test_data<-read_csv("outputs/data/analysis_data.csv")

setequal(unique(test_data$cause_of_death), c("Accident","Cancer","Cardiovascular Disease",
                                                  "COVID-19","Drug Toxicity","Homicide","Suicide",
                                                  "Pneumonia","Unknown/Pending","Other"))
unique(test_data$cause_of_death)
test_data$cause_of_death |>
  unique() |>
  length() == 10

test_data$year_of_death |> min() == 2017
test_data$year_of_death  |> max() == 2023
test_data$age_group |> class() == "character"
