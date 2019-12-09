# Graph for all years of reported measle cases
setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("ghoallyears.csv", header = TRUE)
summary(measles)
library(ggplot2)
m <- ggplot(measles, aes(Year, Measles.Cases)) # main graph set up
# bar graph for 1974 to 2019
m + geom_bar(stat = "identity", fill="#336B87") + theme_minimal() +
  coord_cartesian(xlim = c(1974, 2019), ylim = c(0, 60000)) +
  labs(title ="Number of Reported Cases in the United States from 1974 to 2019", x = "Years", y = "Number of Reported Cases")
# bar graph for 2000 to 2019
m + geom_bar(stat = "identity", fill="#336B87") + theme_minimal() +
  coord_cartesian(xlim = c(2000, 2019), ylim = c(0, 2250)) +
  labs(title ="Number of Reported Cases in the United States from 2000 to 2019", x = "Years", y = "Number of Reported Cases")

# Graph for map of US outbreaks
setwd("~/Desktop/R Scripts/Preventable-Diseases")
measles <- read.csv("cdcstates.csv", header = TRUE)
m1 <- measles[-c(63,64,65,66,67,68,69),] #cleaning up data set
m2 <- m1[,-c(5,6)]
m3 <- na.omit(m2)

# standard map package
install.packages("MAP") # new package

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

# Graph for pie chart using Base R Graphics
setwd("~/Desktop/R Scripts/Preventable-Diseases")
vacconcerns <- read.csv("VacConcerns.csv")
library(RColorBrewer) #forming color palette
cols <- brewer.pal(3, "PuBu")
pal <- colorRampPalette(cols)
pie(x = vacconcerns$Parents.reporting.concern...., 
    label=paste(vacconcerns$Concern),
    col = pal(12), #(length(vacconcerns$Concern))
    cex = 0.8,
    main="Vaccine Concerns Reported By Parents, 2010") #will have to change width when exporting as JPG
