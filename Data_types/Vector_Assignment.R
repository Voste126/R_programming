# Create a vector named "items":

items <- c(5,10,15,20,25,30,35,40)
items
# [1]  5 10 15 20 25 30 35 40

# Assign 100 to the item at index position 2:

items[2] <- 100
items
# [1]  5 100 15 20 25 30 35 40

# Assign 0 to every index position except 2:

items[-2] <- 0
items
# [1]  0 100  0  0  0  0  0  0


# Multiply two vectors together (element-wise).  Return a new vector with the results:
c(1,2,3) * c(2,4,6)
# [1]  2  8 18

