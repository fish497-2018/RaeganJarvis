# Read in fish data
fish_data <- read.csv("Data/Gaeta_etal_CLC_data_1.csv")

#this creates a new table categorizing fish by size
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

# fliters out scalelengths of less than 1
View(fish_data_cat)
fish_mod <- filter(fish_data_cat, scalelength >= 1)
View(fish_mod)

# creates scatterplot of fish length vs scalelength
library(tidyverse)
ggplot(fish_mod) +
  geom_point(aes(x = length, y = scalelength, color = lakeid))