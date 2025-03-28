set.seed(123)
heights <- rnorm(1000, mean = 170, sd = 10)
hist(heights, main = "Boy Uzunluğu Dağılımı", xlab = "Boy (cm)", col = "lightblue", breaks = 30, probability = TRUE)
curve(dnorm(x, mean = 170, sd = 10), col = "red", lwd = 2, add = TRUE)
