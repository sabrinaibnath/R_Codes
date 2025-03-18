library(tidyverse)
view(msleep)
#bar with labels on it
  msleep%>% 
  drop_na(vore) %>% 
  ggplot(aes(vore))+geom_bar(fill="pink")+theme_bw()+geom_text(stat = "count",aes(label=..count..),vjust=-0.5)#+coord_flip()

#histogram
  msleep %>% 
    drop_na(sleep_total) %>% 
    ggplot(aes(sleep_total))+geom_histogram(binwidth=2,fill="pink")+theme_bw()+labs(titla="hour of sleep",x="Total hour",y="no")
  
  