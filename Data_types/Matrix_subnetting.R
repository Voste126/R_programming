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
