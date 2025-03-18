library(readxl)
library(dplyr)

Mydata <- read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/ColumnBarData.xlsx")

cats <-Mydata$Years
values <- Mydata$Sales

plot(values, type="l", col = "red", lwd=2)


