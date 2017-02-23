# Examine Iris data in more details
#       1. Plot variable Petal.Width
# by Kno

attach(iris)
names(iris)    # list varibles of iris

plot(iris)    # Pair plots of all variables in Iris
# Focus on the panel of Petal.Width vs Species (The "(5,4)" panel)
# It is less informative due to overlapping points

summary(iris)              # Summary of variables in Iris data
summary(iris$Petal.Width)  # Summary of varible Petal.Width of Iris data

par(mfrow=c(2,1)); 
plot(Petal.Width)
boxplot(Petal.Width)

par(mfrow=c(3,1));            # Naive way making boxplots by species 
boxplot(Petal.Width[1:50]); boxplot(Petal.Width[51:100]);boxplot(Petal.Width[100:150]);

par(mfrow=c(2,1));            # Setup graphic device
boxplot(Petal.Width~Species)  # Boxplots of Petal.Width by Species 
plot(Petal.Width~Species)     # Boxplots of Petal.Width by Species
