
pklist <- read.delim("E:/andy/work/EDU/16/pr2da/pklist2.txt", header=FALSE)
View(pklist)
v3<-list(1:60)
pklist<-as.data.frame(pklist)
pklist["v3"]<-v3

colnames(pklist) <- c("sid","name","present")
attach(pklist)
pklist

present<-sample(present)
pklist$present<-present
pklist[order(pklist[,3]),]

pklist

#點名程式
sample(name,5)

