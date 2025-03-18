library(ggplot2)
url <- "https://tinyurl.com/mtktm8e5"
ins<-read.csv(url)
print(url)
ins$obese<-ifelse(ins$bmi>=30,"obese","not obese")

ggplot(data=ins,mapping=aes(x=age,y=expenses))+geom_point(color="blue",size=1,alpha=0.2)+geom_smooth(method="lm")
       