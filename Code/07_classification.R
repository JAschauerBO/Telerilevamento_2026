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
