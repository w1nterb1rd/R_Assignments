# Statistics

x <- rnorm(200,mean=20,sd=1)
# used to create normally distributed random variable
# normal distribution means bell shaped curve with x axis value corresponding to peak is mean = median = mode
# here 200 random numbers are generated jinka mean is 20 and standard deviation is one (means zyada spread nahi hai mean se data me)
x
mean(x)
median(x)
sd(x)
library(modes)
modes(x)
plot(x)
#par(mar = rep(2,4)) this is to correct margin error, if any, in plot.

runif(50)
#generates 50 normal distributed values between 0 and 1.

# DIFFERENCE BETWEEN 'rnorm' AND 'runif':-
#rnorm generates normally distributed random variables around the specified mean value and within specified sd
#runif generates normally distributed random variables between 0 to 1

y<-rnorm(200,mean=20,sd=2)
y
# isme zyada spread hai from mean value, values range from 17-25


## SAMPLING ##
sample(1:20,5)
#sampling without replacement (jo cheez sample se bahar nikali, wo wapis nahi rakhi, eg, ek bag me 5 balls hai bbbrg, ek ball nikali, bahar rakh di)
#created a sample space of numbers 1 to 20 and took 5 values from it.
a <- rnorm(20 , mean = 10,sd = 1)
a
sample(a,5)
# generated a normal distribution around mean value and extracted 5 values from them.

sample(1:20,25,replace = TRUE)
#sampling with replacement (ek blue ball bahar nikali, wapis bag me rakh di; sample space size same raha)
# created a sample space of numbers 1 to 20, took out 25 values from it with replacement.
sample(a,10,replace=TRUE)
#took 10 values with replacement from the generated normal distribution.

z <- rnorm(50,mean=5,sd=1)
z
plot(z)
mean(z,trim=0.20)
#trimmed mean, 0.20 is percentage of trim;
#data is arranged in ascending order, then (no. of obs. * trim percent) is applied; here (50*0.20=10)
#10 lowest values and 10 highest values are removed and then mean is calculated.


## MEASURES OF CENTRAL TENDENCY ##
1/mean(1/z)
#harmonic mean
(prod(z))*1/length(z)
# geometric mean
range(z)
#gives highest and smallest value
range(z)[2] - range(z)[1]
#calculation of range
skewness(z)
# positive value indicates positively skewed, right skewed
install.packages("e1071")
library(e1071)
kurtosis(z)
#negative value indicates mesokurtic
hist(z)
barplot(z)

#DIFFERENCE BETWEEN HISTOGRAM AND BARPLOT
#barplot has spaces in between bars, plotted for categories
#histogram does not have spaces between bars, plotted for continuous classes

age <- c(17,18,18,17,18,19,18,16,18,18)
table(age)
barplot(table(age),
        main="Age Count of 10 Students",  #title of graph
        xlab="Age",                       #label of x axis
        ylab="count",                     #label of y axis
        border="red",                     #color of border of bars
        col="blue",                       #color inside bars
        density=100)                      #thickness of colored lines

q <- c(1,2,2,5,6,18)
boxplot(q)
#boxplot
boxplot(q,horizontal=TRUE)
#horizontal boxplot