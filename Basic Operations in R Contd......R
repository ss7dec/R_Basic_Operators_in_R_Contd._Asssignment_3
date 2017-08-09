# Assignment-3 

#Question - 3.1
#1. Create the vectors
#(a) (2, 3, ... , 29, 30)
# (b) (30, 29, ... , 2)
# (c) (1, 2, 3, .... , 29, 30, 29, 28, , 2, 1)
# (d) (4, 6, 3) and assign it to the name dev.
#For parts (e), (f) and (g) .
# (e) (5, 6, 7, 5, 6, 7, , 5, 6, 7) where there are 10 occurrences of 5.
# (f) (5, 6, 7, 5, 6, 7, , 5, 6, 7, 5) where there are 11 occurrences of 5, 10 occurrences of 6 and 10
# occurrences of 7.
# (g) (4, 4, , 4, 6, 6, , 6, 3, 3, , 3) where there are 10 occurrences of 4, 20 occurrences of 6 and 30
# occurrences of 3.

#1. Create the vectors
#(a) (2, 3, ... , 29, 30)

c(2:30)
# OR
seq(c(2:30))

########
#1. Create the vectors
# (b) (30, 29, ... , 2)

c(30:2)
#OR
sort(c(30:2),decreasing = T)
###########
#1. Create the vectors
# (c) (1, 2, 3, .... , 29, 30, 29, 28, , 2, 1)
a<-seq(c(1:30))
a

b<-sort(c(29:1), decreasing=T)
b

d<-c(a,b)
d

################
#1. Create the vectors
# (d) (4, 6, 3) and assign it to the name dev.
dev<-c(4,6,3)
dev

############

#1. Create the vectors
#(e) (5, 6, 7, 5, 6, 7, , 5, 6, 7) where there are 10 occurrences of 5.
n1<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7)
n1

# Or- An efficient way of writing a code for the above vector as follows:

# To replicate the values in a given vector a specified number of times in a collated fashion then:-
n1<-rep(5:7,times=10)
n1

# To find the occurences of a particular value in a vector, 
# use the function table to find them
occ1<-table(n1)
occ1

# To explicitly find the occurence of a specified value within a vector,you need
# to subset that vector
occ1[names(occ1)==5]

# Or alternatively convert the above Vector into a data.frame as follows:

as.data.frame(table(n1))

# OR
#By using a combination of length and grep functions as follows:

length(grep(5, n1))

#OR
# By using a combination of length and which functions as follows:

length(which(5 == n1))

#OR
# Count function can be used. 
# For this purpose plyr package needs to be executed.
# Here the given vector is converted into a data.frame wherein the occurence of 
# values and their respective frequencies can be sought.
require("plyr")
df = count(n1)
df[df$x == 5, ] 

# OR 
# Tabulate function can be used

tabulate(n1)[5]

# OR
# Combing the usage of Length and Subset functions together

length(subset(n1, n1=='5')) 

##################################
#1. Create the vectors
# (f) (5, 6, 7, 5, 6, 7, , 5, 6, 7, 5) where there are 11 occurrences of 5, 10 occurrences of 6 and 10
# occurrences of 7.

# To find the occurences/frequencies of various values in a given vector, 
# use the function table to find them out as follows:
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
occ2<-table(n2)
occ2

# To explicitly find the occurence/frequencies of specified values within a given 
# vector,you need # to subset that vector
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
occ2[names(occ2)==5]
occ2[names(occ2)==6]
occ2[names(occ2)==7]

# Or alternatively convert the given Vector into a data.frame as follows:
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
as.data.frame(table(n2))

# OR
#By using a combination of length and grep functions as follows:
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
length(grep(5, n2))
length(grep(6, n2))
length(grep(7, n2))

#OR
# By using a combination of length and which functions as follows:
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
length(which(5 == n2))
length(which(6 == n2))
length(which(7 == n2))


