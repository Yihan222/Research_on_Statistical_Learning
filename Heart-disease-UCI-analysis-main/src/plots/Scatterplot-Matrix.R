library(tidyverse)
library(GGally)
library(ggplot2)

generateScatterPlot<-function(data_in){
  
    #Simpler Scatterplot Matrix with some of the attributes
    png(filename = "images/scatterplotMatrix1.png")
    pairs(~age+trestbps+chol+thalach, data=data_in,
        labels=c("Age", "Trestbps","Cholesterol","Thalach"),
        main="Simpler Scatterplot Matrix with some of the attributes", panel=panel.smooth)
    dev.off()

    #More advanced Scatterplot Matrix- with correlation and density functions
    plot2 <- ggpairs(data=data_in,columns=c("age","trestbps","chol","thalach"),
        columnLabels=c("Age", "Trestbps","Cholesterol","Thalach"),
        title="Scatterplot Matrix- with correlation and density functions",lower=list(continuous="smooth"))
    ggsave("images/ScatterplotMatrix2.png", plot2)
}