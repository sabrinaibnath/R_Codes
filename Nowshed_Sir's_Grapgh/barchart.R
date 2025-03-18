library(tidyverse)
view(starwars)

starwars %>% 
  filter(hair_color=="black"|
         hair_color=="brown" ) %>% 
  drop_na(sex) %>% 
  ggplot(aes(hair_color,fill=sex))+geom_bar(position="dodge",alpha=0.5)+theme_bw()+theme(panel.grid.major=element_blank(),
                                                                                         panel.grid.minor=element_blank(),
                                                                                         legend.position = "none")+labs(
                                                                                           title="bar chart",
                                                                                           x="Hair color",
                                                                                           y="number of character"
                                                                                         )+facet_wrap(~hair_color)



