#install overlap packages
install.packages("overlap")

library(overlap)

data(kerinci)

#exercise show first 6 row of kerinci
head(kerinci)

#show dataset
kerinci

#statistics of single fields
summary(kerinci)

#making the time radiant or circular (creating a new column) 
kerinci$Timecirc<-kerinci$Time *2*pi

#tiger data
tiger <- kerinci[kerinci$Sps=="tiger",]

#density plot (grafico per spiegare la densità dei risultati)
#just a new object for just timecirc of tiger
tigertime <- tiger$Timecirc
densityPlot(tigertime)

#overlap with another species
#exercise: select data for Macaque 
macaque <-kerinci[kerinci$Sps=="macaque",]

#select time for macaque data
macaquetime <- macaque$Timecirc
desintiyPlot(macaquetime)

#temporal relation 
overlapPlot(tigertime,macaquetime)

#to exclude a data (like macaque "!=")
nomacaque <-kerinci[kerinci$Sps!="macaque",]

