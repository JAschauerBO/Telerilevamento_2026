# Code for Classifying Images

library(terra)
library(viridis)
library(imageRy)

# List of files
im.list()

sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg") # Import picture
im.classify(sun) # classify automatically
sunc <- im.classify(sun, seed = 42)

# Import Grand Canyon Data
can <- im.import("dolansprings_oli_2013088_canyon_lrg.jpg")
im.classify(can, num_clusters=4)

# Import a new photo
setwd("C:/Users/jakob/Desktop")
getwd()
beach <- rast("beach.jpg") # Import Picture
beach <- flip(beach) # Flip it

im.classify(beach, num_clusters=4)

# mato grosso examples
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")                    
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")

im.multiframe(2,1)
plot(m1992)
plot(m2006)

# classify 1992 -> Landuse
m1992c <- im.classify(m1992, seed=42, num_clusters=2) # forest and Not forest

# Assign labels: copied from duccios repo
levels(m1992c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")
)


# classify 2006 -> Landuse
m2006c <- im.classify(m2006, seed=42, num_clusters=2) # forest and Not forest

# Assign labels: copied from duccios repo
levels(m2006c) <- data.frame(
  value = c(2, 1),                   # THIS TIME FOREST has Value 2
  label = c("forest", "human")
)
plot(m2006c)

# Define the new function
source("im.barplot.R")

im.barplot(m1992c)


#Calculating frequencies/proportions (interesting/total)
f1992 <- freq(m1992c)
prop1992 <- f1992$count / ncell(m1992c)
perc1992 <- prop1992*100

f2006 <- freq(m2006c)
prop2006 <- f2006$count / ncell(m2006c)
perc2006 <- prop2006*100
perc2006

# Table
tabout <- data.frame(
  class=c("Forest","Human"),
  perc1992 = c(83, 17),
  perc2006 = c(45, 55)
  )
tabout
