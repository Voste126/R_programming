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

- [**Lesson 5: Data Exploration**](Lesson_5_Data_Exploration.ipynb)

- <font color=#E98300>**Lesson 6: Data Transformation**</font>    `📍You are here.`

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

# Lesson 6: Data Transformation

We are going to go through these concepts in this module:

- [Rename a column](#Rename-a-column)
- [Tranform categorical variables to numbers](#Tranform-categorical-variables-to-numbers)


`🕒 This module should take about 10 minutes to complete.`

`✍️ This notebook is written using Python.`


```python
import pandas as pd
```


```python
# The original heart disease dataset.

df = pd.read_csv("data/heart_disease.csv")
df.head()
```

## Rename a column
When working with a dataset, it can helpful if the column (feature) names are clearly understood. For example, even though the target variable (what we are trying to learn to predict) is whether an individual has heart disease, the name "target" may not be very clear, especially to others who may be less familiar with the data set. Thus, renaming the column to "heart disease" may be helpful.

The DataFrame's `rename()` method uses a column parameter. Set the column parameter equal to a dictionary representing the present column name paired with the name that you would like the column renamed to: 


```python
df = df.rename(columns={"target":"heart_disease"})
df.head()
```

---

## Transform categorical variables to numbers
Most machine learning algorithms require numbers, so it can be imperative to convert all categorical variables to numerical representations.

The DataFrame's map() method takes a dictionary of pairs representing the present value paired with the desired transformed value:


```python
df.head()
```


```python
df["sex"] = df["sex"].map({"Male":0, "Female":1})
df.head()
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> Remember, a copy is returned so we set the existing column equal to the transformed values. 
</div>

## ✅ Exercise 5
Transform the target variable "heart_disease" to numbers. Transform "No" to 0 and "Yes" to 1.


```python

```

<div class="alert alert-block alert-warning">
<b>Alert:</b> It is extremely useful to confirm a column's unique values prior to tranformation. It can clarify spelling and whether uppercase or lowercase was used. And, importantly, it can expose hidden spaces preceding or following a value.
    
    (e.g. " yes", " No ")
</div>

---

# 🌟 Ready for the next one?
<br>



- [**Lesson 7: Data Analysis**](Lesson_7_Data_Analysis.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
