#This R code imports a namelist data, pklist2.txt, to a dataframe,
#            creates a dataframe with 3 variables: 
#             sid (student id): numeric 
#             name            : factor 
#             straw (straws to be drawn) : numeric
pklist <- read.delim("pklist2.txt", header=FALSE)
View(pklist)       # A good view of the list
v3<-list(1:20)     # Create a list from 1 to 20 (no. of students)
pklist<-as.data.frame(pklist)
pklist["v3"]<-v3

colnames(pklist) <- c("sid","name","straw") # Assign column names
attach(pklist)
pklist

straw<-sample(straw) # Reordering the straws
pklist$straw<-straw  # Redefine pklist@straw
pklist[order(pklist[,3]),] # Sort pklist according to straw

pklist

#點名程式
sample(name,5) # Get 5 random names from class names

