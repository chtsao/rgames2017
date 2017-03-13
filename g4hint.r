# This is the hint program for game 4. Enjoy!
# by Kno Tsao
windows()
par(mfrow=c(2,2)); 
plot(x,dnorm(x),main="pdf of N(0,1)")  # Plot density of Z ~ N(0,1) random variable

# Generate sample of sizes 10, 100, 1000 from Z
x10<-rnorm(10,0,1);x100<-rnorm(100,0,1);x1000<-rnorm(1000,0,1);

# Compute summary stats and variances 
summary(x10); summary(x100); summary(x1000);
var(x10);var(x100);var(x1000)

# Plot histograms
hist(x10,main="10 samples from N(0,1)");
hist(x100,main="100 samples from N(0,1)");
hist(x1000,main="1000 samples from N(0,1)");

# Open another graphical device/window
windows()
plot(x,dnorm(x),main="pdf of N(0,1)")
par(mfrow=c(2,2)); 
plot(x,dnorm(x),main="pdf of N(0,1)") # Standardized histograms
hist(x10,main="10 samples from N(0,1)",prob=TRUE);
hist(x100,main="100 samples from N(0,1)",prob=TRUE);
hist(x1000,main="1000 samples from N(0,1)",prob=TRUE);

# Another window for Bernoulli(p) ~ Bin(1,p)
windows()
x<-seq(from=-3,to=+3,length.out=7) # What is we just use the earlier x?

par(mfrow=c(2,2)); 
plot(x,dbinom(x,1,.5),main="pmf of Bernoulli(0.5)")
# Standardized histograms
hist(x10,main="10 samples from N(0,1)",prob=TRUE);
hist(x100,main="100 samples from N(0,1)",prob=TRUE);
hist(x1000,main="1000 samples from N(0,1)",prob=TRUE);

q()

