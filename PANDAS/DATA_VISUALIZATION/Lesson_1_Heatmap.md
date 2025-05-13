<img src="materials/images/introduction-to-visualization-cover.png"/>

# 👋 Welcome, before you start
<br>

### 📚 Module overview

We will go through two lessons with you:

- <font color=#E98300>**Lesson 1: Heatmap**</font>    `📍You are here.`
    
- [**Lesson 2: Volcano Plot**](Lesson_2_Volcano_Plot.ipynb)
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

# Lesson 1: Heatmap

⏲ `This module should take about 20 minutes to complete.`

A <mark>**heatmap**</mark> is a graphical representation of data where values are expressed as colors. It is an effective visual summary of information and enables a large volume of data to be communicated efficiently.

### ✅ `Run` each of the cells below:

# Preview dataset

Below, we will import a dataset of applicants for admission to graduate school.


```python
import pandas as pd
import seaborn as sns
```


```python
df = pd.read_csv("data/data_heatmap/grad_admit.csv")
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
      <th>Serial No.</th>
      <th>GRE Score</th>
      <th>TOEFL Score</th>
      <th>University Rating</th>
      <th>SOP</th>
      <th>LOR</th>
      <th>GPA</th>
      <th>Research</th>
      <th>Admitted</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>337</td>
      <td>118</td>
      <td>4</td>
      <td>4.5</td>
      <td>4.5</td>
      <td>3.89</td>
      <td>1</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>324</td>
      <td>107</td>
      <td>4</td>
      <td>4.0</td>
      <td>4.5</td>
      <td>3.58</td>
      <td>1</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>316</td>
      <td>104</td>
      <td>3</td>
      <td>3.0</td>
      <td>3.5</td>
      <td>3.23</td>
      <td>1</td>
      <td>No</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>322</td>
      <td>110</td>
      <td>3</td>
      <td>3.5</td>
      <td>2.5</td>
      <td>3.50</td>
      <td>1</td>
      <td>Yes</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>314</td>
      <td>103</td>
      <td>2</td>
      <td>2.0</td>
      <td>3.0</td>
      <td>3.31</td>
      <td>0</td>
      <td>No</td>
    </tr>
  </tbody>
</table>
</div>



## View correlation matrix
Here, we will view a matrix of the pair-wise correlations between the variables in the dataset.


```python
df.corr(numeric_only=True)
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
      <th>Serial No.</th>
      <th>GRE Score</th>
      <th>TOEFL Score</th>
      <th>University Rating</th>
      <th>SOP</th>
      <th>LOR</th>
      <th>GPA</th>
      <th>Research</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Serial No.</th>
      <td>1.000000</td>
      <td>-0.097526</td>
      <td>-0.147932</td>
      <td>-0.169948</td>
      <td>-0.166932</td>
      <td>-0.088221</td>
      <td>-0.047424</td>
      <td>-0.063138</td>
    </tr>
    <tr>
      <th>GRE Score</th>
      <td>-0.097526</td>
      <td>1.000000</td>
      <td>0.835977</td>
      <td>0.668976</td>
      <td>0.612831</td>
      <td>0.557555</td>
      <td>0.832669</td>
      <td>0.580391</td>
    </tr>
    <tr>
      <th>TOEFL Score</th>
      <td>-0.147932</td>
      <td>0.835977</td>
      <td>1.000000</td>
      <td>0.695590</td>
      <td>0.657981</td>
      <td>0.567721</td>
      <td>0.828019</td>
      <td>0.489858</td>
    </tr>
    <tr>
      <th>University Rating</th>
      <td>-0.169948</td>
      <td>0.668976</td>
      <td>0.695590</td>
      <td>1.000000</td>
      <td>0.734523</td>
      <td>0.660123</td>
      <td>0.745734</td>
      <td>0.447783</td>
    </tr>
    <tr>
      <th>SOP</th>
      <td>-0.166932</td>
      <td>0.612831</td>
      <td>0.657981</td>
      <td>0.734523</td>
      <td>1.000000</td>
      <td>0.729593</td>
      <td>0.718403</td>
      <td>0.444029</td>
    </tr>
    <tr>
      <th>LOR</th>
      <td>-0.088221</td>
      <td>0.557555</td>
      <td>0.567721</td>
      <td>0.660123</td>
      <td>0.729593</td>
      <td>1.000000</td>
      <td>0.669626</td>
      <td>0.396859</td>
    </tr>
    <tr>
      <th>GPA</th>
      <td>-0.047424</td>
      <td>0.832669</td>
      <td>0.828019</td>
      <td>0.745734</td>
      <td>0.718403</td>
      <td>0.669626</td>
      <td>1.000000</td>
      <td>0.521163</td>
    </tr>
    <tr>
      <th>Research</th>
      <td>-0.063138</td>
      <td>0.580391</td>
      <td>0.489858</td>
      <td>0.447783</td>
      <td>0.444029</td>
      <td>0.396859</td>
      <td>0.521163</td>
      <td>1.000000</td>
    </tr>
  </tbody>
