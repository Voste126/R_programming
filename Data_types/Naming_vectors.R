# Create a vector giving names to each element:

groceries <- c("milk"=3.56, "bread"=4.29, "rice"=5.98)
groceries
# [1] milk   bread  rice

# Place the element's name within the square brackets of the vector to return its value:
groceries["rice"]
# [1] 5.98

# Use a vector of names to return more than one element's value:
groceries[c("rice", "bread")]


