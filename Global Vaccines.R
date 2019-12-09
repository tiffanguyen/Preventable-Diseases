setwd("~/Desktop/R Scripts/Preventable-Diseases")
vacs <- read.csv("Vacs.csv")

USA <- vacs[153,]
vacs1 <- vacs[-153,]
randomizer <- data.frame(vacs[sample(nrow(vacs1), 9), ])

newdf <- rbind(randomizer, USA)

library(ggplot2)
v <- ggplot(newdf, aes(x= Entity, y = Share.of.people.who.agree.vaccines.are.important.for.children.to.have....))
v + geom_bar(stat = "identity", fill="#336B87") + theme_minimal() +
  coord_cartesian(ylim = c(0, 100)) + 
  geom_text(label= paste(round(newdf$Share.of.people.who.agree.vaccines.are.important.for.children.to.have...., digits = 0)), vjust=1.6, color="white", size=3.5) +
  #geom_text(label = paste(newdf$Share.of.people.who.agree.vaccines.are.important.for.children.to.have....), size = 3, position = "above") +
  labs(title ="Global Opinions, 2018", x = "Countries", y = "People Who Agree Vaccines are Important for Children (%)")
