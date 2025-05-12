# & is the "AND" operation in R.
# Return TRUE where each item at a given index position between the vectors is TRUE:

c(FALSE, TRUE, FALSE) & c(TRUE, TRUE, TRUE)

# [1] FALSE  TRUE FALSE

# | is the "OR" operation in R.
# Return TRUE where either item at a given index position between the vectors is TRUE:

c(FALSE, TRUE, FALSE) | c(TRUE, TRUE, TRUE)
# [1] TRUE  TRUE  TRUE



# Create the vector "v":
v = c(25, 9, 16, 4)
# Test whether a value in the vector v is either less than 5 or (|) greater than 20:
(v < 5) | (v > 20)
# [1] FALSE FALSE FALSE  TRUE

# Place the logical operation from above between the square brackets of "v" to return the actual values.
# In otherwords, v will return any value whose index position is TRUE:

v[(v < 5) | (v > 20)]


# Create a vector named "nums" containing numbers from 1 through 10.
# Within the square brackets of "nums", perform a compound operation so that only values that are either less than 4 or greater than 8 are returned.
nums <- c(1:10)
nums[(nums < 4) | (nums > 8)]
# [1] 1 2 3 9 10
