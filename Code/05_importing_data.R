# Code to import data

library(terra)
library(imageRy)
library(viridis)
library(ggplot2)
library(patchwork)

setwd("C:/Users/jakob/Seafile/Meine Bibliothek/Erasmus/Telerilevamento/Drone") # Set Working Directory
getwd() # Get Directory

# list of files
list.files()

gre <- rast("DJI_20260409152942_0001_MS_G.TIF")
plot(gre)
gre <- flip(gre)
plot(gre, col=mako(100))

red <- flip(rast("DJI_20260409152942_0001_MS_R.TIF"))
plot(red)

# Exercise: import and plot correctly the NIR band
nir <- flip(rast("DJI_20260409152942_0001_MS_NIR.TIF"))
plot(nir)

# Stack
stack <- c(gre, red, nir)
plot(stack)

# False Color Image
plotRGB(stack, r=3, g=2, b=1) # ERROR like this! 
plotRGB(stack, r=3, g=2, b=1, stretch="lin")

#NDVI
ndvi <- im.ndvi(stack, 3, 2)
plot(ndvi)

#export data: Case sensitive
writeRaster(ndvi, "ndvi.tif")

#Exporting a figure, not data!!!
png("figure1.png")
im.multiframe(2,2)
plot(gre)
plot(red)
plot(nir)
plot(ndvi)
dev.off()

pdf("figure1.pdf")
im.multiframe(2,2)
plot(gre)
plot(red)
plot(nir)
plot(ndvi)
dev.off()


# Patchwork
p1 <- im.ggplot(ndvi)
p2 <- im.ridgeline(ndvi, scale=1)
p1 + p2

pdf("figure2.pdf)
p1 <- im.ggplot(ndvi)
p2 <- im.ridgeline(ndvi, scale=1)
p1 + p2

gitnir <- rast("https://raw.githubusercontent.com/ducciorocchini/Telerilevamento_2026/main/Drone2/DJI_20260409152942_0001_MS_NIR.TIF") # change "github.com" with "raw.githubusercontent.com" & delete "tree/"
