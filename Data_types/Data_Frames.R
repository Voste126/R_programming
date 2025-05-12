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
