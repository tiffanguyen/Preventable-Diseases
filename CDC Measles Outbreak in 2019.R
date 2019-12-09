setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("cdc2019.csv", header = TRUE)
library(ggplot2)
m <- ggplot(measles, aes(x=factor(Month,levels=month.name), Number.of.Cases))
m + geom_bar(stat = "identity", fill= "#336B87") + theme_minimal() +
  labs(title ="Measles Outbreak in the United States in 2019", x = "Months", y = "Number of Reported Cases")
