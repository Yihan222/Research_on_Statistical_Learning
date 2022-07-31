data <- read.csv("heart.csv")
names(data)[1] <- "age"
names(data)[14] <- "diagnosis"

# ze wzgl. na diagnoze
boxplot(age ~ diagnosis, data, main = "Age", col = "coral")
boxplot(trestbps ~ diagnosis, data, main = "Resting Blood Pressure", col = "cadetblue1")
boxplot(chol ~ diagnosis, data, main = "Cholesterol", col = "brown2")
boxplot(thalach ~ diagnosis, data, main = "Max. bps during exc. test", col = "aquamarine3")
boxplot(oldpeak ~ diagnosis, data, main = "ST depression", col = "aquamarine3")
boxplot(ca ~ diagnosis, data, main = "Num. of vessels", col = "darkolivegreen3")
# ze wzgl. na wiek
boxplot(trestbps ~ age, data, main = "Resting Blood Pressure", col = "cadetblue1")
boxplot(chol ~ age, data, main = "Cholesterol", col = "brown2")
boxplot(thalach ~ age, data, main = "Max. bps during exc. test", col = "aquamarine3")
# ze wzgl. na plec
boxplot(trestbps ~ sex, data, main = "Resting Blood Pressure", col = "cadetblue1")
boxplot(chol ~ sex, data, main = "Cholesterol", col = "brown2")
boxplot(thalach ~ sex, data, main = "Max. bps during exc. test", col = "aquamarine3")

# ze wzgl. na typ bolu klatki piersiowej
boxplot(age ~ cp, data, main = "Age", col = "coral")
boxplot(trestbps ~ cp, data, main = "Resting Blood Pressure", col = "cadetblue1")
boxplot(chol ~ cp, data, main = "Cholesterol", col = "brown2")
boxplot(thalach ~ cp, data, main = "Max. bps during exc. test", col = "aquamarine3")
boxplot(ca ~ cp, data, main = "Num. of vessels", col = "darkolivegreen3")
