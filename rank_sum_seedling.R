# rank-sum test
library(tidyverse)
# load data
df <- read.csv(file("C:/Job/00_Resource/01 Michael's staff/2019/MSDS/MSDS@SMU/Term1/DS 6371 Statistical Foundations/Assignment/Unit 4/ex0429.csv"))

# Normal approximation
wilcox.test(df$PercentLost~df$Action, exact = F, alternative = "greater", conf.level=0.99, conf.int = T )

# Exact test (i.e. permutation test)
wilcox.test(df$PercentLost~df$Action, exact = T, alternative = "greater", conf.level=0.99, conf.int = T )