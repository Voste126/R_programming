# ### csv file
# Comma separated values (csv) is a common way that data can be formatted. To import a csv file, read.csv() is used. The name of the file is passed in and the dataset will be imported as a data frame.
# For example:

df <- read.csv("data/heart_disease.csv")

# head()¶
# The head() function displays the first six rows (by default):
head(df)

# Display the first 15 rows:
head(df, 15)

# tail()
# The tail() function displays the last six rows (by default):
tail(df)

# unique()
# The unique() function will display the unique values within a column:
unique(df$sex)

# table()
# The table() function will display the count of each unique value within a column:

# Count the frequency of each category in a column/vector:
table(df$sex)

# Table format
# Another way that we can import data is by using read.table(). This reads a file in table format and creates a data frame from it. We can set its sep parameter to indicate how the data is separated (e.g., sep="," for comma separated values). Setting the header parameter to TRUE indicates that the first row contains the names of the columns.
# For example:

# Preview the data imported via read.table():
head(df_table)
