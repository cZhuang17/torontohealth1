#### Preamble ####
# Purpose: Generates a simulated version of the Toronto healthcare outbreak patterns in shelter facilities
# dataset from this analysis and uses tests to ensure that the simulated data
# is reasonable and realistic.
# Author: Chiyue Zhuang
# Date: September 27, 2024
# Contact: chiyue.zhuang@mail.utoronto.ca
# Pre-requisites: Install the janitor (Firke 2023) and tidyverse
# (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("janitor")
# install.packages("tidyverse")
library(janitor)
library(tidyverse)

#### Data Simulation ####

# Load required library
library(dplyr)

# Set seed for reproducibility
set.seed(123)

# Simulate data
sim_data <- data.frame(
  OCCUPANCY_DATE = sample(seq(as.Date('2023-01-01'), as.Date('2023-12-31'), by="day"), 100, replace = TRUE),
  ORGANIZATION_ID = sample(1:30, 100, replace = TRUE),
  ORGANIZATION_NAME = sample(c("COSTI Immigrant Services", "Other Organization"), 100, replace = TRUE),
  SHELTER_ID = sample(1:50, 100, replace = TRUE),
  SHELTER_GROUP = sample(c("COSTI Reception Centre", "Other Shelter Group"), 100, replace = TRUE),
  LOCATION_ID = sample(1000:1500, 100, replace = TRUE),
  LOCATION_NAME = sample(c("COSTI Hotel Program Dixon", "Other Location"), 100, replace = TRUE),
  OCCUPIED_BEDS = sample(0:200, 100, replace = TRUE),
  UNOCCUPIED_BEDS = sample(0:50, 100, replace = TRUE),
  CAPACITY_ACTUAL_ROOM = sample(50:200, 100, replace = TRUE),
  OCCUPIED_ROOMS = sample(0:100, 100, replace = TRUE),
  OCCUPANCY_RATE_BEDS = runif(100, 0, 100),
  OCCUPANCY_RATE_ROOMS = runif(100, 0, 100)
)

# View the first few rows of simulated data
head(sim_data)


