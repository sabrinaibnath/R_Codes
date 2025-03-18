install.packages("treemapify")
library(ggplot2)
library(dplyr)
library(treemapify)
data(Marriage,package ="mosaicData")

plotr<-count(Marriage,officialTitle)
ggplot(plotr,
       aes(fill = officialTitle,
           area = n,
           label = officialTitle)) +
  geom_treemap() +
  geom_treemap_text(colour = "white",
                    place = "centre") +
  labs(title = "Marriages by officiate") +
  theme(legend.position = "none")
