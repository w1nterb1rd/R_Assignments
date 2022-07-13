  ?mean
# to have help , description
  
  install.packages("matrix")  
install.packages('Matrix')
# to install packages

library(Matrix)
# to call a package

x <- 1
print(x)
# to give value to a variable x

y <- "Hello World!"
# a string
print(y)

z <- 1:10
print(z)
# ratio sign to assign continuous values here from one to ten

# vectors --j

x <- c(2,3,5)
x

y <- c(TRUE,FALSE)
y
# logical data type vector

z <- c(1:10)
z
# if series is continuous , then it doesn't matter you use c or not. If variables are not continuous, then put c. As general prctice, we use c.

y <- vector(2,3,4,5,6)
y

y <- c(2,3,4,5)
y

y <- vector("numeric", length = 10)
y
# another form to create vector. In this form, you cannot specify which numbers are to be added. By default, it fills the entire length with zeroes.

y <- vector(mode = "logical", length = 0)
y

g <- c(1,2,3,4,"a")
class(g)

h <- c(1,2,3,4,TRUE)
class(h)

d <- c(1,2,3,4,20-30)
class(d)
# three classes of R , numeric , character and factor.

l <- as.numeric(g)
# to change class of g to numeric.
l

x <- matrix(nrow = 3 , ncol = 2)
x
a <- matrix(1:6 , nrow = 3 , ncol = 2)
a
# to define a matrix. A matrix is two dimensional while a vector is one dimensional.
dim(a)

x <- c(3,6,9)
x
y <- c(1,0,5)
y
# binding two vectors x and y of the same length.
rbind(x,y)
# row wise binding
cbind(x,y)
# column wise binding

a <- matrix(1:10 , nrow = 5 , nrow = 2)
a

a <- matrix(1:10 , nrow = 5 , ncol = 2)
a
b <- matrix(11:20, nrow = 5 , ncol = 2)
b
AplusB <- a + b
AplusB
AminusB <- a - b
AminusB
t(a)

d <- matrix(1:10 , nrow = 5 , ncol = 2)
d
e <- matrix(1:10 , nrow = 2 , ncol = 5)
e
product <- d*e
product <- d * e
product <- d%*%e
product

a <- matrix(1:10 , nrow = 5 , nrow = 2)
a
rowsums(a)
rowSums(a)
colSums(a)
det(a)

x <- matrix(1:9 , nrow = 3 , ncol = 3)
x
det(x)

list1 <- list(24, "ab" , TRUE , 1+2i)
list1

x <- factor(c("low", "high", "medium", "low", "high"))
x
class(x)
table(x)

M <- c(1,2,3,NA,NA,5)
M
is.na(M)
table(is.na(M))

Age_data <- data.frame(Name = c("A"))

