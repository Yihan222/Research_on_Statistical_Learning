heart <- read.csv(file = 'heart.csv')

dens <- density(heart$?.?age)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci wieku")
polygon(dens, col = "steelblue")

dens <- density(heart$sex)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci p?ci")
polygon(dens, col = "steelblue")

dens <- density(heart$cp)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci b?lu klatki piersiowej")
polygon(dens, col = "steelblue")

dens <- density(heart$trestbps)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci spoczynkowego ci?nienia krwi")
polygon(dens, col = "steelblue")

dens <- density(heart$chol)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci cholesterolu w surowicy")
polygon(dens, col = "steelblue")

dens <- density(heart$fbs)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci poziomu cukru we krwi na czczo")
polygon(dens, col = "steelblue")

dens <- density(heart$restecg)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci spoczynkowych wynik?w elektrokardiograficznych")
polygon(dens, col = "steelblue")

dens <- density(heart$thalach)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci osi?gni?tego maksymalnego t?tna")
polygon(dens, col = "steelblue")

dens <- density(heart$exang)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci d?awicy wysi?kowej")
polygon(dens, col = "steelblue")

dens <- density(heart$oldpeak)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci odcinka ST przez wysi?ek fizyczny w stosunku do odpoczynku")
polygon(dens, col = "steelblue")

dens <- density(heart$slope)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci nachylenia szczytowego odcinka ST wysi?kowego")
polygon(dens, col = "steelblue")

dens <- density(heart$ca)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci liczby g??wnych naczy? zabarwionych za pomoc? m?ki ziemniaczanej")
polygon(dens, col = "steelblue")

dens <- density(heart$thal)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci talasemii")
polygon(dens, col = "steelblue")

dens <- density(heart$target)
plot(dens, frame = TRUE, col = "steelblue", main = "Wykres g?sto?ci chor?b serca w badanej populacji")
polygon(dens, col = "steelblue")