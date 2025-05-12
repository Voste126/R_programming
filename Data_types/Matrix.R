# Matrix
# A matrix is a two-dimensional collection of data elements. Like vectors, matrices can only contain a single data type. You can create a matrix by using the matrix( ) function.
# To create a matrix, you first specify a vector and then you can specify the desired dimensions (rows x cols).

matrix(1:12, nrow=3, ncol=4)
# Alternatively, after specifying a vector, you can indicate the desired number of rows and the number of columns will be calculated.
matrix(1:12, nrow=3)

# rbind( )¶
# The rbind() function is used to bind vectors into a matrix (row-wise):
rbind(c(1,2,3), c(4,5,6), c(7,8,9))

# cbind( )¶
# The cbind() function is used to bind vectors into a matrix (column-wise):
cbind(c(1,2,3), c(4,5,6), c(7,8,9))

# dim( )¶
# The dim() function will return the dimensions (rows, cols) of a matrix:
nums <- matrix(1:12, 3, 4)

dim(nums)
# [1] 3 4


# nrow( )¶
# The nrow() function will return the number of rows in a matrix:
nums <- matrix(1:12, 3, 4)

nrow(nums)
# [1] 3

# #ncol( )
# The ncol() function will return the number of columns in a matrix:
nums <- matrix(1:12, 3, 4)
ncol(nums)
# [1] 4
