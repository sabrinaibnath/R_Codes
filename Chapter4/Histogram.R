library(ggplot2)
library(mosaicData)
library(tidyverse)

View(Marriage)

#histogram with bins
Marriage %>% 
  ggplot(aes(age))+geom_histogram(bins=20,fill="pink",color="white")+theme_bw()

#histogram with bindwidth

Marriage %>% 
  ggplot(aes(age))+geom_histogram(binwidth =10,fill="pink")#,color="white")+theme_bw()

                                  