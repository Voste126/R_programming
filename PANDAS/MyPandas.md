<img src="materials/images/introduction-to-pandas-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

This module introduces you to the pandas library for working with structured data. Pandas is powerful and expressive, and it's one of the primary reasons that Python has become a leading option for doing data science. Pandas provides data structures and intuitive capabilities for performing fast and easy **data cleaning, preparation, manipulation, aggregation, and sophisticated analysis**. 

We will go through seven lessons with you:

- <font color=#E98300>**Lesson 1: Pandas Data Structures**</font>    `📍You are here.`
    
- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)
    
- [**Lesson 3: Selecting and Filtering Rows and Columns**](Lesson_3_Selecting_and_Filtering_Rows_and_Columns.ipynb)

- [**Lesson 4: Importing Data**](Lesson_4_Importing_Data.ipynb)

- [**Lesson 5: Data Exploration**](Lesson_5_Data_Exploration.ipynb)

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

# Lesson 1: Pandas Data Structures

We are going to go through these concepts in this module:

- [Series](#Series)
- [DataFrame](#DataFrame)


`🕒 This module should take about 20 minutes to complete.`

`✍️ This notebook is written using Python.`

### Import the pandas data analysis library

First, we'll import the pandas library into our notebook so that it's functionality is available to us. Traditionally, "pd" is used as the alias for pandas. Therefore, whenever you see `pd`. in the code, it's referring to the use of pandas and its capabilities.


```python
import pandas as pd
```

## Series

**A Series** is a ***one-dimensional object*** containing a sequence of values, very similar to a column of data in an Excel spreadsheet. The Series data structure has an associated index which can be either numbers, or strings (ie. named labels). 


```python
series_obj = pd.Series([10,20,30,40,50])
series_obj
```




    0    10
    1    20
    2    30
    3    40
    4    50
    dtype: int64



<div class="alert alert-block alert-success">
<b>Note:</b> The index of the Series object is displayed on the left, the values are displayed on the right and the data type is displayed beneath.
</div>

<div class="alert alert-block alert-success">
<b>Note:</b> "dtype: int64" in the above output means data is stored as integers. Data type (dtype) represents how a value is stored in memory and, for numbers, it indicates how precisely it can be represented in memory. 

It is helpful to know the data type of a value because different data types have different capabilities that dictate how they can be handled and dictate the result of any operations performed on them. For example, knowing whether the value 10 is stored as an integer or as a string (e.g., “10”) is important. Math can’t be applied to the string “10” so perhaps it would need to be converted to an integer (int64) data type in order to get descriptive statistics of the column (e.g., mean, standard deviation) or to perform machine learning.

Wearable data is somewhat unique and can be represented as any of the data types depending upon the values being collected. For example, the date of collection would be represented as type **date64** in Pandas. The delta or difference between two time points would be stored as type **timedelta**. Moreover, wearable data is typically time series data that is stored as **float64**.
</div>

### Accessing values by index position
The values, in a Series object, can be accessed by **placing the associated index position within square brackets**. It is similar to how we access values from within a Python List.


```python
series_obj = pd.Series([10,20,30,40,50])
series_obj[0]
```

### Accessing a slice of the data


```python
series_obj[0:3]
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> Remember, Python considers the first item to be at index position 0. And the ending index position that you provide will not be included in what is returned. The closing index position should be just beyond the position you would like included in the slice. That's why, in the example above, index position 3 is not included in the values returned.
</div>

### Using named labels
A label can be used to identify each data point (row) by providing a list of the desired labels to the index property of the Series object.


```python
series_obj = pd.Series([10,20,30,40,50], index = ["CA", "FL", "NY", "PA", "TX"])
series_obj
```

### Accessing values by named label
When the values in a Series object have labels, you can use the labels to select values. 


```python
series_obj["CA"]
```


```python
series_obj["CA":"TX"]
```

<div class="alert alert-block alert-success">
<b>Note:</b> When selecting a slice of entries using named labels, the end point (stopping point) is inclusive.
</div>


```python
# If you're requesting more than one label (index), they must be placed within a list:

series_obj[["CA", "NY", "TX"]]
```

<div class="alert alert-block alert-success">
<b>Note:</b> Even though the index above uses named labels, you can still use the numerical index position of a value to access it.
</div>

### Element-wise operations


```python
# Create a Series object.

series_obj = pd.Series([10,20,30,40,50])
series_obj
```

An operation can be applied to each element in a Series object. Element-wise operations are convenient as we don't need to use a for loop to apply the operation. Pandas will apply the operation to each element in the Series for us.


```python
series_obj * 2
```


```python
series_obj + 100
```


```python
# Create a new Series object.

series_obj2 = pd.Series([1,2,3,4,5])
series_obj2
```

We can apply element-wise operations to combine two Series objects.


```python
# Combine the two Series objects, element-wise.

series_obj + series_obj2
```

### Boolean selection
We can filter the values that we want by using a boolean array.


```python
# We can query each item in the Series, returning True or False boolean values.

series_obj >20
```

We can use the results (the boolean array) of the boolean query in order to filter the values. By placing the query between the square brackets of the Series object, only the values whose index position returns True will be returned.


```python
series_obj[series_obj > 20]
```

<div class="alert alert-block alert-success">
<b>Remember:</b> When filtering the values by using a boolean query, you're asking the Series object a question. For every index location that returns True to your question, only those associated values (rows) will be returned.
</div>

## DataFrame

The **DataFrame** is another data structure in pandas. A DataFrame is a ***two-dimensional*** array of values. Much like an Excel spreadsheet, it is a rectangular table of columns and rows with both a row index and a column index. It can, somewhat, be thought of as a collection of Series objects, each of which can have a different data type (e.g., strings, numbers). 

Typically, pandas will import data (e.g., from a csv file) as a DataFrame. However, a DataFrame may be constructed, for example, by using a dictionary (key/value pairs) with the key being the column name and the value being a list of row values.


```python
# Creating a sample DataFrame using a dictionary of lists of values.

data = {"Name": ["Tim Miller", "Ann Carter", "Ellen Lee", "Sam Carr", "Al Ball", "Carl Zee", "Sara Martin"], 
        "Gender": ["Male", "Female", "Female", "Male", "Male", "Male", "Female"],
        "Age": [32, 44, 21, 19, 45, 27, 39]}
df = pd.DataFrame(data)
df
```

### Preview a DataFrame

#### head()


```python
# The head() method is used to display only the first 5 rows.

df.head() # == df.head(5)
```

#### tail()


```python
# The tail() method is used to display only the last 5 rows.

df.tail()  # == df.tail(5)
```

<div class="alert alert-block alert-success">
<b>Note:</b> The DataFrame's head() and tail() methods default to displaying five rows. To display a different number of rows, place the desired number within the method's parentheses (e.g. df.head(25)) and that number of rows wil be displayed. </div>

### Column selection
You can retrieve a column from a DataFrame by using the column's name between square brackets. (A Series object is returned.):


```python
# Returns a column/Series object

df['Name']     # Dictionary notation
```

You can also use dot notation to retrieve a column (Series) from a DataFrame, but only if the column name is a valid Python variable name (e.g., no spaces):


```python
df.Name     # Attribute (dot) notation
```


```python
df
```

<div class="alert alert-block alert-info">
<b>Tip:</b> When using dot notation (attribute notation), following the dot, you can use the tab key to complete the column name (or any other attribute). For example, using the above DataFrame, try typing just 'df.N'. Then use the tab key, and Jupyter will complete the rest, or present any other options that begin with 'df.N'. This is known as tab completion and is provided as a convenience by Jupyter.
</div>

You can determine the order of your columns by placing the names in a list, in the desired order:


```python
df[["Age", "Gender", "Name"]]    
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> By default, pandas returns a copy of the original DataFrame with the requested modifications. The original DataFrame remains unmodified.</div>

### Row selection
You can retrieve specific rows from a DataFrame by using index notation and slicing as with Lists in Python:


```python
df[0:1]
```


```python
df[:3]
```

<div class="alert alert-block alert-success">
<b>Note:</b> Row selection syntax is used to select rows (e.g., df[:3]).
    Passing the string name of a column selects columns (e.g., df["Age"]). 
</div>

---

# 🌟 Ready for the next one?
<br>

- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)
    
- [**Lesson 3: Selecting and Filtering Rows and Columns**](Lesson_3_Selecting_and_Filtering_Rows_and_Columns.ipynb)

- [**Lesson 4: Importing Data**](Lesson_4_Importing_Data.ipynb)

- [**Lesson 5: Data Exploration**](Lesson_5_Data_Exploration.ipynb)

- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

- [**Lesson 7: Data Analysis**](Lesson_7_Data_Analysis.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
