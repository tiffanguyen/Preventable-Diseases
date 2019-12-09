setwd("~/Desktop/R Scripts/Preventable-Diseases")
comp <- read.csv("MMRvsCases.csv")
comp1 <- comp[19942:19975,]

ratio <- comp1[,5]/comp1[,4]

library(ggplot2)
c<- ggplot(comp1, aes(x= Year, y= ratio)) + geom_line(color = "#336B87")
c + labs(title ="Measles Cases Per Year over MMR Vaccine Coverage by Year", y = "Ratio of Cases Over Vaccine Vocerage", x = "Year") + 
  theme_minimal()
