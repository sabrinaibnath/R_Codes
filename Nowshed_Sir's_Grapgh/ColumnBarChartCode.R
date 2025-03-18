library(readxl)
library(dplyr)

Mydata <- read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/ColumnBarData.xlsx")

cats <-Mydata$Years
values <- Mydata$Sales

barplot(values,names.arg=cats,xlab="Sales",ylab="Year",col="blue",main="Sales Trend",border="red",horiz = TRUE)

