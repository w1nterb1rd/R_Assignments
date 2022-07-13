
x <- c (1,3,5,7)
x
x[3]
#to check third position value of vector x.
x[2:4]
#tells values of second to fourth position of vector.
x[c(1,4)]
#tells values of first and fourth position.
length(x)
#number of elements in x.

y <- matrix(1:6 , nrow = 3 , ncol = 2)
y
y[1,]
#position in matrix is given as [row,col].
y[,1]
y[2,2]
y[2,]

z <- list(2,4,6 , "tanya" , FALSE , 5+10i)
z
z[(2)]
z[(4)]
z[c(2,5)]
length(z)
z[(1:6)]

data <- data.frame(iris)
data
dim(data)
names(data)
data[('Sepal.Width')]
#to go to a column of data frame.
data[1:100,]
#to select 1 to 100 rows of data frame ; [row,col] ; col blank means all values of columns.
data[51:100,]
data[data$Species == "setosa",]
# to filter rows of a specific category.
data[data$Species != "setosa",]
data[data$Species == "setosa" & data$Species == "virginica",]
#not working
a <- data[data$Species == "virginica",]
b <- data[data$Species == "versicolor",]
rbind(a,b)


x <- c(1,2,3,4,NA,NA,7,NA)
x
table(is.na(x))
# first method to remove NA values.
null_val <- is.na(x)
null_val
x[!null_val]
# second method to remove NA values.
y <- na.omit(x)
x[na.omit(x)]
# third method to remove NA values.
comp_case <- complete.cases(x)
x[comp_case]

