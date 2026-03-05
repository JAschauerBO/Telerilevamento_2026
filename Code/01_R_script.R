# First R Script
# This is a comment, I can use a hashtag to comment my scripts

2+3

# oggetti e assegnazione
michele <- 2 + 3
michele

tecla <- 4 + 6


# tutte le operazioni
michele + tecla
michele ^ tecla
michele/tecla
michele-tecla

# arrays o vettori
sonia <- c(10, 8, 3, 1, 0)    # funzione (c(), e argomenti od,on,owen;    c() to combine values (in arguments) to an array

# Attention: Case sensitive: c != C
giorgia <- c(3, 10, 20, 50, 100)

plot(giorgia, sonia)
plot(giorgia, sonia, col="blue")
plot(giorgia, sonia, col="blue", pch=19) # PCH: Point Character
plot(giorgia, sonia, col="blue", pch=19, cex=2) # cex: Character Exaggeration
plot(giorgia, sonia, col="blue", pch=19, cex=2, xlab="pollution", ylab="numero di delfine") # xlab: X-Label, ylab: Y-Label

# installazione pacchetti
# CRAN: Comprehensive R Archive Network
install.packages("terra") # terra is a package

library(terra)

# Github 
install.packages("devtools") # devtools or remotes
library(devtools)
install_github("ducciorocchini/imageRy")
install_github("ducciorocchini/imageRy")

im.list()
