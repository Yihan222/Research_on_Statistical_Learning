library(tidyverse) # includes many useful data analysis tools
library(ggplot2)


generateBoxAndWhiskers <- function(data){
  # Age
  ggplot(dataClean,aes(y=age)) +
    geom_boxplot(fill="coral1")+
    ggtitle("Age Box Diagram") + 
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) +
    labs(y="Age")
  ggsave("images/boxplot-age.png")

    
  # Resting blood Pressure
  ggplot(data,aes(y=trestbps)) +
    geom_boxplot(fill="coral1")+
    ggtitle("Resting Blood Pressure Box Diagram") + 
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) +
    labs(y="Resting Pressure")
  ggsave("images/boxplot-trestbps.png")
  
  
  # Cholesterole
  ggplot(data,aes(y=chol)) +
    geom_boxplot(fill="coral1")+
    ggtitle("Cholesterole Box Diagram") + 
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) +
    labs(y="Cholesterole Level")
  ggsave("images/boxplot-chol.png")
  
  # thalach - maximum heart rate achieved
  ggplot(data,aes(y=thalach)) +
    geom_boxplot(fill="coral1")+
    ggtitle("Thalach Box Diagram") + 
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) +
    labs(y="Maximum recorded pulse")
  ggsave("images/boxplot-thalach.png")
  
  
  # oldpeak - ST depression induced by exercise relative to rest
  ggplot(data,aes(y=oldpeak)) +
    geom_boxplot(fill="coral1")+
    ggtitle("Oldpeak Box Diagram") + 
    theme(axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank()) +
    labs(y="ST depression induced by exercise relative to rest")
  ggsave("images/boxplot-oldpeak.png")
}