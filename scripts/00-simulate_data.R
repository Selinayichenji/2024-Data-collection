#### Preamble ####
# Purpose: Simulates homeless's death causes by its social factors
# Author: Yichen Ji
# Date: 17 February 2023
# Contact: yic.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(tibble)

#### Simulate data ####
set.seed(00)

id <- 1:300

Gender <- sample(x = c("Female", "Male", "Unkown"), 
                 size = 300, replace = TRUE, 
                 prob = c(0.518, 0.478, 0.004))

Age <- sample(x = c("<20","20-39", "40-59", "60+", "Unknown"), 
              size = 300, replace = TRUE, 
              prob = c(0.1, 0.3, 0.3, 0.2, 0.1))

Cause_of_death <- sample(x=c("Accident","Cancer","Cardiovascular Disease","COVID-19","Drug Toxicity","Homicide","Suicide","Pneumonia","Unknown/Pending","Others"),
                         size = 300, replace = TRUE, 
                         prob = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1))

Year <-sample(x = c(2017,2018,2019,2020,2021,2022,2023),
              size = 300, replace = TRUE, 
              prob = c(0.14, 0.14, 0.15, 0.15, 0.14, 0.14, 0.14))

data<-tibble(id,Year,Cause_of_death,Age,Gender)
 
data



