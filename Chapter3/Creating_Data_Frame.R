#here i have created a vector
p.height<-c(180,155,160)
p.weigth<-c(65,50,52)
p.names<-c("Sabrina","ibnath","Nowshed")

#now i will create a data frame
dataf<-data.frame(height=p.height,weight=p.weigth,names=p.names)
#print the data frame
dataf

#only getting the heights
dataf$height

#weight
dataf$weight

#names
dataf$names

