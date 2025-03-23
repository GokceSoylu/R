#pie yani pasta grafiği. Kategorik verilerin görselleştirilmesinde kullanılır.
#pie(data, label, col,barder, radius, clockwise)
#rainbow() otomotak renk atama

x = c(10, 28, 15, 37, 10)
labels = c("Ankara", "izmir", "antalya", "malatya", "manisa")
pie(x, labels = labels, main = "etkinlik dagilimi", col = rainbow(5))