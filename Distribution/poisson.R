set.seed(123)
customers <- rpois(1000, lambda = 6)
hist(customers, main = "Poisson Dağılımı (Saatlik Müşteri Sayısı)", xlab = "Müşteri Sayısı", col = "orange", breaks = 20)
