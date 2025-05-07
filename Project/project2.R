# Load data
data <- read.csv("DatasetNA.csv")

# Select only continuous variables (Var1 to Var8)
vars <- paste0("Var", 1:8)
data_selected <- data[, vars]

#-------------------#
# TASK 1 FUNCTIONS  #
#-------------------#

summary_stats <- function(df) {
  sapply(df, function(x) {
    c(
      n = sum(!is.na(x)),
      min = min(x, na.rm = TRUE),
      max = max(x, na.rm = TRUE),
      range = diff(range(x, na.rm = TRUE)),
      sum = sum(x, na.rm = TRUE),
      mean = mean(x, na.rm = TRUE),
      median = median(x, na.rm = TRUE),
      sum_sq = sum(x ^ 2, na.rm = TRUE),
      var = var(x, na.rm = TRUE),
      sd = sd(x, na.rm = TRUE)
    )
  })
}

cross_products <- function(df) {
  outer(1:ncol(df), 1:ncol(df), Vectorize(function(i, j) {
    sum(df[[i]] * df[[j]], na.rm = TRUE)
  }))
}

cov_matrix <- function(df) {
  cov(df, use = "pairwise.complete.obs")
}

cor_matrix <- function(df) {
  cor(df, use = "pairwise.complete.obs")
}

#-------------------#
# TASK 2 FUNCTIONS  #
#-------------------#

group_summary <- function(df, by) {
  split_df <- split(df, by)
  lapply(split_df, function(sub_df) {
    list(
      summary = summary_stats(sub_df[, vars]),
      crossprod = cross_products(sub_df[, vars]),
      covariance = cov_matrix(sub_df[, vars]),
      correlation = cor_matrix(sub_df[, vars])
    )
  })
}

#-------------------#
# TASK 3 FUNCTIONS  #
#-------------------#

scatter_plot <- function(df, var1, var2) {
  plot(df[[var1]], df[[var2]], xlab = var1, ylab = var2, main = paste("Scatterplot:", var1, "vs", var2))
}

scatter_matrix <- function(df) {
  pairs(df)
}

#-------------------#
# TASK 4 FUNCTION   #
#-------------------#

scale_variables <- function(df) {
  as.data.frame(scale(df))
}

#-------------------#
#     EXECUTION     #
#-------------------#

# TASK 1: Basic stats
basic_stats <- summary_stats(data_selected)
crossprod_matrix <- cross_products(data_selected)
covariance_matrix <- cov_matrix(data_selected)
correlation_matrix <- cor_matrix(data_selected)

# TASK 2: Grouped by Gender, Group, Gender+Group
group_stats <- group_summary(data, data$group)
gender_stats <- group_summary(data, data$gender)
group_gender_stats <- group_summary(data, interaction(data$group, data$gender))

# TASK 3: Plots
# scatter_plot(data_selected, "Var1", "Var2")
# scatter_matrix(data_selected)

# TASK 4: Scaling
scaled_data <- scale_variables(data_selected)
