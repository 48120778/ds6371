library(tidyverse)
# load data
df <- read.csv("C:/Job/00_Resource/01 Michael's staff/2019/MSDS/MSDS@SMU/Term1/DS 6371 Statistical Foundations/Assignment/Unit 4/autism.csv")

# paired signed rank test
t.test(df$after, df$before, paired = TRUE, exact = FALSE, alternative = "less")
