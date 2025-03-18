install.packages("ggpie")
library(ggpie)
library(ggplot2)
library(mosaicData)

cout<-c(25,35,40)
cat<-c("No","Yes","ha")
data<-data.frame(c=cout,l=cat)
ggpie(data=data,count_type="full")

