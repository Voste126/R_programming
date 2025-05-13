<img src="materials/images/introduction-to-pandas-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

This module introduces you to the pandas library for working with structured data. Pandas is powerful and expressive, and it's one of the primary reasons that Python has become a leading option for doing data science. Pandas provides data structures and intuitive capabilities for performing fast and easy **data cleaning, preparation, manipulation, aggregation, and sophisticated analysis**. 

We will go through seven lessons with you:

- [**Lesson 1: Pandas Data Structures**](Lesson_1_Pandas_Data_Structures.ipynb)

- <font color=#E98300>**Lesson 2 Dropping Rows and Columns**</font>    `📍You are here.`
    
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

# Lesson 2: Dropping Rows and Columns

We are going to go through these concepts in this module:

- [Dropping rows](#Dropping-rows)
- [Dropping columns](#Dropping-columns)

`🕒 This module should take about 10 minutes to complete.`

`✍️ This notebook is written using Python.`

You can use the drop() method on the DataFrame to drop entries. Adding the desired axis will determine whether rows or columns will be dropped. There are two axes in pandas:

- Axis 0 indicates that you intend to drop a row. 
- Axis 1 indicates that you intend to drop a column.


```python
import pandas as pd
```


```python
data = {"Name": ["Tim Miller", "Ann Carter", "Ellen Lee", "Sam Carr", "Al Ball", "Carl Zee", "Sara Martin"], 
        "Gender": ["Male", "Female", "Female", "Male", "Male", "Male", "Female"],
        "Age": [32, 44, 21, 19, 45, 27, 39]}
```


```python
# Resetting the DataFrame

df = pd.DataFrame(data)
df
```

## Dropping  rows


```python
# Row with index 6 will be dropped

df.drop(6, axis = 0)
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> Axis = 0 indicates that you intend for <b>rows</b> to be dropped. In the example above, you are indicating that you would like for the row at index position 6 to be dropped. Using axis = 1 would indicate that you intend for <b>columns</b> to be dropped. For example, you could type `df.drop("Age", axis = 1). This would indicate that you intend to drop the column 'Age'. Using any other value other than 0 or 1 for axis will return an error. Alternatively, you could use 'df.drop(index = 6)' to drop the row at index position 6. And you could use 'df.drop(columns = "Age")' to drop the column 'Age'. </div>

Note that drop() returns a copy of the DataFrame so that the original DataFrame (df) remains unmodified:


```python
# Original DataFrame is unmodified.

df
```

<div class="alert alert-block alert-success">
<b>Remember:</b> By default, when modifications are made to a DataFrame, pandas returns a copy, leaving the original DataFrame unmodified. If you would like for the changes to be reflected in the original DataFrame (df), then you can set the original DataFrame (df) equivalent to the returned copy following the drop, as demonstrated below. </div>


```python
# The returned copy replaces the original DataFrame so that df is now modified.

df = df.drop(6, axis = 0)

df
```

<div class="alert alert-block alert-success">
<b>Note:</b> If you prefer to just have the DataFrame modify itself in place rather than return a copy of itself, then you can set the drop method's <b>"inplace"</b> parameter to <b>True</b>, as shown below:<div>  
    
```python
df.drop(6, axis=0, inplace=True)
```

<div class="alert alert-block alert-warning">
    <b>Alert:</b> Be careful when making changes <b>"inplace"</b>. Inplace changes modify the original data and the only way to get it back is by reimporting it. Alternatively, by working with a copy, you can easily return to the original DataFrame when circumstances require it without needing to reimport data.</div>


```python
# Resetting the DataFrame

df = pd.DataFrame(data)
df
```

Alternatively, instead of setting the axis parameter to 0, you can set the drop method's `index` parameter which signals that rows will be dropped:


```python
df = df.drop(index = [3, 6])

df
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> If you would like for more than one row or column to be dropped, then you must put them in a list, as shown above. </div>

## Dropping columns


```python
# # By setting the axis to 1, the column with the name "Age" will be dropped.

df = df.drop("Age", axis = 1)
df
```


```python
# Resetting the DataFrame

df = pd.DataFrame(data)
df
```

Alternatively, instead of setting the axis parameter to 1, you can set the drop method's `columns` parameter which signals that columns will be dropped:


```python
# Columns "Gender" and "Age" will be dropped.

df = df.drop(columns = ["Gender", "Age"])

df
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> To drop more than one row or column, you must place the entries within a list.</div>

---

# 🌟 Ready for the next one?
<br>

    
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
