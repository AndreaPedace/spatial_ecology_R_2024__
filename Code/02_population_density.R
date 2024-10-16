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
