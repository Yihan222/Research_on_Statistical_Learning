# Library
library(tidyverse)

# Data
##You have to import heart_disease 
df <- data.frame(heart_disease)
df$oldpeak<- as.numeric(df$oldpeak)
df['sex'][df['sex'] == 0] = 'female'
df['sex'][df['sex'] == 1] = 'male'

## Subsets of healthy and ill (target)
ill<-subset.data.frame(df,target==1)
healthy<-subset.data.frame(df,target==0)

## Subsets of male and female (sex) ###not used now
male<-subset.data.frame(df,sex=='male')
female<-subset.data.frame(df,sex=='female')



#Plotting

#Code description:
## ggplot ([data frame], aes([element 1],[element 2]))+stat_density_2d{}

##heart rate vs blood pressure
ggplot(df,aes(trestbps,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(trestbps,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(trestbps,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")


## blood pressure vs cholesterol level
ggplot(df,aes(trestbps,chol))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(trestbps,chol))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(trestbps,chol))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
### chorzy maja mniejszy poziom cholesterolu ???


##cholesterol vs heart rate
ggplot(df,aes(chol,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(chol,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(chol,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")


## oldpeak (ST depression induced by exercise relative to rest) vs blood pressure
ggplot(df,aes(trestbps,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(trestbps,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(trestbps,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")


## oldpeak (ST depression induced by exercise relative to rest) vs heart rate
ggplot(df,aes(thalach,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(thalach,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(thalach,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")


## oldpeak (ST depression induced by exercise relative to rest) vs slope
ggplot(df,aes(slope,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(slope,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(slope,oldpeak))+stat_density_2d(aes(fill = ..level..), geom = "polygon")


## age vs blood pressure
ggplot(df,aes(age,trestbps))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(age,trestbps))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(age,trestbps))+stat_density_2d(aes(fill = ..level..), geom = "polygon")

## age vs heart rate
ggplot(df,aes(age,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(ill,aes(age,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")
ggplot(healthy,aes(age,thalach))+stat_density_2d(aes(fill = ..level..), geom = "polygon")







