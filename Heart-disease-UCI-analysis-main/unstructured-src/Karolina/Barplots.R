heart <- read.csv("~/Desktop/heart.csv")
attach(heart)
arg1 <- table(age)
barplot(arg1, col = rainbow(20), xlab = "Wiek", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od ich wieku")

arg2 <- table(sex)
barplot(arg2, col = rainbow(20), xlab = "Płeć (1 = mężczyzna, 0 = kobieta)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od ich płci")

arg3 <- table(cp)
barplot(arg3, col = rainbow(20), xlab = "Typ bólu w klatce piersiowej", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od typu bólu w klatce piersiowej")

arg4 <- table(trestbps)
barplot(arg4, col = rainbow(20), xlab = "Ciśnienie krwi", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od ich ciśnienia krwi")

arg5 <- table(chol)
barplot(arg5, col = rainbow(20), xlab = "Poziom cholesterolu", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od ich poziomu cholesterolu")

arg6 <- table(fbs)
barplot(arg6, col = rainbow(20), xlab = "Poziom cukru we krwi na czczo 120 mg/dL (1 = wykryto, 0 = nie wykryto)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od ich poziomu cukru we krwi na czczo")

arg7 <- table(restecg)
barplot(arg7, col = rainbow(20), xlab = "Wynik testu EKG (Wartości 0, 1, 2)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od wykonania testu EKG")

arg8 <- table(thalach)
barplot(arg8, col = rainbow(20), xlab = "Maksymalne tętno", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od wykrytego maksymalnego tętna")

arg9 <- table(exang)
barplot(arg9, col = rainbow(20), xlab = "Wykrycie dławicy wysiłkowej (1 = wykryto, 0 = nie wykryto)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od wykrytej dławicy wysiłkowej")

arg12 <- table(oldpeak)
barplot(arg12, col = rainbow(20), xlab = "Segment ST", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od segmentu ST")

arg13 <- table(slope)
barplot(arg13, col = rainbow(20), xlab = "Nachylenie szczytowego odcinka ST wysiłkowego.", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od nachylenia szczytowego odcinka ST wysiłkowego")

arg14 <- table(ca)
barplot(arg14, col = rainbow(20), xlab = "Liczba zabarwionych głównych naczynek (0-3)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od liczby zabarwionych głównych naczynek")

arg15 <- table(thal)
barplot(arg15, col = rainbow(20), xlab = "Thal: 3 = normalny; 6 = naprawiona wada; 7 = odwracalna wada", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od thal")

arg16 <- table(target)
barplot(arg16, col = rainbow(20), xlab = "1 = obecność choroby serca, 0 = brak obecności choroby serca", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od występowania choroby serca")



arg10 <- table(sex,age)
barplot(arg10, col = rainbow(2), xlab = "Wiek", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od wieku i płci", legend("topright", c("Kobieta", "Mężczyzna"), cex = 1, bty = "n", fill = rainbow(2)))
barplot(arg10, beside=T, col = rainbow(2), xlab = "Wiek", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób od wieku i płci", legend("topright", c("Kobieta", "Mężczyzna"), cex = 1, bty = "n", fill = rainbow(2)))

arg11 <- table(sex,fbs)
barplot(arg11, beside=T, col = rainbow(2), xlab = "Poziom cukru we krwi na czczo 120 mg/dL (1 = wykryto, 0 = nie wykryto)", ylab = "Liczba badanych", main = "Wykres zależności liczby badanych osób ich poziomu cukru we krwi na czczo i płci")




