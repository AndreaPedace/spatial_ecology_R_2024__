#code for mananging and analyzing remote sensing data 

#there are same packages that are in Github and not in Cran R
install_github("")

#but first we need to install a package called "devtools"
install.packages("devtools")

library("devtools")

install_github("ducciorocchini/imageRy")
library(imageRy)

#install the packages for Mac
https://api.github.com/repos/ducciorocchini/imageRy/tarball/HEAD
  
install.packages("/Users/lea/Desktop/R/ducciorocchini-imageRy-a971c18.tar.gz",repos = NULL, type = "source")
install.packages("dichromat")  
install.packages("fields") 
install.packages("ggplot2") 
install.packages("viridis") 

library(imageRy)


  
