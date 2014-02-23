# Notes on A. Renyi's Probability Theory

#### META ####
In this section we describe some aspects of 
Probability Theory by A.Renyi.

Pages:        608
Chapters:       9
Sub-Chapters: 112
Pg/Ch         608/9    = 67.56
Pg/Su         608/112  =  5.43  
Su/Ch         112/9    = 12.44

e <- c(20,50,50,47,29,20,24,30,18)
sum(e)
plot(e,type="l")
plot(sort(e),type="l")

p<-c(20,55,88,73,56,72,67,100,77)
sum(p)
plot(p,type="l")
plot(sort(p),type="l")


c<-c(6,12,18,17,9,10,16,13,11)
sum(c)

plot(p,c)

sp<-sort(p)
sc<-sort(c)

plot(sc,sp)

cor(p,c)
cor(sp,sc)

sp/sc