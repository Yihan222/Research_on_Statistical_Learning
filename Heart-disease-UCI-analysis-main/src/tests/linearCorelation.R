library(corrplot)
library(ggpubr)

#Spearman Rank Correlation Test
linearCorelation <- function(dataframe) {
  
  #Age + Chol
  
  #Spearman�s Correlation Coefficient Value
  cor(dataframe$age, dataframe$chol, method = "spearman")
  
  #Full Spearman�s Correlation Coefficient Test
  res <- cor.test(dataframe$age, dataframe$chol, method = "spearman")
  res
  
  #Plot
  ggscatter(dataframe, x = "age", y = "chol",
            add = "reg.line", conf.int = TRUE, 
            cor.coef = TRUE, cor.method = "spearman",
            xlab = "Age", ylab = "Cholesterol")
  
  #Age + Oldpeak
  
  #Spearman�s Correlation Coefficient Value
  cor(dataframe$age, dataframe$oldpeak, method = "spearman")
  
  #Full Spearman�s Correlation Coefficient Test
  res <- cor.test(dataframe$age, dataframe$oldpeak, method = "spearman")
  res
  
  #Plot
  ggscatter(dataframe, x = "age", y = "oldpeak",
            add = "reg.line", conf.int = TRUE, 
            cor.coef = TRUE, cor.method = "spearman",
            xlab = "Age", ylab = "Oldpeak")
}