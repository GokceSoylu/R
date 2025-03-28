set.seed(123)
flips <- rbinom(1000, size = 10, prob = 0.5)
hist(flips, main = "Binom Dağılımı (Para Atma)", xlab = "Yazı Sayısı", col = "purple", breaks = 10, probability = TRUE)


