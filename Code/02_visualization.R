# R Code for visualizing multispectral data

install.packages("devtools")
install.packages("viridis")

library(devtools)
install_github("ducciorocchini/imageRy")

library(viridis)

library(terra) #use package terra for using spatial data
library(imageRy) #package devoted to satellite images, functions start with im.

im.list()

# Sentinel-2 bands
# https://gisgeography.com/sentinel-2-bands-combinations/

b2 <- im.import("sentinel.dolomites.b2.tif")


# Changing colors
# overview of colors in https://r-charts.com/colors/
# use c()
cl <- colorRampPalette(c("lightsalmon", "magenta", "mediumpurple1"))(100)
# 100 classes
plot(b2, col=cl) # to plot, use library(terra) before


# less classes:
cl <- colorRampPalette(c("lightsalmon", "yellow", "mediumpurple1"))(3)
plot(b2, col=cl)

# using viridis to change colors for daltonists; inferno is a colorramp by viridis
plot(b2, col=inferno(100)) #col=mako(100)

# Exercise: Assign a greycolor palette to the image
cl_exercise <- colorRampPalette(c("black", "white"))(100)
b3 <- im.import("sentinel.dolomites.b3.tif")
b4 <- im.import("sentinel.dolomites.b4.tif")
plot(b2, col=cl_exercise)
plot(b3, col=cl_exercise)
plot(b4, col=cl_exercise)


# par (for multiframe (mf))
par(mfrow=c(1,2))
plot(b2, col=inferno(100))
plot(b2, col=cl_exercise)

dev.off() # close windows

# instead of par we can use the function from imageRy
im.multiframe(1,2)
plot(b2, col=inferno(100))
plot(b2, col=cl_exercise)
