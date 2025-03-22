#bildiğin nokta grafiği
#todo plot(x, y, type = "p", main = "Grafik Başlığı", xlab = "X Ekseni", ylab = "Y Ekseni", col = "blue", pch = 16)


#plot(1, 2)
#plot(c(1, 2), c(-1, -2))

#burada line yapmak için type="l" yapariz
#plot(1:10, col = "red", pch = 8, main = "grafik", xlab = "x ekseni", ylab = "y ekseni")

# x = c(-10:0, 0:10)
# y = x ^ 2
# plot(x, y, main = "parabol nokta grafigi", xlab = "x ekseni 1:10", ylab = "y ekseni", type = "p", col = "blue", pch = 19)


x = c(-10:0, 0:10)
y = x ^ 2
plot(x, y, main = "parabol cizgi grafigi", xlab = "x ekseni 1:10", ylab = "y ekseni x kare", type = "l", col = "blue")