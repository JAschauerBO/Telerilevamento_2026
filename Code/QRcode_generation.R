# install.packages("qrcode")

library(qrcode)

setwd("C:/Users/jakob/Desktop")

url <- "https://github.com/JAschauerBO"
 
qr <- qr_code(url)
 
png("github_profile_qr.png", width = 1000, height = 1000)
plot(qr)
dev.off()
