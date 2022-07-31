heart <- read_csv("heart.csv")

#Prostszy wykres
pairs(~age+trestbps+chol+thalach, data=heart,
labels=c("Wiek", "Spoczynkowe cisnienie krwi","Cholesterol","Maksymalne tetno"),
main="Wykres typu Scatterplot Matrix dla wybranych atrybutów", panel=panel.smooth)

#Wykres bardziej zaawansowany- z korelacja i funkcjami gestosci

library(GGally)
ggpairs(data=heart,columns=c("age","trestbps","chol","thalach"),
columnLabels=c("Wiek", "Spoczynkowe cisnienie krwi","Cholesterol","Maksymalne tetno"),
title="Wykres typu Scatterplot Matrix dla wybranych atrybutów",lower=list(continuous="smooth"))