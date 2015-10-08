#Part1 vector (10%)
#(a) should return 26852735
# Type your code here
a <- rep(10:100)
for(i in 1:91)
  a[i] = a[i]^3 + 4*(a[i]^2)
sum(a)

#(b) should return 2129170437
# Type your code here
b <- rep(1:25)
for(i in 1:25)
  b[i] = (2^b[i])/b[i] + (3^b[i])/(b[i]^2)
sum(b)

#part2 matrices (10%)
# Type your code here

#The brackets round the first line ensure the matrix ( tmp<-matrix()) is displayed so that we can check that it has been
#entered correctly.
#using multiplication (*)
A <- matrix(c( 1, 1, 3, 5, 2, 6, -2, -1, -3), nrow = 3, ncol = 3, byrow = TRUE)
A %*% A %*% A

# or using crossprod 
B <- matrix(c(10, -10, 10), nrow = 15, ncol = 3, byrow = T)
crossprod(B, B)

#part3 (80%)

# create variable speed, occupancy, volume with c()
speed <- c(32, 34, NA, 62, 70, 48, 47, 31, 42, 25)
occupancy <- c(12, 9, NA, 31, 24, 25, NA, 25, 42, 66)
volumn <- c(58, 359, NA, 202, 401, 143, 211, NA, 344, 32)

# create variable 'dtbind'  that combines speed, occupancy and volume using cbind() 
dtbind <- cbind(speed, occupancy, volumn)
dtbind
#Then check whether 'dtbind' is a matrix
class(dtbind)   #[1] "matrix"
#create data frame from the variable that you have created above, store to a new variable, called  "dtfrm" 
dtfrm <- data.frame(speed, occupancy, volumn)
dtfrm
#read dataset use read.table() 
# before that, type getwd() to show your current working directory path and setwd("your file path") to set your path
getwd()
setwd("/Users/tingyushen/Desktop")
dtfrm1 <- read.table("traffic-data.csv")

#read dataset use read.csv()
dtfrm2 <- read.csv("traffic-data.csv")

#check your data correctness using names(), str(), dim(), head()
names(dtfrm1) ; names(dtfrm2)  #yes, no
str(dtfrm1) ; str(dtfrm2)
dim(dtfrm1) ; dim(dtfrm2)
head(dtfrm1); head(dtfrm2)
#why dimenssion dtfrm1 and dtfrm2 different?
# "read.table" and "read.csv" apply different file format


#Compute the following: how many observations were made ?
str(dtfrm1)   #dtfrm1:11 observation of 1 variable
str(dtfrm2)   #dtfrm2:10 observation of 5 variable
                            

#compute mean 'speed', mean'volume' without removing missing value NA (without na.rm=TRUE)
mean(dtfrm2[,3])    #argument is not numeric or logical: returning NA
mean(dtfrm2[,5])    #argument is not numeric or logical: returning NA

#Create new dataset called 'trafficData' with removing NA 
#na.omit(your.data.frame)
trafficData <- na.omit(dtfrm2)
trafficData

#compute mean 'speed', mean 'volume' again (in dataset trafficData) 
mean(trafficData[,3])   #44.71429
mean(trafficData[,5])    #219.8571

