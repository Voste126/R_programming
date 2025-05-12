# Data frames are the most common way of storing and analyzing data in R. 
# The columns (which are vectors) can be of different types, but they must be the same length.

df <- data.frame(name=c("Carl","Diane","Sally","Ben","Kimmy"),
                age=c(42,40,17,14,12),
                sex=c("Male","Female","Female","Male","Female"))

# dim()
# The dim() function is used to get the dimensions (rows x cols) of a data frame
dim(df)

nrow(df)
# The nrow() function is used to get the number of rows in a data frame

ncol(df)
# The ncol() function is used to get the number of columns in a data frame

colnames(df)
# The colnames() function is used to get the names of the columns in a data frame


# Return the first two rows with all of the columns:
df[1:2, ]

# Return the first and third row (with all of the columns); a comma follows the vector so it indicates rows):
df[c(1,3), ]

# Return the first and third columns (with all of the rows); no comma follows the vector so it indicates columns:
df[c(1, 3)] 


# Return the column named "name" with all of the rows (returns a data frame):
df["name"]

# Return the column named "name" with all of the rows (using "$" returns the vector):
df$name

# Using a vector for the names of the columns returns those columns in the selected order (with all of the rows):
df[c("sex", "age", "name")] 

# Logical subsetting¶
# A logical expression is a question and can only return TRUE or FALSE.

# By placing the logical expression from above within the square brackets of the data frame, 
# only the TRUE rows will be returned.


# Return the rows where the column "age" is less than 18, and return the columns "age" and "name": 
df[df$age < 18, c("age", "name")]

# Here, you are asking the data frame which rows have an "age" less than 18 AND a "sex" equivalent to "Female":
(df$age<18) & (df$sex=="Female")

#From the following data frame, select only the rows where "age" is over 30 and "sex" is "Male", and return only the columns "age" and "sex"
df[(df$age>30) & (df$sex=="Male")]