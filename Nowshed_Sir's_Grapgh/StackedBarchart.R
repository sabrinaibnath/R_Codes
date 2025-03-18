library(tidyverse)

#normal stacked bar chart
mpg %>% 
  ggplot(aes(class,fill=drv))+geom_bar(position="stack")+labs(y="Proportion")
#if we want grouped bar chart then all we need to do is set geom_bar(position="dodge)

#if we want segmented bar chart then we need to set geom_bar(position=fill)