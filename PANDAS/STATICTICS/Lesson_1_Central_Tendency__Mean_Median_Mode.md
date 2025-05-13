<img src="materials/images/introduction-to-statistics-I-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

We will go through three lessons with you:

- <font color=#E98300>**Lesson 1: Central Tendency: Mean, Median, Mode**</font>    `📍You are here.`
    
- [**Lesson 2: Standard Deviation**](Lesson_2_Standard_Deviation.ipynb)
    
- [**Lesson 3: Normalization**](Lesson_3_Normalization.ipynb)
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

# Lesson 1: Central Tendency: Mean, Median, Mode

`🕒 This module should take about 10 minutes to complete.`

`✍️ This notebook is written using Python.`

<img src="materials/images/images_central_tendency/dataset.png"/>

An effective way to understand a data distribution is to describe the center of the data--it's central tendency. The **mean**, **median** and **mode** are the fundamental ways to do this and are the most basic descriptive statistics functions. 

---

### ✅ `Run` each of the cells below:

## Create a basic data set
We'll create a Pandas DataFrame containing ten values. We'll name the column "numbers".


```python
import pandas as pd
dataset = pd.DataFrame(data =[0, 1, 2, 3, 4, 5, 5, 5, 7, 8], columns = ["numbers"])
```

### Preview our dataset


```python
# The numbers on the right are the values in our dataset. 
# The numbers on the left are the index positions of the respective values.

dataset["numbers"]
```




    0    0
    1    1
    2    2
    3    3
    4    4
    5    5
    6    5
    7    5
    8    7
    9    8
    Name: numbers, dtype: int64



---

# Mean

<img src="materials/images/images_central_tendency/mean.png"/>

The **<mark>mean</mark>** is the average of a set of values. To attain the mean value, we sum the values and then divide by the number of values. The mean of our dataset is **<mark>4.0</mark>**. 

The mean is useful because it typically indicates where the "center of gravity" is for a set of values.

### Sum the values


```python
# sum() is the method that adds up a set of values.

dataset["numbers"].sum()
```




    40



### Get the number of values


```python
# len() is the "length" function and returns how many values are in the dataset passed to it.

len(dataset["numbers"])
```




    10



### Calculate the mean value


```python
dataset["numbers"].sum()/len(dataset)
```




    4.0



### Get the mean value


```python
# mean() is the method that returns the average value of a set of values.

dataset["numbers"].mean()
```




    4.0



---

# Median

<img src="materials/images/images_central_tendency/median.png"/>

If our values are ordered (as the values in our dataset are), the **<mark>median</mark>** is the middle-most value if there are an odd number of values. If there are an even number of values, then we average the two center-most values. In our dataset, we have an even number of values so we will average the two center values ( 4 and 5) to attain a median value of **<mark>4.5</mark>**. This value is slightly different from our mean value, but is another way to describe the center of our data.

The median is useful in that, unlike the mean, it is fairly unaffected by outliers.

### Get the median value


```python
dataset["numbers"].median()
```

---

# Mode

<img src="materials/images/images_central_tendency/mode.png"/>

The **<mark>mode</mark>** is the most frequently occurring value or set of values. If any values are tied in terms of their frequency, then those values will be reported as modes together, and the dataset is said to be bimodal or multimodal. It's most useful when your data is repetitive and you want to identify which values occur most frequently. For our dataset, the most frequently occuring value is **<mark>5</mark>**.

Our mode value is a little different from both the mean (4.0) and median (4.5) values, but can also be used to describe the central tendency of a dataset.

### Get the mode value


```python
# mode() is the method that returns the most frequently occuring value(s) within a set of values.

dataset["numbers"].mode()[0]
```

Using these measures (**`mean, median`, and `mode`**), we can summarize and get a basic underdstanding of our data. Although these measures of central tendency are limitated in the information they provide, they are an effective starting point for describing our data.

---

# <p style="text-align: center;">Comparing mean, median, and mode</p>

<img src="materials/images/images_central_tendency/normal.png"/>

If our data is normally distributed with a bell-shaped curve, then the **mean**, **median** and **mode** are nearly identical.

<img src="materials/images/images_central_tendency/skew.png"/>

However, if there are extreme outliers (a value that is much higher or lower than the rest of the values), they will cause the **mean** to shift significantly in the direction of the outliers, whereas the **median** is fairly unaffected. 

<div class="alert alert-block alert-warning">
    <b>Alert:</b> When the <mark>mean</mark> and <mark>median</mark> have a wide difference between them, that means the data is skewed and there are outliers present.
</div>

Therefore, the **median** is especially useful when the **mean** is skewed by outliers -- it can more accurately describe the center of the data.

<div class="alert alert-block alert-info">
<b>Tip:</b> Feel free to edit the sample numbers and observe how it affects the mean, median, and mode. You will notice that if you skew the data with very large or very small values, the median is fairly unaffected, while the mean will be pulled in the direction of the outlier. 
</div>

The NightSignal Algorithm uses wearable data to detect pre-symptomatic and asymptomatic COVID-19 infections. The **NightSignal Algorithm** module on the Research page provides an example of the use of central tendency. 

It calculates the average resting heart rate (RHR) overnight each day for each individual, and then uses the **`median`**  value as the healthy baseline. The median often gives a better sense of what a “typical” value is, which helps provide an intuition about the dataset. 

---

# 🌟 Ready for the next one?
<br>

- [**Lesson 2: Standard Deviation**](Lesson_2_Standard_Deviation.ipynb)
    
- [**Lesson 3: Normalization**](Lesson_3_Normalization.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
