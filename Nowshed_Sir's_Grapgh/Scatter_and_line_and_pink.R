library(tidyverse)

hour<-c(2,3,4,5,6,7,8,9,10,11)
stu<-c(50,55,60,65,70,75,80,85,90,95)

dau<-data.frame(hour,stu)
dau %>% 
  ggplot(aes(hour,stu))+geom_point(color="pink",size=4,alpha=0.9)+geom_smooth(color="hotpink",method="lm",se=F)+theme_minimal()

ggsave("Scatter_pink.pdf")
