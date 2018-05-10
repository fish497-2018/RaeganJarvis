# Exercise 2: First Solo Commit

# Read in fish data
fish_data <- read.csv("Data/Gaeta_etal_CLC_data_1.csv")

#this creates a new table categorizing fish by size
library(dplyr)
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

# Exercise 3: Second Solo Commit

# fliters out scalelengths of less than 1
View(fish_data_cat)
fish_mod <- filter(fish_data_cat, scalelength >= 1)
View(fish_mod)

# Exercise 5: Pushing Changes

# creates scatterplot of fish length vs scalelength
library(tidyverse)
ggplot(fish_mod) +
  geom_point(aes(x = length, y = scalelength, color = lakeid))

# Exercise 6: Pulling & Pushing

#what about something like this
# Great idea!
# histogram of scalelength in each length category, and saved images of graph to Figures/
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80)
ggsave("Figures/scale_hist_by_length.jpg")