library(readxl)

DF<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/ColumnBarData.xlsx")


ggplot(DF,aes(Years,Sales))+geom_point()+geom_line()+theme_bw()
