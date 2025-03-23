y = c(10, 28, 15, 37, 10)
x = c("Ankara", "izmir", "antalya", "malatya", "manisa")

barplot(y, names.arg = x, col = rainbow(5), width = 1, density = 10)
#width ile istersen çubuklara farklı genişlikler atayabilirsin
#horiz=true dersende yan olur graiğin
