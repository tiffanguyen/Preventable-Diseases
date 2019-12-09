setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("ghoallyears.csv", header = TRUE)
summary(measles)
library(ggplot2)
m <- ggplot(measles, aes(Year, Measles.Cases))
m + geom_bar(stat = "identity", fill="#336B87") + theme_minimal() +
  coord_cartesian(xlim = c(1974, 2019), ylim = c(0, 60000)) +
  labs(title ="Number of Reported Cases in the United States from 1974 to 2019", x = "Years", y = "Number of Reported Cases")
m + geom_bar(stat = "identity", fill="#336B87") + theme_minimal() +
  coord_cartesian(xlim = c(2000, 2019), ylim = c(0, 2250)) +
  labs(title ="Number of Reported Cases in the United States from 2000 to 2019", x = "Years", y = "Number of Reported Cases")

