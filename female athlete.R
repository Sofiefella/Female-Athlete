library(tidyverse)
library(readxl)
library(janitor)
library(gganimate)

sidata_201015 <- read_csv("Female_Athlete_Data/sicover_update.csv")
write_rds(sidata_201015, "Female_Athlete/sidata_201015.rds")

view(sidata_201015)

sidata_201015 <- sidata_201015 %>%
  clean_names()

glimpse(sidata_201015)

p <- ggplot(sidata_201015, aes(x = year, y = frequency, fill = on_cover)) +
  geom_col() +
  scale_fill_manual(values = c("darkcyan", "coral", "azure4", "darkolivegreen",
                               "chocolate", "darkseagreen"), 
                    guide_legend(title="Who is on the cover?")) +
  labs(title = "Comparison of Who is on Sports Illustrated Covers 
throughout the Decade",
       x = "Year", 
       y = "Number of Covers") +
  theme_minimal() 

