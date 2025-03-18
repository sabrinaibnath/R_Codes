library(readxl)

D<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/ColumnBarData.xlsx")
D

V<-D$Sales
A<-D$Years
barplot(V,names.arg=A,xlab="Sales",ylab="Years",col="Steelblue",horiz="TRUE")

