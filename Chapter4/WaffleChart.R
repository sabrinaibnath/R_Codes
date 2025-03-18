install.packages("waffle")
library(ggplot2)
library(dplyr)
library(waffle)
plotdata<-Marriage%>%
  count(officialTitle)

library(waffle)
ggplot(plotdata,aes(fill =officialTitle,values=n))+
  geom_waffle(na.rm=TRUE)
