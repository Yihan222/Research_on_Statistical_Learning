
library(tidyverse)
library(ggplot2)


data <- read.csv("heart.csv")
names(data)[1] <- "age"
dhist(data["sex"])

table (data$exang)

# Przygotowanie danych
# missing values
sapply(data, function(x) sum(is.na(x)))

# Renaming
data$sex <- ifelse(data$sex==1,"male","female")

data$cp <- recode(data$cp, `0`="typical-angina", `1`="atypical-angina", `2`="non-anginal-pain", `3`="asymptomatic", .default= NA)

data$fbs <- ifelse(data$fbs==1, TRUE, FALSE)

#data$restecg <- 
  
recode(data$restecg, `0`="normal", `1`="ST-T-abnormality", `2`=)

# Poszukiwanie outlierów

# normalizacja bledu

# Boxplot
# Age
ggplot(dataClean,aes(y=age)) +
  geom_boxplot(fill="coral1")+
  ggtitle("Wykres pudełkowy wieku") + 
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(y="Wiek")
  # theme_light()/
  

# Resting blood Pressure
ggplot(data,aes(y=trestbps)) +
  geom_boxplot(fill="coral1")+
  ggtitle("Wykres pudełkowy ci") + 
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(y="Resting blood pressure")

# Cholesterole
ggplot(data,aes(y=chol)) +
  geom_boxplot(fill="coral1")+
  ggtitle("Cholesterole level box and whiskers plot") + 
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(y="Age")

# thalach - maximum heart rate achieved
ggplot(data,aes(y=thalach)) +
  geom_boxplot(fill="coral1")+
  ggtitle("Max heart rate achieved box and whiskers plot") + 
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(y="Max heart rate achieved")


# oldpeak - ST depression induced by exercise relative to rest
ggplot(data,aes(y=oldpeak)) +
  geom_boxplot(fill="coral1")+
  ggtitle("ST depression induced by exercise relative to rest") + 
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  labs(y="ST depression")




# Categorical:
# sex, cp, fbs, restecg, exang, slope, ca? thal?


trestbpsHist <- ggplot(data,aes(x=trestbps)) +
  geom_histogram()

thalachHist <- ggplot(data,aes(x=thalach)) +
  geom_histogram()

ggplot(data,aes(y=age,group=sex)) +
  geom_boxplot(fill="coral1")+
  theme_light() +
  facet_grid(. ~ sex)

ggplot(data,aes(y=age, x=chol,group=sex)) +
  geom_density_2d_filled()+
  theme_light() +
  facet_grid(. ~ sex)

ggsave()

ggplot(data,aes(x=cp)) +
  geom_histogram(fill="coral1")