</table>
</div>



## View correlation matrix as a heatmap

Below, we render a heatmap in a family of blue colors. Note that the darker the blue, the higher the correlation between a given variable pair. The lighter the blue, the weaker the correlation between variable pairs.


```python
sns.heatmap(df.corr(numeric_only=True), cmap="Blues", annot=True);
```

---

# Heatmap

A heatmap is a common method of visualizing <mark>gene expression changes</mark> from among hundreds to thousands of genes from different treatment conditions. The heatmap may also be combined with clustering methods which group genes and/or samples together based on the similarity of their gene expression pattern. This can be useful for identifying genes that are commonly regulated, or biological signatures associated with a particular condition (e.g a disease or an environmental condition).

Genes are represented in rows of the matrix and chips/samples in the columns. A colored matrix display represents the matrix of values as a grid; the number of rows is equal to the number of genes being analyzed, and the number of columns is equal to the number of chips/samples.
The boxes of the grid are colored according to the numerical value in the corresponding matrix cell (the gene expression values).

<img src="materials/images/images_heatmap/sample_heatmap.png"/>

You will be able to pick genes based on their expression levels under different conditions. Some may not change but those that do change are of the greatest interest. These indicate gene expression associated with a particular condition. Heatmaps also help one to identify significant groupings among the genes through associations.

---

### ✅ `Run` each of the cells below:

### Sample gene expression data set
Gene names and treatment conditions.


```python
import pandas as pd
from bioinfokit import analys, visuz


df = pd.read_csv("data/data_heatmap/gene_expression.csv")
# set gene names as index
df = df.set_index(df.columns[0])
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
      <th>A</th>
      <th>B</th>
      <th>C</th>
      <th>D</th>
      <th>E</th>
      <th>F</th>
    </tr>
    <tr>
      <th>Gene</th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>B-CHI</th>
      <td>4.505700</td>
      <td>3.260360</td>
      <td>-1.249400</td>
      <td>8.89807</td>
      <td>8.05955</td>
      <td>-0.842803</td>
    </tr>
    <tr>
      <th>CTL2</th>
      <td>3.508560</td>
      <td>1.660790</td>
      <td>-1.856680</td>
      <td>-2.57336</td>
      <td>-1.37370</td>
      <td>1.196000</td>
    </tr>
    <tr>
      <th>B-CHI</th>
      <td>2.160030</td>
      <td>3.146520</td>
      <td>0.982809</td>
      <td>9.02430</td>
      <td>6.05832</td>
      <td>-2.967420</td>
    </tr>
    <tr>
      <th>CTL2</th>
      <td>1.884750</td>
      <td>2.295690</td>
      <td>0.408891</td>
      <td>-3.91404</td>
      <td>-2.28049</td>
      <td>1.628820</td>
    </tr>
    <tr>
      <th>CHIV</th>
      <td>0.255193</td>
      <td>-0.761204</td>
      <td>-1.022350</td>
      <td>3.65059</td>
      <td>2.46525</td>
      <td>-1.188140</td>
    </tr>
  </tbody>
</table>
</div>



## Heatmap of gene expression data

Heatmaps are used to show relationships between two variables, one plotted on each axis. By observing how cell colors change across each axis, you can observe if there are any patterns in value for one or both variables. Below, we use a colormap from red to green with yellow being the central value. The x-axis represents the treatment conditions and the y-axis represents the gene names.

In heatmaps, the data is displayed in a grid where each row represents a gene and each column represents a sample. The color and intensity of the boxes are used to represent changes (not absolute values) of gene expression. In the following heatmap, <mark>red represents down-regulated genes and green represents up-regulated genes. Yellow represents unchanged expression.</mark>


```python
visuz.gene_exp.hmap(df=df, rowclus=False, colclus=False, cmap='RdYlGn', tickfont=(6, 4), show=True)
```

---

# 🌟 Ready for the next one?
<br>

- [**Lesson 2: Volcano Plot**](Lesson_2_Volcano_Plot.ipynb)

---

# Contributions & acknowledgment

Thanks Antony Ross for contributing the content for this notebook.

---

Copyright (c) 2022 Stanford Data Ocean (SDO)

All rights reserved.
