setwd("~/Desktop/R Scripts/Preventable-Diseases")
vacconcerns <- read.csv("VacConcerns.csv")
library(RColorBrewer)
cols <- brewer.pal(3, "PuBu")
pal <- colorRampPalette(cols)
pie(x = vacconcerns$Parents.reporting.concern...., 
    label=paste(vacconcerns$Concern),
    col = pal(12), #(length(vacconcerns$Concern))
    cex = 0.8,
    main="Vaccine Concerns Reported By Parents, 2010") #will have to change width when exporting as JPG
