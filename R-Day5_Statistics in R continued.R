#outliers can either be
  #removed
  #impuded with another value
  #take log of all values, so the values become smaller and fall in normal distribution.

  ### CO-RELATIONS ###

#Correlation
  # lc=1 or lc=-1 perfect correlation
  # 1>lc>0.75 strong correlation
#if a variable has correlation with two other variables, the effect of both variables dilutes the correlation; ultimately the correlation disappears.
#to deal with that, the two variables are replaced with one variable that compensates the effect of both variables.

?mtcars
str(mtcars)

plot(mtcars[,c(1,3:7)])
#
# a check for pairwise correlation in mtcars of all rows with columns 1,3,4,5,6,7
#pairwise correlation between mpg and disp, mpg and hp, mpg and drat, mpg and wt, mpg and qsec
#we cannot draw correlations between factors
#plots donot tell exactly what kind of correlation exists between the two

  ### NULL HYPOTHESIS ###

#This is used when we have a very large dataset, we cannot calculate for this large dataset
#We take a subset of this dataset and do calculations for that
#The we use Null Hypothesis to check if the calculations for subset represent the entire dataset or not

#If P value > level of significance, accept null hypothesis; otherwise reject
#Standard Rule: P > 0.05, accept; P < 0.05, reject null hypothesis
#P value <- Probability value
#Alpha <- level of significance; says we are alpha% confident that null hypothesis is true

cor.test(mtcars$hp,mtcars$mpg,method = 'pearson')
#testing for correlation between hp and mpg using pearson method
#pearson is used for numeric value of variables
# method = 'spearman' for factor values
options(scipen = 999) #to remove exponential terms (obtained in p-value)
cor.test(mtcars$hp,mtcars$mpg,method = 'pearson')
#h0 : no correlation
#hA :  presence of correlation
#df <- degrees of freedom
# confidence interval - upper bound, lower bound; says we are 95% sure that the correlation value lies between the upper and lower bound,
# cor gives correlation value, strong negative

cor.test(mtcars$cyl,mtcars$gear,method = 'spearman')
#spearman ke liye factors me change karne ki zarurat nahi, bas you know ye dono factors hai
#cor.test sirf numeric format variables ko hi test karti hai, isliye don't change
#p-value < 0.05, reject null hypothesis; implies we accept 'true rho is not equal to zero',i.e.,correlation exists.
#weak correlation


  ### NORMALITY TEST ###

## SHAPIRO TEST ##
set.seed(100)
#jitni baar ctrl+enter press karte, utni baar new random numbers set generate hote hain 
#set.seed karne se har baar same 100 number set generate hoga
normally <- rnorm(100,5,1)
shapiro.test(normally)
#h0 : data is normally distributed
#hA : data is not normally distributed
#p > 0.05; we have to accept null hypothesis; data is normally distributed
#easier, more reliable

## KOLMOGOROV-SMIRNOV TEST ##
#compares normality of one set to another set of same length
#isliye bracket me pehle wo column name jiska ND check karna hai,dusra column of same length
k <- rnorm(50)
y <- rnorm(50)
ks.test(k,y)
#h0 : k and y both normally distributed
#hA : two sided => either k is ND or y is ND
#p>0.05; accept null hypothesis; both k and y are normally distributed

#lower.tail=TRUE humesha upna left side ka area deta hai (left of specified q)
pnorm(q = 2, mean = 5, sd = 1, lower.tail = TRUE)
#generates a normal distribution with area under left portion(<2)
#result obtained is p-value

#if we want the p-value of area >2 :-
pnorm(q = 2, mean = 5, sd = 1, lower.tail = FALSE)
#or
1 - pnorm(q = 2, mean = 5, sd = 1, lower.tail = TRUE)

## Z-TEST ##
# to see if mean of dataset matches with mean of subset
data <- c(55440, 52925, 73563, 72295, 77555, 63228, 59268, 67414)
#h0 : Average Salary=65000
#hA : Average Salary not equal to 65000

xbar <- mean(data)
xbar
mu <- 65000
sd <- 7500
n <- length(data)
n
z <- sqrt(n)*(xbar-mu)/sd
z
pnorm(z,0,1,lower.tail = TRUE)
#convert a column to Z
# X bar <- Sample mean
# mu <- population sample
# Z <- (x bar - mu)/(sigma/root n)
# z => mean=0 variance=1
#sigma <- population sd
# sd = sigma/root n

## F-TEST ##
# to see variance of dataset(population) matches with variance of subset(sample)
x <- rnorm(50)
y <- rnorm(50)
#h0 : var(x) = var(y); var(x)/var(y)=1
#hA : var(x) not equal to var(y)
var.test(x,y)
#p>0.05; accept null hypothesis


## CHI-SQUARED TEST ##
# to check for correlation between factor variables
#h0 : categorical(factor) variables are independent
#hA : categorical(factor) variables are co-related
#works for factors variables (not numeric)
unique(mtcars$carb)
unique(mtcars$cyl)
chisq.test(mtcars$carb,mtcars$cyl)
# p<0.05; reject null; correlation exists


## T-TEST ##
#one-sample t-test : comparing one sample with population
x <- rnorm(50, mean = 10, sd = 0.5)
t.test(x, mu=10)
#h0 : mean(x) = mean(mu); mean(x)=10
#hA : mean(x) not equal to 10

#two-sample t-test : comparing means of two samples
t.test(x=c(1:10),y=c(7:20))
#h0 : mean(x) = mean(y); mean(x)-mean(y)=0
#hA : difference in means not equal to zero
#p<0.05; reject h0; mean(x) not equal to mean(y)

### "WHEN T-TEST AND WHEN Z-TEST?" ###
#t-test when n<30        #z-test when n>30
#when sigma unknown      #when sigma known


## PARAMETRIC TEST ##
#If data is normally distributed
#Z-TEST, T-TEST

## NON-PARAMETRIC TEST ##
#If data is not normally distributed
#wilcox test


## WILCOX TEST ##
#here, significance value = 90%, i.e., alpha=10%
numeric_vector <- c(20,29,24,19,20,22,28,23,19,19)
wilcox.test(numeric_vector, mu=20, conf.int = TRUE)
#h0 : mu = 20
#hA : 
#p>0.10; accept h0

wilcox.test(x=c(1:15),y=c(6:10))
#p>0.10; accept h0; no difference in mean values
