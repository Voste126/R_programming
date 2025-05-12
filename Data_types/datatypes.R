# Lesson 1: R Basic Data Types

# You’ll learn about some of the different types of data you can work with in R:

# - [Numbers](#Numbers-(Integer,-Numeric))
# - [Character](#Character)
# - [Variables](#Variables)
# - [Logicals](#Logicals)data

#concatination
text <- "awesome"

paste("R is", text)

#printing
print("Let's print some R!")

# Setting the quote parameter to FALSE removes the quotes from the output.
print("Let's print some R!", quote = FALSE)

# Using the noquote() function prevents quotes from being output.
noquote("Let's print some R!")


# Assigning a value to a variable:
introduction <- "R here!"
print(introduction)

# Format output (spaces are automatically added between items)

men <- 32
women <- 27

# Assigning the sum of the variables men and women to the variable num_participants.
num_participants <- men+women


# Concatenating the variable num_participants with two character strings and returning the output.
cat("There are", num_participants, "individuals currently participating in the study.")


# Logicals
# The logical data type can either be TRUE or FALSE (must be in all caps). Logicals are typically used with conditional expressions. If the condition is true then TRUE is returned, otherwise FALSE is returned. Later, you will learn how logicals enable you to access specific parts of your data.

# TRUE and FALSE are reserved words in R. (T and F can be substituted, respectively.)

TRUE 
T
FALSE
F

# Comparison Operators
# Expression	Description	Result
# 1 < 2	Less Than	True
# 1 > 2	Greater Than	False
# 1 <= 2	Less Than Or Equal To	True
# 1 >= 2	Greater Than Or Equal To	False
# 1 == 2	Equivalent To	False
# 1 != 2	Not Equal To	True

# Using the three variables that you created above and the cat() function, output the following formatted sentence:

# "We have 5 pets: 2 cats and 3 dogs."
cat("we have",pets,"pets:",cats,"cats and",dogs,"dogs.")

# Create a variable named length_of_sides and assign the value 8 to it.
# Then create a variable named area and assign length_of_sides squared to it.
# Then create a variable named perimeter and assign length_of_sides times 4 to it.
# Print out the variables area and perimeter.
length_of_sides <- 8
area <- length_of_sides^2
perimeter <- length_of_sides*4
area
perimeter
