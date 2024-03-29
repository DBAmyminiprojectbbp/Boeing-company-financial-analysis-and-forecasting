library(readr)
p<-read.csv('DataforDBAsheet4.csv')
summary(p)
hist(p$glod)
hist(p$efo)
hist(p$oi)
hist(p$iade)
hist(p$ebit)
hist(p$ite)
hist(p$ne)
hist(p$beps)
hist(p$deps)
boxplot(p$glod,p$efo,p$oi,p$iade,p$ebit,p$ite,p$ne,p$beps,p$deps)
stem(p$year)
regmodel=lm(p$year)
kruskal.test(p$efo,p$year)
friedman.test(p$glod,p$year,blocks = 2)