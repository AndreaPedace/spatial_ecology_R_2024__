# How to calculate the density of individuals in a population

# installing the spatstat package
install.packages("spatstat")

# Recalling the package
library(spatstat)

# dataset  
bei

# visualizing dataset
plot(bei)
plot(bei, pch=19)
plot(bei, pch=19, cex=.5)

#additional dataset
bei.extra
plot(bei.extra)

#extracting data
elevation <- bei.extra$elev
plot(elevation)

#different way to extracting data
elevation <- bei.extra[[1]]

# density map starting from points
densitymap <- density(bei)

plot(densitymap)
plot (bei)

#connecting two different type of data
plot(densitymap)
> points(bei, col="green", cex=.5)

#DAY2

#recall the library/package
library(spatstat)

bei

densitymap <- density(bei)
points(bei)

bei.extra
elevation <-bei.extra$elev
elevation2 <-bei.extra[[1]]

#possibility to  build  multiframe image
par(mfrow=c(1,2))
plot(elevation2)
plot(densitymap)

#multiframe one on top of the  other
par(mfrow=c(2,1))
plot(elevation2)
plot(densitymap)

#how to delete multiframe
dev.off()

#changing color  of the map
colorRampPalette(c("red", "orange", "yellow"))(3)
cl <- colorRampPalette(c("red", "orange", "yellow"))(3)
plot(densitymap, col=cl)

#more gradients
colorRampPalette(c("red", "orange", "yellow"))(10)

#excercise: build a multiframe and plot two different densitymaps with two different palettes
cl <-colorRampPalette(c("olivedrab1", "paleturquoise", "grey", "orangered"))(100)
plot(densitymap, col=cl)
cl2 <-colorRampPalette(c("red", "orange", "yellow"))(100)
par(mfrow=c(1,2))
plot(densitymap, col=cl)
plot(densitymap, col=cl2)
 

