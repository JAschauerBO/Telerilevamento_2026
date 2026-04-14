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
