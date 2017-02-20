# Template R code for data summary, iris data Sepal.Length

summary(iris)  # Summarize and plot dataset iris 
plot(iris)

attach(iris)   # Set iris as the default data.frame
s<-Sepal.Length
summary(s)     # 5-point summary of variable s
sd(s)          # Compute standard deviation of s
stem(s)        # Stem-and-leaf plot

par(mfrow=c(2,2));    # Setup the graphical device

hist(s); boxplot(s); qqnorm(s); plot(density(s));
# Histogram, Boxplot, Normal QQ plot and density plot of s

history()      # Review session history
