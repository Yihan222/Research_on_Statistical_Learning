library(corrplot)
library(ggpubr)

#Single plot generation
generateCorrelationPlot <- function(dataframe,inputData1, inputData2, labelx=inputData1, labely=inputData2) {
  
  ggscatter(dataframe, x = inputData1, y = inputData2,
            add = "reg.line", conf.int = TRUE, 
            cor.coef = TRUE, cor.method = "pearson",
            xlab = labelx, ylab = labely)
  ggsave(paste("images/correlation",inputData1,inputData2,".png", sep="-"))
}

generateCorrelationPlots <- function(dataframe) {
  
  generateCorrelationPlot(dataframe, "age", "thalach")
  
  generateCorrelationPlot(dataframe, "exang", "cp")
  
  generateCorrelationPlot(dataframe, "cp", "thalach")
  
  generateCorrelationPlot(dataframe, "slope", "oldpeak")
}