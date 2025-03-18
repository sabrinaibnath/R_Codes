library(tidyverse)
view(Orange)
Orange %>% 
  filter(Tree !="1" & Tree!="2") %>% 
  ggplot(aes(age,circumference,colour = Tree))+geom_point(size=5,alpha=0.5)+geom_line(size=1)+theme_minimal()

