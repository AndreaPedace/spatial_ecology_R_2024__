#code for mananging and analyzing remote sensing data 

#there are same packages that are in Github and not in Cran R
install_github("")

#but first we need to install a package called "devtools"
install.packages("devtools")

library("devtools")

install_github("ducciorocchini/imageRy")
library(imageRy)

#install the packages for Mac, don't forget to download the file from the link
https://api.github.com/repos/ducciorocchini/imageRy/tarball/HEAD
  
install.packages("/Users/lea/Desktop/R/ducciorocchini-imageRy-a971c18.tar.gz",repos = NULL, type = "source")
install.packages("dichromat")  
install.packages("fields") 
install.packages("ggplot2") 
install.packages("viridis") 

library(imageRy)
library(terra)

#see all the data on the package
im.list()

#import data (any function on GitHub start with "Im.")
b2<- im.import("sentinel.dolomites.b2.tif")
  
#change color palette
cl <- colorRampPalette(c("black", "grey", "light grey")) (100)

#let's import another band and change the palette
b3<- im.import("sentinel.dolomites.b3.tif")
plot(b3, color=cl)


#let's import another band and change the palette
b4<- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=cl)

#let's import another band and change the palette
b8<- im.import("sentinel.dolomites.b8.tif")

#let's plot all together (multiframe)
par(mfrow=c(2,2))
plot(b8, col=cl)
plot(b4, col=cl)
plot(b3, col=cl)
plot(b2, col=cl)

#stack (unite the different images)
sentstack<-(b2,b3,b4,b8)
plot(sentstack, col=cl)

#plot just one layer
plot(sentstack[[1]],col=cl)

# multiframe with different color palette for each band
par(mfrow=c(2,2))
clb <- colorRampPalette(c("darkblue", "blue", "light blue")) (100)
plot(b2, col=clb)
clv <- colorRampPalette(c("darkgreen", "green", "light green")) (100)
plot(b3, col=clv)
clr <- colorRampPalette(c("darkred", "red", "pink")) (100)
plot(b4, col=clr)
cln <- colorRampPalette(c("darkbrown", "orange", "yellow")) (100)
plot(b8, col=cln)

#rgb scheme to show images, plotting red green and blue
im.plotRGB(sentstack, r=3, g=2, b=1) #natural color
im.plotRGB(sentstack, r=4, g=3, b=2) #false color (infrared)
