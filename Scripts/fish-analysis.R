fish_data <- read.csv("Data/Gaeta_etal_CLC_data.csv")

#this creates a new table categorizing fish by size
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))