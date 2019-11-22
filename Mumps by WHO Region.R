setwd("~/Desktop/R Scripts")
mumps <- read.csv("WHS3_53.csv", header = TRUE)
library(reshape2)
mumps_long <- melt(mumps, id.vars = 'WHO.region')
mumps1 <- mumps_long[-c(1:39),]
library(ggplot2)
summary(mumps1)
mumps1$value<-as.numeric(mumps1$value)
ggplot(data = mumps1, mapping = aes(x = WHO.region, y = value, color = variable)) +
  geom_line()
