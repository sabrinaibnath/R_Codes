library(tidyverse)

dat<-read.csv("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/student_scores.csv")
View(dat)
dat %>% 
  ggplot(aes(Score))+geom_histogram(binwidth = 2,fill="steelblue",color="black")+theme_bw()
dat
