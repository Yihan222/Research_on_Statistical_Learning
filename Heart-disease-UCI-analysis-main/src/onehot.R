library(caret)

oneHot <- function(inData) {
  
# Dummify the data
dmy <- dummyVars(" ~ .", data = inData)

# Create new data frame
trsf <- data.frame(predict(dmy, newdata = inData))

return(trsf)
}