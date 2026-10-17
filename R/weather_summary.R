# weather_summary.R
# Author: Jahed Ahmed
# Purpose: Summarises synthetic daily weather for two cities, reshaping the data with tidyr to compare temperature ranges and count rainy days.
# Input:   data/weather_synthetic.csv (synthetic)

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)

# Import ------------------------------------------------------
weather <- read_csv("data/weather_synthetic.csv", show_col_types = FALSE)

# Reshape -----------------------------------------------------
weather_long <- weather %>%
  pivot_longer(c(temp_max_c, temp_min_c),
               names_to = "measure", values_to = "temp_c")

# Summarise ---------------------------------------------------
city_temps <- weather_long %>%
  group_by(city, measure) %>%
  summarise(avg_temp = mean(temp_c), .groups = "drop")

rainy_days <- weather %>%
  group_by(city) %>%
  summarise(rainy_days = sum(rain_mm > 0), .groups = "drop")

# Visualise ---------------------------------------------------
ggplot(weather_long, aes(date, temp_c, colour = measure)) +
  geom_line() +
  facet_wrap(~ city) +
  labs(title = "Daily High and Low", x = NULL, y = "Temperature (C)")
