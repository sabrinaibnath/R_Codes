#format of pie(values,labels,main="")here values are the things for pie then labes for what we want to put in the chart and main for the name of the chart

slice<-c(10,20,30,40)# created a vector for values
labe<-c("Mango","oranges","Banana","Kew")#created a vector for labels

pie(slice,labe,main="Pie chart for fruit")

#3D piechart
install.packages("plotrix")
library(plotrix)

slice<-c(10,20,30,40)# created a vector for values

labels<-c("Mango","oranges","Banana","Kew")#created a vector for labels

pie3D(slice, labels = labels, explode = 0.01, main = "Pie Chart for Fruit")

