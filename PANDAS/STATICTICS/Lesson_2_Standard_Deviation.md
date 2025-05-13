<img src="materials/images/introduction-to-statistics-I-cover.png"/>


# 👋 Welcome, before you start
<br>

### 📚 Module overview

    
- [**Lesson 1: Central Tendency: Mean, Median, Mode**](Lesson_1_Central_Tendency__Mean_Median_Mode.ipynb)

- <font color=E98300>**Lesson 2: Standard Deviation**</font>    `📍You are here.`
    
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

# Lesson 2: Standard Deviation

`🕒 This module should take about 20 minutes to complete.`

`✍️ This notebook is written using Python.`


An important characteristic of datasets is how much variability exists among individual samples. Without a measure of variability, you can’t effectively compare two datasets. 

For example, if one dataset consists of the values <mark>[99, 100, 101]</mark>, and another dataset consists of the values <mark>[0, 100, 200]</mark>, they both have the same mean and median values of 100, yet they have very different amounts of variability. There is a large amount of variability in the second dataset compared to the first. 

The variability is often a defining characteristic of a dataset. The **`standard deviation`** is perhaps the most informative and certainly the most widely used measure of a dataset's variability.  Let's look at how it's calculated.

Let's use the ten values below to calculate the standard deviation of a dataset. We are interested in the average difference between each value in the distribution and the mean of the distribution. 

We first need to calculate the mean, as shown below.

<img src="materials/images/images_standard_deviation/stdev_1.png"/>

Next, the **average difference (or deviation)** is calculated by taking each individual value and subtracting the mean from that value. Once we calculate a deviation score for each individual value in the distribution, we can then sum the deviation scores and divide by n to get the average, which would be the standard deviation. 

However, there's one problem. Half of the deviation scores fall below the mean, and half fall above the mean. This means that when we sum these deviation scores together, we will get zero, as shown below. And zero divided by any number will be zero. Therefore, we need to do something to work around this issue.

<img src="materials/images/images_standard_deviation/stdev_2.png"/>

We can make each deviation score positive by squaring it. Hence, for each value in the distribution, we subtract the mean of the distribution and then square the deviation. We then add up all of these squared deviations, giving us the <mark>**sum of the squared deviations**</mark>. The calculations are shown below.

<img src="materials/images/images_standard_deviation/stdev_3.png"/>

<div class="alert alert-block alert-success">
    <b>Note:</b> In the image above, notice that the original column is named <b>"Feature"</b>. In bioinformatics, what some may call a column, field, or independent variable is called a "feature". A feature is the generic name for any column within a dataset. It will be helpful to get used to the terminology commonly used in data science and bioinformatics.
</div>

We next divide by n (the number of samples in the distribution) minus one to get the average of the squared deviations. This is known as the <mark>**variance**</mark>. See the calculation below.

<div class="alert alert-block alert-warning">
    <b>Alert:</b> To get the variance, if the dataset is a sample, then we divide the <b>sum of squares</b> by n-1. If the dataset is a population, then we divide by n. Here, we divide by n-1 (10 - 1 = 9) as we assume that this small dataset is a sample from a larger population. In brief, the reason that this is done is because most of the time we do not know the population average and we estimate it with the sample average. The sample average tends to underestimate the population average, so we compensate for this by dividing by n-1 rather than n.
</div>



<img src="materials/images/images_standard_deviation/stdev_4.png"/>

Because we previously needed to square each deviation score to avoid getting a sum of zero, we now need to reverse that process. This is accomplished by taking the square root of the variance, and the result gets our values back into their original terms. The <mark>**square root of the variance**</mark> is known as the <mark>**standard deviation**</mark>.

<img src="materials/images/images_standard_deviation/stdev_5.png"/>

<img src="materials/images/images_standard_deviation/stdev_6.png"/>

<div class="alert alert-block alert-success">
    <b>Note:</b> You rarely, if ever, will need to calculate the standard deviation on your own, but it can be instructive to understand how it's calculated and, particularly, what it means. It is a measure of, on average, <b>how much individual samples within a data set vary from the middle</b>. This enables us to <b>compare the columns within a data set</b> that may be measured on different scales. And it allows a to <b>compare differences between different data sets</b>.
</div>

---

## Create the above sample dataset


```python
import pandas as pd
dataset = pd.DataFrame(data =[0, 1, 2, 3, 4, 5, 5, 6, 7, 7], columns = ["numbers"])
```

### Preview the dataset


```python
dataset
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
      <th>numbers</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0</td>
    </tr>
    <tr>
      <th>1</th>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2</td>
    </tr>
    <tr>
      <th>3</th>
      <td>3</td>
    </tr>
    <tr>
      <th>4</th>
      <td>4</td>
    </tr>
    <tr>
      <th>5</th>
      <td>5</td>
    </tr>
    <tr>
      <th>6</th>
      <td>5</td>
    </tr>
    <tr>
      <th>7</th>
      <td>6</td>
    </tr>
    <tr>
      <th>8</th>
      <td>7</td>
    </tr>
    <tr>
      <th>9</th>
      <td>7</td>
    </tr>
  </tbody>
</table>
</div>



### Display the standard deviation


```python
dataset["numbers"].std()
```




    2.449489742783178



---

The standard deviation of a dataset represents the typical, or expected distance of a point in the dataset from the center. In other words, it is roughly the average distance of a data point from the center.

 The standard deviation is extremely useful in helping us to understand our data. It effectively enables us to compare different data points within our dataset to each other. And it's especially effective in allowing us to compare values between different datasets.


The formula for the **`standard deviation`** of a dataset is:  


$$\Large\sqrt[]{\frac {\Sigma (x_{i}-\bar{x})^{2}}{n-1} }$$

_Let's walk through the above formula and summarize what we've discussed: The numerator is simply the sum of the squared distance that each value is from the mean. We then divide that sum by n-1 (we'll assume that the data is a sample from larger a population) to get the average squared distance or deviation from the mean. Finally, because we squared the deviations from the mean, we'll now take the square root of the calculated quantity to undo the squaring and put everything back into the original terms._

<div class="alert alert-block alert-info">
    <b>Tip:</b> You can think of the standard deviation as the expected range of values around the mean. For example, if you were interested in purchasing a used car, and you were unsure how much to pay for a given vehicle, you might ask a friend who had some experience with the cost of such car. That friend might respond with, "Hmm, I would expect to pay around twelve thousand dollars, give or take a thousand." The <b>"give or take a thousand"</b> can be interpreted as <b>the standard deviation</b>--some reasonable or expected range of values around the expected cost.
</div>

<div class="alert alert-block alert-success">
    <b>Success:</b> The <b>mean</b> is interpreted as the expected value, and the <b>standard deviation</b> can be interpreted as the expected range of values around the mean.
</div>

---

# 🌟 Ready for the next one?
<br>


- [**Lesson 3: Normalization**](Lesson_3_Normalization.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