# OR
# Count function can be used. 
# For this purpose plyr package needs to be executed.
# Here the given vector is converted into a data.frame wherein the occurence of 
# values and their respective frequencies can be sought.
require("plyr")
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
df = count(n2)
df[df$x == 5, ] 
df[df$x == 6, ] 
df[df$x == 7, ] 

# OR 
# Tabulate function can be used

n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
tabulate(n2)[5]
tabulate(n2)[6]
tabulate(n2)[7]

# OR
# Combing the usage of Length and Subset functions together
n2<-c(5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5,6,7,5)
length(subset(n2, n2=='5'))
length(subset(n2, n2=='6'))
length(subset(n2, n2=='7'))

#####################
#1. Create the vectors
#(g) (4, 4, , 4, 6, 6, , 6, 3, 3, , 3) where there are 10 occurrences of 4, 20 occurrences of 6 and 30
# occurrences of 3.

n3<-c(4,4,4,4,4,4,4,4,4,4,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3)
n3

# OR -An efficient way of writing the code alternatively:-
# To replicate the values in the given vector in an uncollated fashion then:-
r1<-rep(4, each = 10)    
r2<-rep(6, each = 20) 
r3<-rep(3, each = 30) 
n3<-c(r1,r2,r3)
n3

# To find the occurences/frequencies of various values in a given vector, 
# use the function table to find them out as follows:
occ3<-table(n3)
occ3

# To explicitly find the occurence/frequencies of specified values within a given 
# vector,you need # to subset that vector
occ3[names(occ3)==4]
occ3[names(occ3)==6]
occ3[names(occ3)==3]

# Or alternatively convert the given Vector into a data.frame as follows:

as.data.frame(table(n3))

# OR
#By using a combination of length and grep functions as follows:

length(grep(4, n3))
length(grep(6, n3))
length(grep(3, n3))

#OR
# By using a combination of length and which functions as follows:

length(which(4 == n3))
length(which(6 == n3))
length(which(3 == n3))


# OR
# Count function can be used. 
# For this purpose plyr package needs to be executed.
# Here the given vector is converted into a data.frame wherein the occurence of 
# values and their respective frequencies can be sought.
require("plyr")

df = count(n3)
df[df$x == 4, ] 
df[df$x == 6, ] 
df[df$x == 3, ] 

# OR 
# Tabulate function can be used

tabulate(n3)[4]
tabulate(n3)[6]
tabulate(n3)[3]

# OR
# Combing the usage of Length and Subset functions together

length(subset(n3, n3=='4'))
length(subset(n3, n3=='6'))
length(subset(n3, n3=='3'))

##################################################################

# Assignment-3
#Question - 3.2

#2. Create a vector of the values of eX sin(x) at x = 3, 3.1, 3.2, , 6.

# Ans 2

# The sine function sinx is one of the basic functions encountered in trigonometry.
#  sine theta is the vertical coordinate of the arc endpoint
x <- seq(3, 6, by=0.1)
x
y <- exp(x)*sin(x)
y


####################################################################

# Assignment-3
#Question - 3.3

# 3. Execute the following lines which create two vectors of random integers 
# which are chosen with replacement from the integers 0, 1, : : : , 999. 
# Both vectors have length 250.


set.seed(100)
x <- sample (0:999, 250, replace=T)
y <- sample (0:999, 250, replace=T)

x
y

# (a) Identify out the values in y which are > 500.
y_val <- y[c(y>500)==TRUE]
y_val 

#or

y_val_alt<-y[y>500]
y_val_alt

#(b) Identify the index positions in y of the values which are > 700? 
indx_pos <- which(y>700)
indx_pos

#or

indx_pos_alt<-(1:length(y))[y>700] 
indx_pos_alt

#(c) What are the values in x which are in Same index position to the values in y which are > 400?  
eg_3<-x[y>400]
eg_3

#(d) How many values in y are within 200 of the maximum value of the terms in y? 
sum(y>max(y)-200)

