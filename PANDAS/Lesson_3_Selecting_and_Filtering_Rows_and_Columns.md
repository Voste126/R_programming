<img src="materials/images/introduction-to-pandas-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

This module introduces you to the pandas library for working with structured data. Pandas is powerful and expressive, and it's one of the primary reasons that Python has become a leading option for doing data science. Pandas provides data structures and intuitive capabilities for performing fast and easy **data cleaning, preparation, manipulation, aggregation, and sophisticated analysis**. 

We will go through seven lessons with you:

- [**Lesson 1: Pandas Data Structures**](Lesson_1_Pandas_Data_Structures.ipynb)

- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)

- <font color=#E98300>**Lesson 3: Selecting and Filtering Rows and Columns**</font>    `📍You are here.`

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

# Lesson 3: Selecting and Filtering Rows and Columns

We are going to go through these concepts in this module:

- [Using loc](#Using-loc)
- [Using iloc](#Using-iloc)
- [Setting values](#Setting-values)


`🕒 This module should take about 20 minutes to complete.`

`✍️ This notebook is written using Python.`

### Using `loc` and `iloc` to select a subset of the rows and columns within the DataFrame.


```python
import pandas as pd
```


```python
# Create a new DataFrame

sample_data = [
                [0,1,2,3,4,5,6,7,8,9],
                [10,11,12,13,14,15,16,17,18,19],
                [20,21,22,23,24,25,26,27,28,29],
                [30,31,32,33,34,35,36,37,38,39],
                [40,41,42,43,44,45,46,47,48,49],
                [50,51,52,53,54,55,56,57,58,59],
                [70,71,72,73,74,75,76,77,78,79],
                [80,81,82,83,84,85,86,87,88,89],
                [90,91,92,93,94,95,96,97,98,99],
              ]

data = pd.DataFrame(data = sample_data, columns = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'])
data
```

## Using loc
Using `loc` (short for location) allows you to select a subset of the rows and columns **using the label/name of the row/column**. If the rows were not given labels (named), then their index position is their label.

Within the square brackets, the selection preceding the (optional) comma refers to the rows you would like selected. Following the (optional) comma is the selection referring to the desired columns. The selection is inclusive of the end position.

*Selecting the rows 0 through (and including) 5, and the column "b"*:


```python
# .loc indicates that you're selecting by using the label (inclusive) of the row and column.

data.loc[:5, "b"]
```


```python
# The comma is optional. No comma assumes all columns will be returned.

data.loc[:5]
```

<div class="alert alert-block alert-success">
<b>Note:</b> If no comma follows the row selection then all columns are returned. </div>

*Selecting the rows 6 through to the end of the DataFrame, and the columns "a" through "e" (inclusive)*:


```python
data.loc[6:, 'a':'e']     # consecutive (loc selection is inclusive)
```

*Selecting all of the rows of the DataFrame, and the columns "c", "f" and "i" (in that order)*:


```python
data.loc[:, ['c', 'f', 'i']]     # not consecutive
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> When selecting by label, the end point (stopping position) is included, for both rows and columns.</div>

## Using iloc
Using `iloc` allows you to select a subset of the rows and columns **using their index position**. Thus, only integers can be used.

Within the square brackets, the selection preceding the (optional) comma refers to the rows you would like selected. Following the (optional) comma is the selection referring to the desired columns. The selections will **_not_** include the end position.

*Selecting the rows from the beginning of the DataFrame (the first row) through to index position 5 (but not including index position 5). Then, selecting the columns located at index positions 2 through 5 (but not including index 5)*:


```python
# iloc indicates that you're selecting by using the index position (exclusive) of the rows and columns.

data.iloc[:5, 2:5]
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> When selecting by index position (location), the end point (stopping position) is NOT included.</div>

*Selecting the rows from the beginning of the DataFrame (the first row) through to index position 5 (but not including index position 5). No comma following the row selection assumes that all columns will be returned*:


```python
data.iloc[:5]  # No comma assumes all of the columns will be returned.
```

*Selecting rows at index 5, 0 and 3 (in that order). Then selecting columns located at index 9, 5 and 0 (in that order)*:


```python
data.iloc[[5, 0, 3], [9, 5, 0]]  # Returns rows and columns in the order listed.
```

## Setting values
You can modify values within a DataFrame by first selecting the rows and columns to be changed, and then setting that selection to the desired value:


```python
# View the original DataFrame.

data
```

#### Using loc
*Select the rows where column "j" is greater than 50 (indicated by everything before the comma). Then, just select column "j" (indicated by what follows the comma). Now, set those values equal to 100*:


```python
data.loc[data["j"] > 50, 'j'] = 100

data
```

#### Using iloc
*Select the rows with index positions 5 through 8, but not including 8 (indicated by everything before the comma). Then, just select the column at index position 0, the first column (indicated by what follows the comma). Now, set those values equal to -100*:


```python
data.iloc[5:8, 0] = -100

data
```

---

# 🌟 Ready for the next one?
<br>


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
