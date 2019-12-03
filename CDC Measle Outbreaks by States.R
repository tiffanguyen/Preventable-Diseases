setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("cdcstates.csv", header = TRUE)
m1 <- measles[-c(63,64,65,66,67,68,69),]
m2 <- m1[,-c(5,6)]
m3 <- na.omit(m2)

# some standard map packages.
install.packages(c("maps", "mapdata"))

# Libraries
library(ggplot2)
library(dplyr)

# Get the world polygon and extract UK
library(maps)
USA <- map_data("world") %>% filter(region=="USA")
data <- world.cities %>% filter(country.etc=="USA")
ggplot() +
  geom_polygon(data = USA, aes(x=long, y = lat, group = group), fill="grey", alpha=0.3) +
  geom_point(data=m3, aes(x=Long, y=Lat, size= Total)) +
  theme_void() + coord_map() 
