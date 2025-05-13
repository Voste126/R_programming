# The basic structure of a for loop:¶
# for (item in some_vector) {
#     <block of code>
# }

for(number in c(2,4,6,8)) {
  print(number)
}

# You are not required to use the items from the vector. 
# You can simply execute your code block for as many items as there are in the vector.

for(number in c(2,4,6,8)){
  print("Hello!")
}

# Using the vector's index:

vec = c(5,10,15,20)

for(i in 1:length(vec)) {
  cat("Item at index", i, "is", vec[i], "\n")  # "\n" is the new-line character. Try delete it to see what it does.
}

# An alternative to the above is to use the function seq_along() which returns the index of each item in the vector:

vec = c(5,10,15,20)

for(i in seq_along(vec)){
  cat("Item at index", i, "is", vec[i], "\n")
}

# Create a vector with the following numbers: 63, 81, 72, 56, 92, 75.
# Loop through each number in the vector.
# If the number is less than 75 print "Fail". If the number is 75 or greater print "Pass".

for (number in c(63, 81, 72, 56, 92, 75)) {
  if (number < 75) {
    print("Fail")
  } else {
    print("Pass")
  }
}

vector = c(63,81,72,56,92,75)
for (num in seq_along(vector)){
    if (number < 75) {
    print("Fail")
  } else {
    print("Pass")
  }
    
}