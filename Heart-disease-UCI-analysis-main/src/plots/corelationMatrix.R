library(corrplot)
library(ggpubr)

generatecorrelationMatrix <- function(inputData) {
  pearsonCor<-cor(inputData)
  round(pearsonCor,2)
  corrplot(pearsonCor, method="number", type="lower")
  #TO DO: save plot to .png file
}
