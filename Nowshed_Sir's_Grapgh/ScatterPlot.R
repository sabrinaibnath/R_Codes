library(tidyverse)
mpg %>% 
  filter(hwy<35) %>% 
  ggplot(aes(x=displ,y=hwy,colour=drv))+geom_point(size=3,alpha=0.5)+theme_minimal()+geom_smooth(method="lm",se=F)+labs(title="Scatter plot",x="Displ",y="Hwy")

