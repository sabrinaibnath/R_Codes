library(readxl)

Dn<-read_excel("C:/Users/Acer/OneDrive/Documents/Nowshed_Sir's_Grapgh/PieData.xlsx")
Dn
S<-Dn$UserNumber
M<-Dn$Category
M
 S
 pie(S,M,main="Pie for don't know")
 