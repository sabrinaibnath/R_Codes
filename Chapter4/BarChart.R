install.packages("mosaicData")
library(ggplot2)
library(dplyr)
#when we are working with one variable we will barchart
data(Marriage,package ="mosaicData")

ggplot(Marriage,mapping =aes(x=race))+geom_bar(fill="pink",color="black")+labs(x="Race",y="Frequancy",title="Barchart")+ scale_y_continuous(labels = scales::percent)


#sorting data
ndata<-count(Marriage,race)

ggplot(ndata,
       aes(x = reorder(race, n), y = n)) +
  geom_bar(stat="identity") +labs(x = "Race",
       y = "Frequency",
       title = "Participants by race")+geom_text(aes(label=n),vjust=-0.5)

nd<-count(Marriage,race)
nd<-mutate(nd,
           pct=n/sum(n),
           pctl=paste0(round(pct*100),"%"))
nd

ggplot(nd,aes(x=reorder(race,-n),y=n))+geom_bar(stat="identity")+labs(X="Race",y="percent")+theme(axis.text.x=element_text(angle=45,hjust=1) )

lbls <- paste0(c("","\n"), levels(Marriage$officialTitle))
ggplot(Marriage,
       aes(x=factor(officialTitle,
                    labels = lbls))) +
  geom_bar() +
  labs(x = "",
       y = "Frequency",
       title = "Marriages by officiate")
