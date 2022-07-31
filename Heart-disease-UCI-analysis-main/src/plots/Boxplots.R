library(ggplot2)


generateBoxPlots <- function(data){

  
  # Diagnosis vs age
  ggplot(data, aes(x=target, y=age)) + 
    geom_boxplot(fill="coral") +
    ggtitle("Diagnosis v.s. Age") +
    labs(x="Diagnosis class", y="Age")
  ggsave("images/boxplot-target-vs-age.png")
  
  
  # Diagnosis vs resting blood pressure
  ggplot(data, aes(x=target, y=trestbps)) + 
    geom_boxplot(fill="cadetblue1") +
    ggtitle("Diagnosis v.s. Resting Blood Pressure") +
    labs(x="Diagnosis class", y="Resting blood pressure")
  ggsave("images/boxplot-target-vs-trestbps.png")

    
  # Diagnosis vs cholesterol
  ggplot(data, aes(x=target, y=chol)) + 
    geom_boxplot(fill="brown2") +
    ggtitle("Diagnosis v.s. Cholesterol") +
    labs(x="Diagnosis class", y="Cholesterol [mg/dl]")
  ggsave("images/boxplot-target-vs-chol.png")

    
  # Diagnosis vs max BPS
  ggplot(data, aes(x=target, y=thalach)) + 
    geom_boxplot(fill="aquamarine3") +
    ggtitle("Diagnosis v.s. Max BPS") +
    labs(x="Diagnosis class", y="thalach")
  ggsave("images/boxplot-target-vs-thalach.png")
  
  
  # Diagnosis vs oldpeak
  ggplot(data, aes(x=target, y=oldpeak)) + 
    geom_boxplot(fill="deeppink3") +
    ggtitle("Diagnosis v.s. Oldpeak") +
    labs(x="Diagnosis class", y="Oldpeak [mV]")
  ggsave("images/boxplot-target-vs-oldpeak.png")

    
  # Diagnosis vs CA results
  ggplot(data, aes(x=target, y=ca)) + 
    geom_boxplot(fill="darkolivegreen3") +
    ggtitle("Diagnosis vs CA results") +
    labs(x="Diagnosis class", y="CA results")
  ggsave("images/boxplot-target-vs-ca.png")
  return()
}