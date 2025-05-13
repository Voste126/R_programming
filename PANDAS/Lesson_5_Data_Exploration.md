<img src="materials/images/introduction-to-pandas-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

This module introduces you to the pandas library for working with structured data. Pandas is powerful and expressive, and it's one of the primary reasons that Python has become a leading option for doing data science. Pandas provides data structures and intuitive capabilities for performing fast and easy **data cleaning, preparation, manipulation, aggregation, and sophisticated analysis**. 

We will go through seven lessons with you:

- [**Lesson 1: Pandas Data Structures**](Lesson_1_Pandas_Data_Structures.ipynb)

- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)

- [**Lesson 3: Selecting and Filtering Rows and Columns**](Lesson_3_Selecting_and_Filtering_Rows_and_Columns.ipynb)

- [**Lesson 4: Importing Data**](Lesson_4_Importing_Data.ipynb)

- <font color=#E98300>**Lesson 5: Data Exploration**</font>    `📍You are here.`

- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

- [**Lesson 7: Data Analysis**](Lesson_7_Data_Analysis.ipynb)
    
</br>

### ✅ Exercises
We encourage you to try the exercise questions in this module, and use the [**solutions to the exercises**](Exercise_solutions.ipynb) to help you study.

</br>

<div class="alert alert-block alert-info">
<h3>⌨️ Keyboard shortcut</h3>

These common shortcut could save your time going through this notebook:
- Run the current cell: **`Enter + Shift`**.
- Add a cell above the current cell: Press **`A`**.
- Add a cell below the current cell: Press **`B`**.
- Change a code cell to markdown cell: Select the cell, and then press **`M`**.
- Delete a cell: Press **`D`** twice.

Need more help with keyboard shortcut? Press **`H`** to look it up.
</div>

---

# Lesson 5: Data Exploration

We are going to go through these concepts in this module:

