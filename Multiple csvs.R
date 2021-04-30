# Reading and appending multiple csvs
# Anna Moeller 
# 3/24/2021

library(tidyverse)

# Find all the csvs
p <- list.files(
  "your-top-folder",
  recursive = T, 
  pattern = "TimelapseData.csv",
  full.names = T
)

# Bring them all in together
dat <- map_dfr(p, read_csv)
