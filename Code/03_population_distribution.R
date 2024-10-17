#2 new packages "terra" "sdm" 
install.packages("sdm")
library (sdm)

install.packages("terra)
library (terra)

#function "system.file" richiamare file non riconoscibili immediatamente da R richiamarli

system.file("external/species.shp", package="sdm")
file <- system.file("external/species.shp", package="sdm")
[1] "/Library/Frameworks/R.framework/Versions/4.4-x86_64/Resources/library/sdm/external/species.shp"

#trasformare un file in qualcosa di leggibile per R

vect(file)
rana <-vect(file)

rana$occurrence
plot(rana)

# Selecting presences
rana[rana$Occurrence==1]
pres <- rana[rana$Occurrence==1]

#exercise 
par(mfrow=c(1,2))
plot(rana)
plot(pres)

#exercise2
abse <- rana[rana$Occurrence==0]
plot(abse)

#exercise3
par(mfrow=c(1,2))
plot(pres)
plot(abse)

#exercise4
par(mfrow=c(2,1))
plot(pres)
plot(abse)

#exercise5
plot(pres, col="blue")
points(abse, col="red")

#covariates
elev <- system.file("external/elevation.asc", package="sdm")
elevmap <- vect(elev)

#exercise
colorRampPalette(c("oldlace", "paleturquoise", "grey", "orangered"))(100)
cl<-colorRampPalette(c("oldlace", "paleturquoise", "grey", "orangered"))(100)
plot(elevmap, col=cl)
points(pres)


