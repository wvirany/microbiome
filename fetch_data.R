# Loading all libraries:

library(curatedMetagenomicData)
library(curatedMetagenomicAnalyses)
library(dplyr)

# Grabbing data from curateMetagenomicData()

healthy_hmp <- sampleMetadata |>
  filter(study_name == "HMP_2019_ibdmdb") |>
  filter(disease == "healthy") |>
  select(where(~ !any(is.na(.x)))) |>
  returnSamples("relative_abundance", rownames="short", counts=TRUE)

ibd_hmp <- sampleMetadata |>
  filter(study_name == "HMP_2019_ibdmdb") |>
  filter(disease == "IBD") |>
  select(where(~ !any(is.na(.x)))) |>
  returnSamples("relative_abundance", rownames="short", counts=TRUE)

ibd <- t(ibd_hmp@assays@data@listData[["relative_abundance"]])

healthy <- t(healthy_hmp@assays@data@listData[["relative_abundance"]])

write.csv(ibd, "./data/ibd_rel_abundance.csv", row.names=FALSE)

write.csv(healthy, "./data/healthy_rel_abundance.csv", row.names=FALSE)