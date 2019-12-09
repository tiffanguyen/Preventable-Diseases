setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("cdcstates.csv", header = TRUE)
m1 <- measles[-c(63,64,65,66,67,68,69),]
m2 <- m1[,-c(5,6)]
m3 <- na.omit(m2)

# standard map package
install.packages("MAP")

# Load libraries
library(MAP)
library(ggplot2)

# Get US map
usa <- map_data("state")

# Draw the map and add the data points
ggplot() +
  geom_path(data = usa, aes(x = long, y = lat, group = group), color = "#2A3132") +
  geom_point(data = m3, aes(x = Long, y = Lat, size = Total), color = "#336B87")  +
  labs(title ="Measles Outbreak in 2019 by State", x = "", y = "") + theme_minimal()
