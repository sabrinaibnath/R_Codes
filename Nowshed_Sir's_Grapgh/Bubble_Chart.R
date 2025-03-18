library(tidyverse)

p<-starwars %>% 
  ggplot(aes(mass,height))+geom_point(size=8,alpha=0.5,color="blue")
ggsave("Bubble.pdf")
