library(tidyverse)
library(ggplot2)

generate2DDensity <- function(data){

  #Age vs blood pressure
    ggplot(data,aes(age,trestbps)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Age v.s. Resting blood pressure") + 
        labs(y="Trestbps")+
        labs(x="Age")+
        theme(legend.position = "none")
    ggsave("images/2d-density-age-bps.png")

  #Age vs heart rate
    ggplot(data,aes(age,thalach)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Age v.s. Heart rate") + 
        labs(y="Heart rate")+
        labs(x="Age")+
        theme(legend.position = "none")
    ggsave("images/2d-density-age-hr.png")
    
  #Age vs cholesterol
    ggplot(data,aes(age,chol)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Age v.s. cholesterol") + 
        labs(y="Cholesterol")+
        labs(x="Age")+
        theme(legend.position = "none")
    ggsave("images/2d-density-age-chol.png")

  #Heart rate vs Resting blood pressure
    ggplot(data,aes(thalach,trestbps)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Heart rate v.s. Resting blood pressure") + 
        labs(y="Trestbps")+
        labs(x="Heart rate")+
        theme(legend.position = "none")
    ggsave("images/2d-density-hr-bps.png")

  #Heart rate vs cholesterol
    ggplot(data,aes(thalach,chol)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Heart rate v.s. Cholesterol") + 
        labs(y="Cholesterol")+
        labs(x="Heart rate")+
        theme(legend.position = "none")
    ggsave("images/2d-density-hr-chol.png")

  #Cholesterol vs blood pressure
    ggplot(data,aes(chol,trestbps)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Cholesterol v.s. Resting blood pressure") + 
        labs(y="Trestbps")+
        labs(x="Cholesterol")+
        theme(legend.position = "none")
    ggsave("images/2d-density-chol-bps.png")

  #Oldpeak vs blood pressure
    ggplot(data,aes(oldpeak,trestbps)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Oldpeak v.s. Resting blood pressure") + 
        labs(y="Trestbps")+
        labs(x="Oldpeak")+
        theme(legend.position = "none")
    ggsave("images/2d-density-oldpeak-bps.png")
    
  #Oldpeak vs heart rate
    ggplot(data,aes(oldpeak,thalach)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Oldpeak v.s. Heart rate") + 
        labs(y="Heart rate")+
        labs(x="Oldpeak")+
        theme(legend.position = "none")
    ggsave("images/2d-density-oldpeak-hr.png")
    
  #Oldpeak vs cholesterol
    ggplot(data,aes(oldpeak,chol)) +
        stat_density_2d(aes(fill = ..level..), geom = "polygon")+
        ggtitle("Oldpeak v.s. Cholesterol") + 
        labs(y="Cholesterol")+
        labs(x="Oldpeak")+
        theme(legend.position = "none")
    ggsave("images/2d-density-oldpeak-chol.png")
}