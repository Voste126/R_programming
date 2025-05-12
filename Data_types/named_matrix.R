# Create a matrix with named rows and columns:

nums <- matrix(1:12, 3, 4)
colnames(nums) <- c("col1", "col2", "col3", "col4")
rownames(nums) <- c("row1", "row2", "row3")

nums

# Return "row1" and every column:
print(nums["row1",])


# Return all rows and just "col2" and "col4":
nums[, c("col2","col4")]

# Return "row2" and "row3" of "col1" and "col4":
nums[c("row2", "row3"), c("col1","col4")]




