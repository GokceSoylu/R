#veriyi olışturduk

set.seed(42) # Sonuçları tekrar üretilebilir yapmak için
std <- c(45, 50, 55, 60, 65, 68, 70, 72, 75, 78, 80, 85, 88, 90, 92, 95, 98, 100)
std_mean = mean(std)
std_sd = sd(std)
#özellikleirne bakalım
summary(std)

#görselleştirelim
hist(std, breaks = 6, col = "lightblue", main = "student's notes", xlab = "notes", ylab = "fracance", border = "black")

#gelelim dağılımlarımıza 
#öncelikle olasılık değerine göre grafiği yazdıralım. burada y değerleri öğrenci sayısınoı göstermek yerine olasılık değerini gösterir toplamları = 1 olur
hist(std, breaks = 6, col = "lightblue", main = "studnt's notes", xlab = "notes", ylab = "probability", border = "black", probability = TRUE)
lines(density(std), col = "red") #birde yoğunluğu gösteren bir çizgi ekledik ki hangi dağılıma daha uygun anlayabilelim
#zaten çizdiğimiz çizginin grafiğe oturmamasından zaten normal dağılıma uygun olmasığı belli. 
#ancak bunu kontrol edebilmek için ayrıca bir foksiyornumuz var
qqnorm(std, main = "normal Q-Q Grafigi", col = "lightblue")
qqline(std, col = "red")

#şimdi normal dağılım varsyımı şle olasılık hesaplayalım
# d Belirli bir değerin olasılığını hesaplar.(density)
# p  Bir değerden küçük olma olasılığını hesaplar.(yüzde)
# q  Belirli bir olasılığa karşılık gelen değeri bulur.
# r Rastgele veri üretir.

dnorm(75, mean = std_mean, sd = std_sd)
pnorm(75, mean = std_mean, sd = std_sd)
qnorm(0.4786598, mean = std_mean, sd = std_sd)