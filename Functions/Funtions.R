# Functions are named blocks of code that enable you to perform a task again and again without needing to retype the code each time. An R function is created by using the keyword function.

# Below shows the simplest structure of a function in R. You begin by using function() to indicate to R that you are defining a function. The function declaration will always be followed by parentheses within which you will provide any information the function needs to perform its job. Following the function() declaration is the function definition (the code to be executed to perform the desired task) contained within curly braces. The defined function should then be assigned to an appropriate function name.

# name_of_function <- function() {
#   <block of code to be executed>
# }


greeting <- function(){
  print("Hello!")
}

greeting()


# Define the function:

greeting <- function(word, num_times) {
    for(i in 1:num_times) {
        print(word)
    }
}
# Call the function:
greeting("Howdy!", 5)


# Define the function with default values:
greeting <- function(word="Hi!", num_times=2){
    for(i in 1:num_times){
        print(word)
    }
}

# Call the function:
greeting()



# Define a function named "odd_or_even".
# The function should receive a vector of numbers as one parameter.
# The function should also receive a second parameter ( 0 or 1) that tells it whether to print out the even numbers (if 0), or the odd numbers (if 1).
# Call the function passing in an argument for odd or even printing along with the following vector: c(1,2,3,4,5,6,7,8,9,10)

odd_or_even <- function(numbers, odd_or_even) {
    if (odd_or_even == 0) {
        for (number in numbers) {
            if (number %% 2 == 0) {
                print(number)
            }
        }
    } else {
        for (number in numbers) {
            if (number %% 2 != 0) {
                print(number)
            }
        }
    }
}
# Call the function:
odd_or_even(c(1,2,3,4,5,6,7,8,9,10), 0)


# We can apply a function to each element in a vector by using the sapply() function.
# For example, we will define a square_num() function to square the values passed to it:
square_num <- function(x) {
    return(x^2)
}
# Now we can use sapply() to apply the square_num() function to each element in the vector:
sapply(c(2,4,6,8), FUN = square_num)



# apply()
# We can also apply a function to a matrix by using the apply() function. Since a matrix is two dimensional, there's an additional required parameter called MARGIN which indicates whether you would like for the function to be applied over the rows (indicated by a 1) or over the columns (indicated by a 2).
# Create a matrix:

mat <- matrix(1:12, 6, 2)
mat

apply(mat, MARGIN=2, FUN=mean)