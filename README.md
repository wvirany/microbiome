# Machine Learning to Predict Microbiome-Phenotype Associations in the Human Gut

---

> ## Walter Virany

The human microbiome is a data rich ecosystem which is generally known to have strong associations with host phenotypes (i.e., the set of observable characteristics of an organism). However, the extents of these relationships are not yet deeply understood. Until recently, the computing capabilities necessary to thoroughly analyze human microbiome data were severely lacking, but due to novel advancements in sequencing technologies and data analysis techniques, there now exist a plethora of data, along with robust statistical tools, which can be leveraged to gain valuable insights into the impact of the human microbiome on overall health. Methods which can accurately detect disease early in developmental stages have the potential to revolutionize personalized and preventative medicine. In this project, I explore state-of-the-art machine learning methods for processing human microbiome data, which I then use to predict the likelihood of a patient devloping IBD. I also perform feature selection to identify which biomarkers are most likely to contribute to the condition. I find that IBD can be attributed to approximately 15-20 different species of bacteria found in the human gut.


## Data

I'm using data from the [curatedMetagenomicData](https://waldronlab.io/curatedMetagenomicData/) dataset. I have included the two `.csv` files containing the specific data I use, stored in the `data/` directory.

Alternatively, one can download the data via the R script I've provided. To do so, you'll need to install `curatedMetagenomicData` and `dplyr`:

```
BiocManager::install("curatedMetagenomicData")

install.packages("dplyr")
```