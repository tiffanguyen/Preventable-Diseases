setwd("~/Desktop/R Scripts")
measles <- read.csv("WHS3_62.csv", header = TRUE)
library(reshape2)
measles_long <- melt(measles, id.vars = 'WHO.region')
measles1 <- measles_long[-c(1:39),]
library(ggplot2)
summary(measles1)
measles1$value<-as.numeric(measles1$value)
ggplot(data = measles1, mapping = aes(x = WHO.region, y = value, color = variable)) +
  geom_line()