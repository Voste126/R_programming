<img src="materials/images/introduction-to-pandas-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

This module introduces you to the pandas library for working with structured data. Pandas is powerful and expressive, and it's one of the primary reasons that Python has become a leading option for doing data science. Pandas provides data structures and intuitive capabilities for performing fast and easy **data cleaning, preparation, manipulation, aggregation, and sophisticated analysis**. 

We will go through seven lessons with you:

- [**Lesson 1: Pandas Data Structures**](Lesson_1_Pandas_Data_Structures.ipynb)

- [**Lesson 2: Dropping Rows and Columns**](Lesson_2_Dropping_Rows_and_Columns.ipynb)

- [**Lesson 3: Selecting and Filtering Rows and Columns**](Lesson_3_Selecting_and_Filtering_Rows_and_Columns.ipynb)

- <font color=#E98300>**Lesson 4: Importing Data**</font>    `📍You are here.`

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

# Lesson 4: Importing Data

We are going to go through these concepts in this module:

- [csv file](#csv-file)
- [Preview dataset](#Preview-dataset)


`🕒 This module should take about 10 minutes to complete.`

`✍️ This notebook is written using Python.`

## csv file
Below, we will use pandas' read_csv() function to import a heart disease dataset. Pandas imports the dataset as a DataFrame.


```python
import pandas as pd
```


```python
df = pd.read_csv("data/heart_disease.csv")
```

## Preview dataset

### head()


```python
df.head()
```

<div class="alert alert-block alert-info">
<b>Dataset:</b> This heart disease dataset, from the University of California Irvine's Machine Learning Repository, enables the evaluation of some of the variables that may be predictive of heart disease. Datasets like this, which have a series of predictive variables (called "features" in data science) paired with a known outcome variable (called the "target"), are exteremly useful toward developing machine learning models that can be trained to accurately predict patient outcomes. For example, using this dataset, we could train a model to predict which patients are most likely to suffer from heart disease in the future and are at risk of having a heart attack or stroke.
</div>

### sample()
Instead of having the DataFrame simply return the first five or last five rows, as head() and tail(), respectively, do, the DataFrame's sample() method returns a random sampling of rows from the dataset. The number passed to the method determines the number of rows returned.


```python
df.sample(10)
```

---

# 🌟 Ready for the next one?
<br>


- [**Lesson 5: Data Exploration**](Lesson_5_Data_Exploration.ipynb)

- [**Lesson 6: Data Transformation**](Lesson_6_Data_Transformation.ipynb)

- [**Lesson 7: Data Analysis**](Lesson_7_Data_Analysis.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
