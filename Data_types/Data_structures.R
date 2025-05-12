# Vectors
# The fundamental data structure in R is the vector. A vector is a one-dimensional sequence of data elements, of the same type, stored in a sequence. The elements are most commonly of type character, logical, integer or numeric.

# A common way to create a vector is by directly specifying its content. The c() function can be used to "combine" the specified values:

v1  <-  c(1,2,3,4)
v1

# Create a vector from the sequence of numbers 1 through 10 (inclusive):

seq1 <- 1:10
print(seq1)

# Create a vector of 10 numbers beginning from 1:

seq(10)
#12345678910

# Create a vector of numbers from 1 through 10, but skipping every second number:

seq(1, 10, 2)
#1 3 5 7 9

# Create a vector of 20 numbers, evenly spaced between the numbers 1 through 10:

seq(1, 10, length=20)

# 1 1.47368421052632 1.947368421052632.42105263157895 2.894736842105263.36842105263158 3.842105263157894.31578947368421 4.78947368421053 5.26315789473684 5.73684210526316 
#6.210526315789476.684210526315797.157894736842117.631578947368428.105263157894748.578947368421059.052631578947379.5263157894736810

# Create a vector of numbers from 1 through 10, stepping every 0.1:

seq(from = 1, to = 10, by = 0.1)

# Create a vector by drawing from a sample of numbers from 1 through 10, without replacement:

sample(1:10)
# 1 2 3 4 5 6 7 8 9 10


# typeof()
# The typeof() function can be used to evaluate the data type that a vector contains:
# Mixed data types coerced to a single data type:

v4  <-  c(TRUE, FALSE, TRUE, "FALSE")
typeof(v4)
# [1] "character"


# #### length()
# The length() function can be used to determine the number of elements that a vector contains:
length(v4)
# [1] 4


x <- c(0.5, 0.7, NA)
# Variable containing a vector with a misssing value
x
# [1] 0.5 0.7    NA


# Try this.
x <- c("a", NA, "c", "d", "e")
# Variable containing a vector with a misssing value
x
# a .'NA.'c'.'d'.'e'

# #### is.na()
# Test each value in a vector as to whether it is missing or not:
x <- c("a", NA, "c", "d", "e")
# x is the variable containing a vector with a missing value
is.na(x)
# [1] FALSE  TRUE FALSE FALSE FALSE


# anyNA()
# anyNA() can be used to evaluate whether a vector contains any missing (NA) values:
x <- c("a", NA, "c", "d", "e")
# x is the variable containing a vector with a misssing value
anyNA(x)

