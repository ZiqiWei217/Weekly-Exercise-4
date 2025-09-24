# Load necessary packages
library(readr)
library(tidyverse)

# Read the dataset
olympics_data <- read_csv("Olympics.csv")

# a. Calculate a new variable, called 'total.medals', which is the sum of gold, silver, and bronze, and add it to the Olympic dataset.
olympics_data <- olympics_data %>%
  mutate(total.medals = gold + silver + bronze)

# View the dataset with the new column
print(head(olympics_data))

# b. For each country, how many gold medals has it won?
gold_medals_by_country <- olympics_data %>%
  group_by(country) %>%
  summarise(total_gold_medals = sum(gold))

# View the total gold medals for each country
print(gold_medals_by_country)

# c. For each year, how many total medals were given out?
total_medals_by_year <- olympics_data %>%
  group_by(year) %>%
  summarise(total_medals_awarded = sum(total.medals))

# View the total medals for each year
print(total_medals_by_year)