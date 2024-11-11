# Predicting Microbiome-Phenotype Associations in the Human Gut

#### See the [blog post](https://wvirany.github.io/posts/microbiome).
---

## Data

I'm using data from the [curatedMetagenomicData](https://waldronlab.io/curatedMetagenomicData/) dataset. I have included the two `.csv` files containing the specific data I use, stored in the `data/` directory.

Alternatively, one can download the data via the R script I've provided. To do so, you'll need to install `curatedMetagenomicData` and `dplyr`:

```
BiocManager::install("curatedMetagenomicData")

install.packages("dplyr")
```

## Results

My results are summarized as follows:

<div>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>ROC AUC</th>
      <th>Accuracy</th>
      <th>Balanced Accuracy</th>
      <th>Precision</th>
      <th>F1 Score</th>
      <th>Recall</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>RF (200 features)</th>
      <td>0.955</td>
      <td>0.957</td>
      <td>0.934</td>
      <td>0.95</td>
      <td>0.97</td>
      <td>0.991</td>
    </tr>
    <tr>
      <th>Voting Classifier (100 features)</th>
      <td>0.958</td>
      <td>0.963</td>
      <td>0.945</td>
      <td>0.958</td>
      <td>0.974</td>
      <td>0.991</td>
    </tr>
    <tr>
      <th>Voting Classifier (20 features)</th>
      <td>0.945</td>
      <td>0.926</td>
      <td>0.895</td>
      <td>0.925</td>
      <td>0.949</td>
      <td>0.974</td>
    </tr>
    <tr>
      <th>Original Study</th>
      <td>0.89</td>
      <td>0.78</td>
      <td>-</td>
      <td>0.78</td>
      <td>0.78</td>
      <td>0.81</td>
    </tr>
  </tbody>
</table>
</div>
