#### Preamble ####
# Purpose: Downloads the data from the opendatatoronto package (Gelfand 2022)
# and saves the dataset for use in the main paper.
# Author: Chiyue Zhuang
# Date: September 27, 2024
# Contact: chiyue.zhuang@mail.utoronto.ca
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("opendatatoronto")
# install.packages("tidyverse")
library(opendatatoronto)
library(tidyverse)

#### Downloading the Dataset ####

outbreak_raw_data <-
  search_packages("healthcare-outbreaks-toronto-main") |>
  list_package_resources() |>
  filter(name == "ob_report_2023") |>
  get_resource()

#### Saving the Dataset ####

write_csv(outbreak_raw_data, "inputs/data/raw_data.csv")