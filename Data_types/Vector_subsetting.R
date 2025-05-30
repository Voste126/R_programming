# Vector Subsetting¶
# The index position of the items within a vector begin counting from 1. You can get slices or subsets of a vector by placing the index position of items between square brackets:

# Create a vector named "items":

items <- c(5,10,15,20,25,30,35,40)

# Return the first element in the vector; the element at index position 1:
items[1]

# Return a vector containing the third element:
items[3]

# A negative value means to exclude the index position.
# Return a vector with everything except the third element:
items[-3]

# Return a vector with the first through second elements (inclusive):
items[1:2]

# You can use a vector to do the subsetting (particularly when the indices are non-consecutive).
# Return a vector with the first and fourth elements:                                                       
items[c(1,4)]

# Return a vector with the first, third, and first element again:
items[c(1,3,1)]

# Return a vector without the first through second elements:
items[-1:-2]
