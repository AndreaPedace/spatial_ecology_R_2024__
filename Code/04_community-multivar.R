#code for multivariate analysis of species x plot data in communities

#installing the vegan packages
install.packages("vegan")
library(vegan)

#recall dataset
data(dune)
#show it
dune

#recall the first six lines of data
head(dune)

#show entire table of data
view(dune)

#decorana: compatta grandi quantità di numeri dispersi (analysis of dataset)
decorana(dune)
multivar<-decorana(dune)

dca1=3.7004
dca2=3.1166
dca3=1.30055
dca4=1.30055

total=dca1+dca2+dca3+dca4

#proportion
prop1=dca1/total
prop2=dca2/total
prop3=dca3/total
prop4=dca4/total

#percentages 
perc1=prop1*100
perc2=prop2*100
perc3=prop3*100
perc4=prop4*100

#whole amount of variability (%)
perc1+perc2

#showing data
plot(multivar)

