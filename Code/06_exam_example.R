library(terra)
library(imageRy)

setwd("C:/Users/jakob/Seafile/Meine Bibliothek/Erasmus/Telerilevamento/Coding")

getwd()

list.files()


richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)

png("figure1.png")
plot(richat)
dev.off()

png("figure_bande.png")
im.multiframe(2,1)
plot(richat[[1]])
plot(richat[[2]])
dev.off()
