# measurement of RS based variability

library(imageRy)
library(terra)
library(viridis)

im.list()

#import an image and plot it in different bands
sent<-im.import("sentinel.png")
im.plotRGB(sent,r=1,g=2,b=3)
im.plotRGB(sent,r=2,g=1,b=3)
im.plotRGB(sent,r=2,g=3,b=1)

# measuring standard deviation between bands
nir<-sent[[1]]
sd3<-focal(nir, matrix(1/9, 3, 3), fun=sd)

#exercise
sd7<-focal(nir, matrix(1/49, 7, 7), fun=sd)
plot(sd7)

#plot the 2 standard deviations together
par(mfrow=c(1,2))
plot(sd3)
plot(sd7)


