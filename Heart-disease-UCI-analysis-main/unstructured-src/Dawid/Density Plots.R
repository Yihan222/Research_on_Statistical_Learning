heart <- read.csv(file = 'heart.csv')

dens <- density(heart$ï.¿age)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci wieku")
polygon(dens, col = "steelblue")

dens <- density(heart$sex)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci p³ci")
polygon(dens, col = "steelblue")

dens <- density(heart$cp)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci bólu klatki piersiowej")
polygon(dens, col = "steelblue")

dens <- density(heart$trestbps)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci spoczynkowego ciœnienia krwi")
polygon(dens, col = "steelblue")

dens <- density(heart$chol)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci cholesterolu w surowicy")
polygon(dens, col = "steelblue")

dens <- density(heart$fbs)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci poziomu cukru we krwi na czczo")
polygon(dens, col = "steelblue")

dens <- density(heart$restecg)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci spoczynkowych wyników elektrokardiograficznych")
polygon(dens, col = "steelblue")

dens <- density(heart$thalach)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci osi¹gniêtego maksymalnego têtna")
polygon(dens, col = "steelblue")

dens <- density(heart$exang)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci d³awicy wysi³kowej")
polygon(dens, col = "steelblue")

dens <- density(heart$oldpeak)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci odcinka ST przez wysi³ek fizyczny w stosunku do odpoczynku")
polygon(dens, col = "steelblue")

dens <- density(heart$slope)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci nachylenia szczytowego odcinka ST wysi³kowego")
polygon(dens, col = "steelblue")

dens <- density(heart$ca)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci liczby g³ównych naczyñ zabarwionych za pomoc¹ m¹ki ziemniaczanej")
polygon(dens, col = "steelblue")

dens <- density(heart$thal)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci talasemii")
polygon(dens, col = "steelblue")

dens <- density(heart$target)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres gêstoœci chorób serca w badanej populacji")
polygon(dens, col = "steelblue")