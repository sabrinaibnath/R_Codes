install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

ggplot(data=BOD,
        mapping=aes(x=Time,y=demand))+geom_point(size=5)+geom_line(color="blue") #here it is just mapping


ggplot(data=BOD,aes(Time,demand))+geom_point(size=3)+geom_line(color="blue")



CO2 %>% 
  ggplot(aes(conc,uptake,colour = Treatment))+geom_point(size=3,alpha=0.5)+geom_line()+geom_smooth(method="lm",se=F)+facet_wrap(~Type)+labs(title="Tree map")+theme_bw()


ggplot(CO2,aes(conc,uptake,colour = Treatment))+geom_point(size=3,alpha=0.5)+geom_line()+geom_smooth()

ggplot(data=CO2,aes(Treatment,uptake))+geom_boxplot()+geom_point(alpha=0.5,aes(size=conc,colour=Plant))+coord_flip()+theme_bw()+facet_wrap(~Type)+labs(title="Chilled")

