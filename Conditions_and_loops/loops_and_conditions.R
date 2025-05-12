# Every if statement has an expression that can be evaluated as either TRUE or FALSE (Logicals) and is called a conditional test. R uses the results of the conditional test to decide whether the code within an if statement should be executed. If a conditional test evaluates to TRUE, then R executes the indented code block following the if statement. If the test evaluates to FALSE, R will ignore the code following that if statement.

x <- 12

if(x > 0) {
  print("x is a positive number")
}



username = "Samantha"
password = "sams_pass"

if(username=="Samantha") {
    if(password=="sams_pass") {
        cat("Welcome back, ", username, "!")
    }
}

# The first condition to return TRUE will have its code block run and then the if statement will be exited:

age <- 9

if(age < 10) {
  
  print("Just a kid.")
  
} else if (age < 16) {
  
  print("Can't drive yet!")
  
} else if (age < 21) {
  
  print("No drinking for you!")
  
}

