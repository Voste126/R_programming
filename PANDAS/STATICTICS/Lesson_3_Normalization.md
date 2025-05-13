<img src="materials/images/introduction-to-statistics-I-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

    
- [**Lesson 1: Central Tendency: Mean, Median, Mode**](Lesson_1_Central_Tendency__Mean_Median_Mode.ipynb)

- [**Lesson 2: Standard Deviation**](Lesson_2_Standard_Deviation.ipynb)

- <font color=E98300>**Lesson 3: Normalization**</font>    `📍You are here.`
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

# Lesson 3: Normalization

`🕒 This module should take about 20 minutes to complete.`

`✍️ This notebook is written using Python.`

<mark>**Normalization**</mark>, in the **_general sense_**, refers to scaling our numeric columns to bring them into the **same terms** so that they fall within a smaller and standard range of values, making it easier to compare them. 

This is useful because data variables are typically measured in varied units with varied magnitudes. For example, a patient's age is measured in terms of years while heart rate is measured in terms of beats per minute. These variables are measured in completely different terms which makes it difficult to make a comparison as to which may be better or worse than the other.

However, normalization, in the **_specific sense_**, refers to scaling variables so that their values fall strictly between 0 and 1, making it easier to compare them. This is also known as min-max scaling.

## Normalization (min-max scaling)
Normalization scales down the data values to between 0 and 1.

$$\large\ normalization = \frac{X-X_{min}}{X_{max}-X_{min}}$$

To normalize the values in the age column below, we first need to identify the minimum and maximum values.

<img src="materials/images/images_normalization/norm_1.png"/>

We then will need to calculate the difference between the maximum and minimum values (known as the <mark>range</mark>). In this case (74 - 29), the max-min difference is **45**. This becomes the denominator for our scaling.

<img src="materials/images/images_normalization/norm_2.png"/>

Now, let's try scaling the first age in the column. We will take 41 and subtract the minimum age from it.

<img src="materials/images/images_normalization/norm_3.png"/>

That's 41 - 29 which yields 12. So to scale the first age, we will divide 12 by 45 (the max-min difference calculated above). The scaled age would be **.27**.

<img src="materials/images/images_normalization/norm_4.png"/>

Following is a normalized version of the age column where all values are scaled to be between 0 and 1:

<img src="materials/images/images_normalization/norm_5.png"/>

Normalization conveys the proportion of the range, from min to max, that is covered by a given value within a column. So, in our example, from 29 (min age) to 74 (max age), each age value will cover some proportion of that range, and that is its normalized value.

<img src="materials/images/images_normalization/norm_6.png"/>

<div class="alert alert-block alert-warning">
    <b>Note:</b> The <b>minimum age of 29</b> has a normalized value of 0 because it covers <b>0%</b> of the range from min age to max age. The <b>max age of 74</b> has a normalized value of 1 because it covers <b>100%</b> of that range.
</div>

---

## Normalizing a sample heart disease dataset

In the sample dataset below, "age", cholesterol ("chol"), and max heart rate ("max_hr") are all measured in different units and have different magnitudes and ranges of values. Let's <mark>**normalize**</mark> the dataset.

### ✅ `Run` each of the cells below:


```python
import pandas as pd
```


```python
df = pd.read_csv("data/data_normalization/heart-disease.csv", usecols=[0,4,5])
df.head()
```

### The minimum value for each column:


```python
df.min()
```

### The maximum value for each column:


```python
df.max()
```

### The normalized dataset:


```python
(df - df.min())/(df.max() - df.min())
```

Each column is now in similar terms. Each of the values falls between 0 and 1, so we have a <mark>**better comparison for the magnitude**</mark> of a given value relative to the other columns.

---

It should now be clear why normalizing values is useful. It's an effective way of comparing values that are measured in different units and it scales values down into a standard range. 

<div class="alert alert-block alert-success">
<b>Tip: </b>Another scaling technique that is used to transform variables so that they are in similar terms is called <b>standardization</b>. This technique scales values so that they are in terms of how far they are from their respective means (in terms of standard deviations). Rather than falling between 0 and 1 as normalization does, standardized values are scaled to fall typically between -3 and 3 (see Z-score).
</div>

---

# 🌟 You are done!
<br>
Review previous lessons often to consolidate the learnings.

    
- [**Lesson 1: Central Tendency: Mean, Median, Mode**](Lesson_1_Central_Tendency__Mean_Median_Mode.ipynb)

- [**Lesson 2: Standard Deviation**](Lesson_2_Standard_Deviation.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
