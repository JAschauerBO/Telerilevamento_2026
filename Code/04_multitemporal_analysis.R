# Code for performing multitemporal analysis with satellite imagery

library(terra)
library(imageRy)
library(viridis)
library(ggplot2)
# install.packages("ggridges")
library(ggridges)

im.list()

EN_01 <- im.import("EN_01.png")
EN_01 <- flip(EN_01)
plot(EN_01)

EN_13 <- im.import("EN_13.png")
EN_13 <- flip(EN_13)
plot(EN_13)

# Exercise: plot the two images one on top of the other
im.multiframe(2,1)
plot(EN_01)
plot(EN_13)

# Differencing
ENdif <- EN_01[[1]] - EN_13[[1]] 
dev.off()
plot(ENdif)

# Greenland example

# Exercise: import all the greenland data and create a stack
g2000 <- im.import("greenland.2000.tif")
g2005 <- im.import("greenland.2005.tif")
g2010 <- im.import("greenland.2010.tif")
g2015 <- im.import("greenland.2015.tif")
sg <- c(g2000, g2005, g2010, g2015)

gr <- im.import("greenland")

im.multiframe(1,2)
plot(gr[[1]], col=plasma(100))
plot(gr[[4]], col=plasma(100))


################################################################ Bis hier im März ###################################



##########

# import data
ndvi <- im.import("Sentinel2_NDVI")
hist(ndvi) # histogram of value distribution
im.ridgeline(ndvi, scale=1, palette="viridis")


names(ndvi) <- c("02_feb", "05_may", "08_aug", "11_nov") # reassign names or all 4 objects in ndvi

im.ridgeline(ndvi, scale=2, palette="viridis") # try with different vertical scale: 2 boxes hight

plot(ndvi[[1]], ndvi[[2]]) # plot feb points against may. It's not y=x
# y=x
# y= a + bx; a = 0; b = 1
abline(0,1, col= "red")

# adjust vertical & horizontal scale and limits of plot
# x min -0.3
# y max 0.9
plot(ndvi[[1]], ndvi[[2]], xlim=c(-0.3,0.9), ylim=c(-0.3,0.9))
abline(0,1, col= "red")
# alle Punkt liegen über der roten Linie, also mehr in May richtung als in Feb
