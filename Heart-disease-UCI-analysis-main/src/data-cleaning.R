library(tidyverse)
library(ggplot2)
library(DataExplorer)

cleanData <- function(data){
  
  dataClean <- data;
  
  # dataClean preparation
  
  dataClean[dataClean == "?"] <- NA
  plot_missing(dataClean, theme_config=list(legend.position="none")) +
    labs(title="Liczba brakuj¹cych wartoœci w rozbiciu na artybuty",
         x="Atrybuty", y="Liczba brakuj¹cych wartoœci")
  ggsave("images/missing-values.png")
  
  # Converting numerical values
  dataClean$ca <- as.numeric(dataClean$ca)
  dataClean$thal <- as.numeric(dataClean$thal)
  
  # Deleting missing values
  sapply(dataClean, function(x) sum(is.na(x)))
  dataClean <- na.omit(dataClean);
  
  # Renaming and recoding Values
  dataClean$sex <- ifelse(dataClean$sex==1,"male","female")
  dataClean$sex <- as.factor(dataClean$sex)
  
  dataClean$cp <- recode(dataClean$cp, `1`="typical-angina", `2`="atypical-angina", `3`="non-anginal-pain", `4`="asymptomatic", .default="MISSING")
  dataClean <- dataClean[(dataClean$cp != "MISSING"),]
  dataClean$cp <- as.factor(dataClean$cp)
  
  dataClean$fbs <- ifelse(dataClean$fbs==1, TRUE, FALSE)
  
  dataClean$restecg <- recode(dataClean$restecg, `0`="normal", `1`="ST abnormality", `2`="LVH", .default="MISSING")
  dataClean <- dataClean[(dataClean$restecg != "MISSING"),]
  dataClean$restecg <- as.factor(dataClean$restecg)
  
  dataClean$exang <- ifelse(dataClean$exang==1, TRUE, FALSE)
  
  dataClean$slope <- recode(dataClean$slope, `1`="upsloping", `2`="flat", `3`="downsloping", .default="MISSING")
  dataClean <- dataClean[(dataClean$slope != "MISSING"),]
  dataClean$slope <- as.factor(dataClean$slope)

  dataClean$thal <- recode(dataClean$thal, `3`="normal", `6`="fixed defect", `7`="rev. defect", .default="MISSING")
  dataClean <- dataClean[(dataClean$thal != "MISSING"),]
  dataClean$thal <- as.factor(dataClean$thal)
  
  dataClean$diag <- as.factor(dataClean$diag)
  
  # Removing oultier values which do not lay in the (q0.5 - 3 * MAD, q0.5 + 3 * MAD) range
  dataClean <- dataClean[(dataClean$trestbps >= median(dataClean$trestbps) - 3 * mad(dataClean$trestbps)) & (dataClean$trestbps <= median(dataClean$trestbps) + 3 * mad(dataClean$trestbps)),]
  dataClean <- dataClean[(dataClean$chol >= median(dataClean$chol) - 3 * mad(dataClean$chol)) & (dataClean$chol <= median(dataClean$chol) + 3 * mad(dataClean$chol)),]
  dataClean <- dataClean[(dataClean$thalach >= median(dataClean$thalach) - 3 * mad(dataClean$thalach)) & (dataClean$thalach <= median(dataClean$thalach) + 3 * mad(dataClean$thalach)),]
  dataClean <- dataClean[(dataClean$oldpeak >= median(dataClean$oldpeak) - 3 * mad(dataClean$oldpeak)) & (dataClean$oldpeak <= median(dataClean$oldpeak) + 3 * mad(dataClean$oldpeak)),]
  
  # For compatibility
  colnames(dataClean)[14] <- "target"

  return(dataClean)
}

roughlyCleanData <- function(data){
  dataC <- data;
  dataC[dataC == "?"] <- NA
  # Data preparation
  dataC$ca <- as.numeric(dataC$ca)
  dataC$thal <- as.numeric(dataC$thal)
  # missing values
  sapply(dataC, function(x) sum(is.na(x)))
  dataClean <- na.omit(dataClean);
  # Removing oultier values which do not lay in the (q0.5 - 3 * MAD, q0.5 + 3 * MAD) range
  dataC <- dataC[(dataC$trestbps >= median(dataC$trestbps) - 3 * mad(dataC$trestbps)) & (dataC$trestbps <= median(dataC$trestbps) + 3 * mad(dataC$trestbps)),]
  dataC <- dataC[(dataC$chol >= median(dataC$chol) - 3 * mad(dataC$chol)) & (dataC$chol <= median(dataC$chol) + 3 * mad(dataC$chol)),]
  dataC <- dataC[(dataC$thalach >= median(dataC$thalach) - 3 * mad(dataC$thalach)) & (dataC$thalach <= median(dataC$thalach) + 3 * mad(dataC$thalach)),]
  dataC <- dataC[(dataC$oldpeak >= median(dataC$oldpeak) - 3 * mad(dataC$oldpeak)) & (dataC$oldpeak <= median(dataC$oldpeak) + 3 * mad(dataC$oldpeak)),]
  
  return(dataC)
}



