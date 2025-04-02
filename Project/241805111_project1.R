# Veriyi okuma
library(readr)
data <- read_delim("Project/DatasetNA.txt", delim = " ", col_names = TRUE)

# Eksik değerleri kontrol etme
print(colSums(is.na(data)))

# Özel çubuk grafik fonksiyonu
draw_barplot <- function(data, column, main_title, x_label, y_label, colors, horizontal = FALSE) {
  counts <- table(data[[column]])
  bar_width <- rep(0.5, length(counts))
  plot(NA, xlim = c(0, length(counts)), ylim = c(0, max(counts)), xaxt = 'n', yaxt = 'n', xlab = x_label, ylab = y_label, main = main_title)
  rect(0:(length(counts) - 1), 0, 1:length(counts), counts, col = colors, border = "black")
  axis(1, at = 0.5:(length(counts) - 0.5), labels = names(counts))
  axis(2)
}

# Kullanım örneği
draw_barplot(data, "Group", "Grupların Dağılımı", "Group", "Frekans", colors = rainbow(4))

draw_barplot(data, "Gender", "Cinsiyet Dağılımı", "Gender", "Frekans", colors = c("blue", "pink"))

# Histogram fonksiyonu
draw_histogram <- function(data, column, bins, main_title, x_label, y_label, color) {
  hist_data <- hist(data[[column]], breaks = bins, plot = FALSE)
  plot(hist_data$mids, hist_data$counts, type = 'h', lwd = 10, col = color, main = main_title, xlab = x_label, ylab = y_label)
}

draw_histogram(data, "Var1", bins = 10, main_title = "Var1 Histogram", x_label = "Değerler", y_label = "Frekans", color = "red")

# Boxplot fonksiyonu
draw_boxplot <- function(data, column, main_title, x_label, y_label, color) {
  sorted_values <- sort(data[[column]], na.last = TRUE)
  q1 <- quantile(sorted_values, 0.25, na.rm = TRUE)
  q3 <- quantile(sorted_values, 0.75, na.rm = TRUE)
  median_value <- median(sorted_values, na.rm = TRUE)

  plot(1, median_value, xlim = c(0.5, 1.5), ylim = range(sorted_values, na.rm = TRUE), pch = 20, xaxt = 'n', xlab = x_label, ylab = y_label, main = main_title)
  rect(0.75, q1, 1.25, q3, col = color, border = "black")
  segments(1, min(sorted_values, na.rm = TRUE), 1, max(sorted_values, na.rm = TRUE))
}

draw_boxplot(data, "Var1", "Var1 Boxplot", "", "Değerler", color = "lightblue")
