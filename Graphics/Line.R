# Line grafiği için aslında gayet net yine plot grafiği kullanılır. lwd ile width değeri lty ile çizginin tipi belirlenebillr(1-6 aralığınd adeğer alır)
#eğer iki veya daha fazla çizgi bulunmasını istersek ek olarak line grafiğini kullanırız



# plot() komutu, grafiği ilk başta çizer ve eksen ayarlarını yapar.
# lines() komutu, mevcut grafiği referans alarak yeni bir çizgi ekler.
# Böylece ikisi birbirine bağlı olur ve ikinci çizgi, ilk grafiğin üzerine gelir.

x = 1:100
y = c(1, 5, 7, 3, 4, 5, 12, 12, 15, rep(15, 10), 1:10, 5:10, 16:30, 1:50)
line2 = c(x ^ 0.5, 3 * y)
line3 = c(1:50, 50:30, 30:40, 40:35, 35:40)
plot(x, y, main = "Cizgi Grafigi", xlab = "x ekseni", ylab = "y ekseni",
    type = "l", lwd = 1, lty = 1, col = "blue")
lines(line2, col = "red")
lines(line3, col = "green")