#or
count_val <- length(y[y>= (max(y)-200)])
count_val

#(e) How many numbers in x are divisible by 2? 
divisibility <-length(x[x%%2])
divisibility

#or
alt_divisibility <-sum(x%%2==0)
alt_divisibility  


#(f) Sort the numbers in the vector x in the order of increasing values in y. 
eg_sort <- x[order(y)]
eg_sort

#(g) Create the vector (x1 + 2x2 - x3; x2 + 2x3 -x4 ,,  xn???2 + 2xn???1 - xn). 
vec_creation <-x[-c(249,250)] + 2*x[-c(1,250)]-x[-c(1,2)]
vec_creation

# OR
# or, for an answer which works whatever the length of x,
vec_lt <- length(x)
x[-c(vec_lt-1,vec_lt)]+2*x[-c(1,vec_lt)]-x[-c(1,2)]

#############################################################

# Assignment-3
#Question - 3.4

# 4. Use the function paste to create the following character vectors of length 30:
#(a) ("Label 1", "Label 2", ....., "Label 30").
#*Note that there is a single space between label and the number following.

#(b) ("FN1", "FN2", ..., "FN30").
#**In this case, there is no space between FN and the number following.

#Ans 3.4(a)
#*Note that there is a single space between label and the number following.


# The function paste() is perhaps one of the most important functions that we can use to
# create and build strings. paste() takes one or more R objects, converts them to "character",
# and then it concatenates (pastes) them to form one or several character strings. Its usage
# has the following form:

              paste(..., sep = " ", collapse = NULL)

# The argument ... means that it takes any number of objects. The argument sep is a
# character string that is used as a separator. The argument collapse is an optional string to
# indicate if we want all the terms to be collapsed into a single string.


char_vec_demo_1 <- paste("Label", c(1:30), sep =" ", collapse = NULL)
char_vec_demo_1 <- paste("Label", c(1:30), sep =" ", collapse = NULL)
char_vec_demo_1

##########

#Ans 3.4(b)
char_vec_demo_2<-paste("FN", 1:30, sep = "", collapse = NULL)
char_vec_demo_2

#######################################################

# Assignment-3
#Question - 3.5

# 5. Compound interest can be computed using the formula
# A = P × (1 + R/100)n, where P is the original money lent, A is what 
# it amounts to in n years at R percent per year interest.
# Write R code to calculate the amount of money owed after n years, where
# n changes from 1 to 15 in yearly increments, if the money lent originally
# is 10000 Rupees and the interest rate remains constant throughout the 
# period at 11.5%.

# The formula to find out Compund interest is: A = P (1 + R/100)

principal_amt<-10000
int_rate<-11.5
no_of_years<-15
Amount<-?

# By applying the above values in the given Compund Interest formula then:

for (int_rate in no_of_years){
  Amount <- principal_amt * (1+int_rate/100)^(1:no_of_years)
  print(Amount) 
}

Amount


##############################################################

# Assignment 3
#Question - 3.6

# 6) Generate the following matrices.
# [,1] [,2] [,3] [,4]
# [1,] 1 101 201 301
# [2,] 2 102 202 302
# [3,] 3 103 203 303
# [4,] 4 104 204 304
# [5,] 5 105 205 305

# Ans.6
#Matrix is a two dimensional data structure in R programming.
#Matrix is similar to vectors but additionally contains the dimension attribute.

matrix_demo<-matrix(c(1:5,101:105,201:205,301:305),nrow=5,ncol=4)
matrix_demo

# To check whether the above variable is a matrix or not, we use Class function as follows:
class(matrix_demo)
# To understand the attributes/properties of the above matrix, we use attributes or dim function as follows:
attributes(matrix_demo)

# Or
dim(matrix_demo)

# To verify whether the above data-structure is a Matrix or not:
is.matrix(matrix_demo)


############################################################















