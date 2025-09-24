library(readr)
library(tidyverse)
library(ggplot2)

# Read the dataset
olympics_data <- read_csv("Olympics.csv")

# 7a
delegation_1992 <- olympics_data %>%
  filter(year == 1992) %>%
  arrange(desc(athletes)) %>%
  select(country, athletes)

# View the resulting tibble
print(delegation_1992)