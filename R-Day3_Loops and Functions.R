#Function in R , Date and Time , Quartiles

# Control conditions in R:-
x <- 5
if (x>0) {}
if(x>0){
  print("positive statement")
}
y <- (-3)
y
if(y==2)
{
  print("positive statement")
}

m <- 5
if(m>0)
{
  print("Positive Number")
}
else
{
  print("Negative Number")
}

if(m>0){
  print("Positive Number")
} else{
  print("Negative Number")
}

z <- 0
z
if(z>0){
  print("Positive Number")
} else{
  print("Negative Number")
}

if(z>0){
  print("Positive Number")
} else if(z<0){
  print("Negative Number")
} else{
  print("Zero")
}

#if else for a vector
b <- c(2,4,5,7,9.0)
b
ifelse(b%%2==0,"even","odd")
# %% is modulus (remainder from division) 
# == for a condition

weight <- c(1:100,NA,NA,NA,NA,NA)
weight
ifelse(weight>0 & weight<=7, 'LOW',
       ifelse(weight>7 & weight<=15, 'MEDIUM',
              ifelse(weight>15, 'HIGH','NOT AVAILABLE')))

getwd()
dummy_data <- read.csv("Dummy data for practise.csv")
z <- c(dummy_data$Item_Weight)
z
dummy_data$nc <- ifelse(z>0 & z<=7, 'LOW',
       ifelse(z>7 & z<=14, 'MEDIUM',
              ifelse(z>14, 'HIGH','NOT AVAILABLE')))

# for loop
for(i in 1:10){
  print(i)
}

x<-c(1:4)
for(i in x){
  print(i)
}
for(i in 2010:2016){
  output <- paste("This year is",i)
  print(output)
}

# while loop
x <- 1
while(x<5){
  x <- x+1
  print(x)
}
# use of break
x <- 1
while (x<5) {
  x <- x+1
  if(x==3)
    break
  # loop will break when result of x is 3
  print(x)
}
# use of next
x <- 1
while (x<5){
  x <- x+1
  if(x==3)
    next
  print(x)}

# functions
f <- function(x){
  result <- x^3
  print(result)
}
f(3)
f(4)

area <- function(x,y){
  result <- x*y
  print(result)
}
area(2,3)

pow <- function(x,y){
  result <- x^y
  print(paste(x,"raised to the power",y,"is",result))
}
pow(2,3)

x <- matrix(1:9, nrow = 3, ncol = 3)
x
apply(x,1,sum) # gives sum rowwise
apply(x,2,sum) # gives sum columnwise
apply(x,1,mean)
apply(x,2,mean)

d <- c(2,3,4,5)
d
apply(d,2,sqrt)
# here, dimension problem because no row , no column
# gives option for row-wise or columnwise
# gives output in the form of vector
lapply(d,sqrt)
# by default acts columnwise
# gives output in form of list
unlist(lapply(d,sqrt))
# to show output in vector form

x <- c(1,2,3,4)
x
y <- c(4,3,2,1)
y
z <- x + y
z
x[x>2]
z==7
