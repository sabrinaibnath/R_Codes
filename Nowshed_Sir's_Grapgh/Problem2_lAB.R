library(readxl)
library(dplyr)

dat<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/Name.xlsx")

d<-count(dat$First)
d
dat %>% 
  ggplot(aes(x=First,y=d))+geom_bar(stat="identity",fill="pink")+theme_bw()+coord_flip()


