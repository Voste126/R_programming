# Matrix Subsetting¶
# You can select a subset of a matrix by placing the desired rows and columns, separated by a comma, within square brackets.
# Create a matrix named "nums":

nums <- matrix(1:12, 3, 4)
nums
# #      [,1] [,2] [,3] [,4]
# # [1,]    1    4    7   10
# # [2,]    2    5    8   11
# # [3,]    3    6    9   12

# Return the element located in the second row of the third column:
nums[2,3]

# Return rows 1 and 2 of columns 3 and 4:
nums[1:2, 3:4]

# An alternative way to get the same results as above...
# Return all rows except the third, and all columns except the first and second:
nums[-3, -1:-2]

# Return just row two (must be followed by a comma) and all of the columns:
nums[2, ]

# Return just column four (must be preceded by a comma) and all of the rows:
nums[, 4]

# colnames()
# The colnames() function can be used to assign names to the columns:
colnames(nums) <- c("col1", "col2", "col3", "col4")
nums
# #      col1 col2 col3 col4
# # [1,]    1    4    7   10
# # [2,]    2    5    8   11
# # [3,]    3    6    9   12

# # rownames()
# The rownames() function can be used to assign names to the rows:
rownames(nums) <- c("row1", "row2", "row3")
nums

# #      col1 col2 col3 col4
# # row1    1    4    7   10
# # row2    2    5    8   11
# # row3    3    6    9   12


# Create a matrix by passing it a vector with numbers from 21 to 40. Shape the matrix to have 4 rows and 5 columns. 
# Assign the names of the weekdays (i.e., Monday through Friday) to the five columns. Name the four rows "California", "Texas", "Florida", "New York". Name the matrix "states". 
# Display the matrix.
nums <- matrix(21:40, 4, 5)
colnames(nums) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
rownames(nums) <- c("California", "Texas", "Florida", "New York")
nums

