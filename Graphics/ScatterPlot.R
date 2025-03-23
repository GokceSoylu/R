#yine plot grafiği ancak bu sefer points() ekliyoruz

x <- 1:10
y <- x ^ 2
plot(x, y, main = "Scatterplot ve Ekstra Noktalar", xlab = "X Ekseni", ylab = "Y Ekseni", col = "blue", pch = 16)

# Ekstra noktalar ekliyoruz
x2 <- c(5, 6, 7)
y2 <- c(25, 36, 49)
points(x2, y2, col = "red", pch = 17)



# plot(): Scatterplot (dağılım grafiği) oluşturur.
# points(): Var olan scatterplot'a ekstra noktalar ekler.
# Yani, plot() veri noktalarını çizerken, points() fonksiyonu daha önce çizilmiş grafiğe yeni noktalar eklemek için kullanılır.
