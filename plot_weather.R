# Install required packages if not already installed
install.packages("ggplot2")
install.packages("dplyr")
install.packages("readr")

library(ggplot2)
library(dplyr)
library(readr)

# Read the CSV file
weather <- read_csv("data/weather_data.csv")

# Ensure month order
weather$Month <- factor(weather$Month, levels = month.name)

# Create the plot
ggplot(weather, aes(x = Month)) +
  geom_bar(aes(y = Precipitation), stat = "identity", fill = "orange") +
  geom_line(aes(y = Temperature * 3, group = Year), color = "black") +  # scaled to fit
  geom_point(aes(y = Temperature * 3, group = Year), color = "black") +
  facet_wrap(~Year, ncol = 2) +
  scale_y_continuous(
    name = "Average Monthly Temperature (°C)",
    sec.axis = sec_axis(~./3, name = "Monthly Precipitation (mm)")
  ) +
  labs(x = "Month", fill = "", color = "") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Save the plot as a PNG file in the output folder
ggsave("output/weather_plot.png", width = 10, height = 6, dpi = 300)
