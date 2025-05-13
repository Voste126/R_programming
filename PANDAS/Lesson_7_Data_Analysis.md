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

- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

- <font color=#E98300>**Lesson 7: Data Analysis**</font>    `📍You are here.`
    
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

# Lesson 7: Data Analysis

We are going to go through these concepts in this module:

- [Conditional selection](#Conditional-selection)
- [Multiple conditions](#Multiple-conditions)

`🕒 This module should take about 10 minutes to complete.`

`✍️ This notebook is written using Python.`


```python
import pandas as pd
```


```python
# We renamed the "target" column to "heart_disease" column in Lesson 6. Here, we will do this again.

df = pd.read_csv("data/heart_disease.csv")
df = df.rename(columns={"target":"heart_disease"})
df["sex"] = df["sex"].map({"Male":0, "Female":1})

# Preview the heart disease dataset.

df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>age</th>
      <th>sex</th>
      <th>chest_pain</th>
      <th>rest_bp</th>
      <th>chol</th>
      <th>max_hr</th>
      <th>st_depr</th>
      <th>heart_disease</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>63</td>
      <td>1</td>
      <td>3</td>
      <td>145</td>
      <td>233</td>
      <td>150</td>
      <td>2.3</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>1</th>
      <td>37</td>
      <td>1</td>
      <td>2</td>
      <td>130</td>
      <td>250</td>
      <td>187</td>
      <td>3.5</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>2</th>
      <td>41</td>
      <td>0</td>
      <td>1</td>
      <td>130</td>
      <td>204</td>
      <td>172</td>
      <td>1.4</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>3</th>
      <td>56</td>
      <td>1</td>
      <td>1</td>
      <td>120</td>
      <td>236</td>
      <td>178</td>
      <td>0.8</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>4</th>
      <td>57</td>
      <td>0</td>
      <td>0</td>
      <td>120</td>
      <td>354</td>
      <td>163</td>
      <td>0.6</td>
      <td>Yes</td>
    </tr>
  </tbody>
</table>
</div>



## Conditional selection


```python
# Asking each value in the column "sex" whether it is equivalent to 1 ("Female"):

df["sex"]==1
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> Conditional (boolean) selection is a question and always returns either True or False. This result can be placed within the square brackets of a DataFrame, using .loc, and only the rows that were True will be returned.
</div>

### Use booleans for row selection
(Review the use of [.loc](#Using-loc) if needed.)

*Select the rows where the column "sex" is equivalent to 1 ("Female"). Then display just the column "age"*:


```python
df.loc[df["sex"]==1, "age"]
```

### count()
The `count()` method displays the number of rows that are included in a selection.

*Get the rows where the column chest_pain is equivalent to 3. Return only the column "sex", and display the number of rows returned*:


```python
# Use count() to get the number of rows (returned) in a selection.

df.loc[df["chest_pain"]== 3, "sex"].count()
```

### value_counts()
The `value_counts()` method displays the itemized counts of each category within a column. In other words, it breaks the column down into its individual categories then sums by category. For example, if the column "sex" contained the values [M, F, F, M, F, M, F, F], value_counts() would return that there are 5 of the category F and 3 of the category M:

    F 5
    M 3

*Get the rows where the column chest_pain is equivalent to 3. Return only the column "sex", and itemize the number of rows returned by gender*:


```python
# Use value_counts() to get the count of each unique category within a column.

df.loc[df["chest_pain"]== 3, "sex"].value_counts()
```

## ✅ Exercise 6
Display how many people had heart disease in this dataset.


```python

```

---

## Multiple conditions

Using `.loc`, you can set multiple conditions for a query. The ampersand (&) means "and" and the pipe symbol (|) means "or".

### And (&) operation
*Get the rows where the column "sex" is equivalent to 1 ("Female") **AND** where the column "max_hr" is greater than the average "max_hr". Return only the column "sex", and display the number of rows returned*:


```python
mean_max_heart_rate = df["max_hr"].mean()

df.loc[(df["sex"]== 1) & (df["max_hr"] > mean_max_heart_rate), "sex"].count()
```

### Or ( | ) operation
*Get the rows where the column "chest_pain" is equivalent to 0 **OR** the column "age" is greater than 60; **AND**, from among those rows, get the rows where the column "sex" is equivalent to 0 ("Male"). Return only the column "heart disease", and display the itemized count of how many did and did not have heart disease*:


```python
df.loc[((df["chest_pain"] == 0) | (df["age"] > 60)) &
        (df["sex"] == 0), "heart_disease"].value_counts()
```

<div class="alert alert-block alert-warning">
<b>Alert:</b> Because of precedence and the order of operations, it's important to place parentheses around each condition to clarify the desired order of operations.
</div>

## ✅ Exercise 7
Get the rows where the column "max_hr" is less than 120 OR the column "chol" is greater than 300; AND, from among those rows, get the rows where the column "sex" is equivalent to 1 ("Female"). Then display the itemized count of the patients who had and did not have heart disease.


```python

```

---

# 🌟 You are done!
<br>
Review previous lessons often to consolidate the learnings.


- [**Lesson 1: Pandas Data Structures**](Lesson_1_Pandas_Data_Structures.ipynb)

- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)

- [**Lesson 3: Selecting and Filtering Rows and Columns**](Lesson_3_Selecting_and_Filtering_Rows_and_Columns.ipynb)

- [**Lesson 4: Importing Data**](Lesson_4_Importing_Data.ipynb)

- [**Lesson 5: Data Exploration**](Lesson_5_Data_Exploration.ipynb)

- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
