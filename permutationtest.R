##---------------------------------------------------------------------------------------
## Permutation test on cash in pocket polls from students of SMU and Seattle University
## Assignment unit 1 of DS6371 statistical foundation
## 8/26/2019 - Michael
##---------------------------------------------------------------------------------------

# Load the data
cashinpocket <- read.csv("C:/Job/00_Resource/01 Michael's staff/2019/MSDS/MSDS@SMU/Term1/DS 6371 Statistical Foundations/Assignment/smu_cash_data.csv")
head(cashinpocket)
summary(cashinpocket)

# Calculate the observed difference in means
mean(cash ~ shuffle(school), data = cashinpocket)
observed <- 
  mean(cash ~ shuffle(school), data = cashinpocket) %>%
  diff()

observed

