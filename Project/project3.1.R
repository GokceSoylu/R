library(readxl)


matrix_lm <- function(X, Y) {
  # Ensure X is a matrix
  X <- as.matrix(X)
  Y <- as.matrix(Y)

  # Add intercept term
  X <- cbind(Intercept = 1, X)

  # Estimate coefficients using (X'X)^(-1)X'Y
  beta_hat <- solve(t(X) %*% X) %*% t(X) %*% Y

  # Predicted Y
  Y_hat <- X %*% beta_hat

  # Residuals
  residuals <- Y - Y_hat

  # Total Sum of Squares (TSS)
  TSS <- sum((Y - mean(Y)) ^ 2)

  # Residual Sum of Squares (RSS)
  RSS <- sum(residuals ^ 2)

  # Regression Model Sum of Squares (RMSS)
  RMSS <- TSS - RSS

  # R-squared
  R_squared <- RMSS / TSS

  # Output as a list
  return(list(
    Coefficients = beta_hat,
    Y_hat = Y_hat,
    Residuals = residuals,
    TSS = TSS,
    RMSS = RMSS,
    RSS = RSS,
    R_squared = R_squared
  ))
}


data <- read_excel("/Users/gokcesoylu/R/Project/MultRegData.xlsx")

# Gereksiz IndNo sütununu çıkar
data <- data[, -1]

# Y bağımlı değişken
Y <- data$Y

# X bağımsız değişkenler
X <- data[, -1] # Y sütunu hariç kalanlar

# Fonksiyon tanımı (önceki gibi)
# ...

# Uygula
result <- matrix_lm(X, Y)

# Sonuçları yazdır
print(result)

