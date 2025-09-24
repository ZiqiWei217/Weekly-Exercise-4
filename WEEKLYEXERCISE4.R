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

# 7b
# Filter the data for the specified countries
five_countries_data <- olympics_data %>%
  filter(country %in% c("United States", "France", "Germany", "Russia", "China"))

# Create the plot
gold_medals_plot <- ggplot(data = five_countries_data, aes(x = year, y = gold, color = country)) +
  geom_line() + 
  geom_point() +
  labs(
    title = "Gold Medals Earned Over Time",
    subtitle = "For United States, France, Germany, Russia, and China",
    x = "Year",
    y = "Number of Gold Medals",
    color = "Country"
  ) +
  theme_minimal()

# Save the plot to a file
ggsave("gold_medals_over_time.png", plot = gold_medals_plot)

# Display the plot
print(gold_medals_plot)