
q<- as.timeSeries(p)
plot(q$sop)
q_sop<-ts(q$sop, start=2016, end=2018, frequency=1)

install.packages("corrplot")
library(corrplot)

mydata.cor = cor((data[1:20]), method = c("spearman"))

corrplot(mydata.cor)

install.packages("Hmisc")
library("Hmisc")


p<- read.csv("~/GitHub/demorepo/Data for DBA - Copy of Sheet4.csv")
rcorr(p)
cor(p)

mydata.cor=cor(p)
library(corrplot)
corrplot(mydata.cor)
