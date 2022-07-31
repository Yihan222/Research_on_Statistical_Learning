library(moments)

DescriptiveStatistics <- function(data)
{
  #Median
  median(data$age)
  median(data$thalach)
  median(data$trestbps)
  median(data$chol)
  
  #Mean
  mean(data$age)
  mean(data$thalach)
  mean(data$trestbps)
  mean(data$chol)

  #skewness
  skewness(data$age)
  skewness(data$thalach)
  skewness(data$trestbps)
  skewness(data$chol)
  
  #curtain
  kurtosis(data$age)
  kurtosis(data$thalach)
  kurtosis(data$trestbps)
  kurtosis(data$chol)
}