- [Descriptive and summary statistics](#Descriptive-and-summary-statistics)
- [Correlation](#Correlation)

`🕒 This module should take about 20 minutes to complete.`

`✍️ This notebook is written using Python.`

## Descriptive and summary statistics


```python
import pandas as pd
```


```python
df = pd.read_csv("data/heart_disease.csv")
```


```python
# The describe() method displays the descriptive statistics about a DataFrame including the mean, median, min,
# max and quartile values for each numerical column.

df.describe()
```


```python
# You can also call individual methods on a column (Series object) to get a particular descriptive value
# for that column:

df["age"].min()
# df["chol"].mean()
```

## ✅ Exercise 1
Display the average values for max_hr and rest_bp. 


```python

```

---

<div class="alert alert-block alert-info">
<b>Tip:</b> To view a summary of non-numerical (categorical) columns, you should set the "include" parameter of the describe method equal to "object". In pandas, categorical variables are of type "object". 
    
    For example:  df.describe(include="object")

The summary will include the top occurring category for each column along with its frequency. 
</div>


```python
df.describe(include="object")
```


```python
df["sex"].describe()
```

<div class="alert alert-block alert-success">
<b>Note:</b> If the describe() method is called on a categorical column (as above), then include="object" is assumed and thus does not need to be passed to the method. </div>

### info()
The info() method displays information about a DataFrame including column data type (dtype) and non-null values.


```python
df.info()
```

<div class="alert alert-block alert-success">
    <b>Note:</b> Using the <b>info()</b> method can be a valuable way to determine if there are any missing values in our dataset. Above, note that info() indicates that the dataset has <b>"303 entries"</b>. Also, note that it indicates that each column has <b>"303 non-null"</b> values. A "null" value indicates a missing value, so the above suggests that there are no missing values in the dataset. Further, info() helpfully provides information about the datatype (Dtype) of each column.</div>

### Displaying the unique values


```python
# The Series object's (a single column) unique() method will return the column's unique values.

df["target"].unique()
```


```python
# A Series object (single column) can be passed into Python's built-in set() function 
#   to see the column's unique values.

set(df["target"])
```

<div class="alert alert-block alert-success">
<b>Note:</b> The unique() method tends to be faster. Python's set() function can be a little slower primarily because it sorts the returned values, which can be helpful in locating a specific category when there are a lot of distinct values within a given column. </div>

<div class="alert alert-block alert-info">
<b>Uses</b>: We often need to convert categorical variable names into numbers for data analysis and machine learning, so being able to determine the number of unique values within a column can be helpful.  For example, knowing that there are only two categories within a column, as shown above, we would know that we could perhaps convert <b>'Yes'</b> to 1 and <b>'No'</b> to 0, when numbers are required. If we hadn't determined the unique values with the column, perhaps we could have missed that there was a <b>'Maybe'</b> option that also needed to be converted. <div>

## ✅ Exercise 2
Display the unique values for the variable "chest_pain".


```python

```

---

## Correlation
The DataFrame's corr() method will display the pairwise correlations among the DataFrame's columns.


```python
df.corr(numeric_only=True)
```

<div class="alert alert-block alert-info">
<b>Uses</b>: 
    
    It's important to be able to interpret correlation coefficients. 
    In general, the degree of correlation is as follows:

<b>Perfect</b>: If the value is near ± 1, then as one variable increases, the other variable tends to also increase (if positive) or decrease (if negative).
    
<b>High</b>: If the value lies between ± 0.50 and ± 1, then it is said to be a strong correlation.
    
<b>Moderate</b>: If the value lies between ± 0.30 and ± 0.49, then it is said to be a moderate correlation.
    
<b>Low</b>: When the value lies between ± .29 and 0, then it is said to be a small correlation.
    
<b>No correlation</b>: When the value is zero there is no correlation between the variables.<div>
    
    
   
    Correlation is a very valuable tool when performing data analysis. We will discuss this in more detail  in subsequent modules that cover data analysis. 


```python
# You also can select specific columns of interest and use the corr() method to see the pairwise correlations.

df[["age", "max_hr"]].corr()
```

<div class="alert alert-block alert-success">
<b>Note:</b> Identifying correlations among the columns (independent variables) in a dataset can be very important.  This is known as <b>collinearity</b> and can be detrimental to training a machine learning model.</div>

## ✅ Exercise 3
Display the correlation between max_hr and chest_pain.


```python

```

---

## Sorting
The DataFrame's sort_values() method takes a "by" parameter to indicate which column the DataFrame should be sorted by:





```python
df.sort_values(by="age").head()
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> By default, sort_values() will sort the values from <b>smallest to largest</b>.
</div>

<div class="alert alert-block alert-warning">
<b>Alert:</b> Remember, when modifying a DataFrame, pandas typically returns a copy so that the original DataFrame is unchanged. To transfer the modification to the original Dataframe, you can either set the original Dataframe (df) equal to what pandas returns:

    df = df.sort_values(by="age")

Or you can set the method's "inplace" parameter to True so that the Dataframe itself is changed:
    
    df.sort_values(by="age", inplace=True)
    
</div>


```python
# Setting the "ascending" parameter of the sort_values() method to False will sort the values in descending order:

df.sort_values(by="age", ascending=False).head()
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> To sort the values from <b>largest to smallest</b>, you can set the "ascending" parameter of the sort_values() method to  <b>False</b>.
</div>

## ✅ Exercise 4
Sort the DataFrame by max_hr in descending order.


```python

```

---

### We can also sort by requesting the "nlargest" or "nsmallest" of a given column:

### Get the top n of a feature
Use the nlargest() method to sort by a given column and display n number of rows. Pass in the value of n (the number of rows to display) and use the "column" parameter to indicate which row to sort by:





```python
df[["age", "sex", "max_hr"]].nlargest(10, columns="age")
```

### Get the bottom n of a feature
Use the nsmallest() method to sort by a given column and display n number of rows. Pass in the value of n (the number of rows to display) and use the "column" parameter to indicate which row to sort by:


```python
df[["age", "sex", "max_hr"]].nsmallest(10, columns=["max_hr"])
```

You can sort by multiple columns by passing in a list of the desired columns to sort by, in order:


```python
df[["age", "sex", "max_hr"]].nsmallest(10, columns=["max_hr", "age"])
```

---

# 🌟 Ready for the next one?
<br>



- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

- [**Lesson 7: Data Analysis**](Lesson_7_Data_Analysis.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
