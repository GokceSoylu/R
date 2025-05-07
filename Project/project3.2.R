library(readxl)

model_selection_r2 <- function(X, Y) {
  X <- as.data.frame(X)
  Y <- as.matrix(Y)

  var_names <- colnames(X)
  results <- list()

  # Total Sum of Squares (TSS) is same for all models
  TSS <- sum((Y - mean(Y)) ^ 2)

  model_id <- 1

  # Iterate over all combinations of variables
  for (k in 1:ncol(X)) {
    combos <- combn(var_names, k, simplify = FALSE)
    for (vars in combos) {
      Xi <- as.matrix(X[, vars])
      Xi <- cbind(Intercept = 1, Xi)

      # Estimate coefficients
      beta_hat <- solve(t(Xi) %*% Xi) %*% t(Xi) %*% Y
      Y_hat <- Xi %*% beta_hat
      residuals <- Y - Y_hat

      # Compute model sums
      RSS <- sum(residuals ^ 2)
      RMSS <- TSS - RSS
      R_squared <- RMSS / TSS

      # Store results
      results[[model_id]] <- list(
        Model_ID = model_id,
        Num_Variables = k,
        Variables = paste(vars, collapse = ", "),
        TSS = round(TSS, 4),
        RMSS = round(RMSS, 4),
        RSS = round(RSS, 4),
        R_squared = round(R_squared, 6)
      )
      model_id <- model_id + 1
    }
  }

  # Convert to data frame and sort by R-squared
  df_results <- do.call(rbind, lapply(results, as.data.frame))
  df_results <- df_results[order(-df_results$R_squared),]
  rownames(df_results) <- NULL
  return(df_results)
}


# Veriyi oku
data <- read_excel("MultRegData.xlsx")
data <- data[, -1] # IndNo sütununu çıkar

# Ayır Y ve X
Y <- data$Y
X <- data[, -1] # Y hariç kalanlar X

# Model seçim sonuçlarını al
model_results <- model_selection_r2(X, Y)

# İlk 10 en iyi modeli yazdır
head(model_results, 10)
