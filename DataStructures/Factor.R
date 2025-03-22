#mesela iris veri stindeki Species(tür) kolonu bit factördür
#table fonksiyonu kullanılaırak bu türleirn her birini frrekansıda öğrenilebilir.

data(iris) # iris veri setini belleğe al
head(iris) # İlk 6 satırı göster
summary(iris)
str(iris) # Veri setinin yapısını göster 
#çıktıdan anladığımız 150 gözlem 5 değişken var
levels(iris$Species) # Faktör seviyelerini listele
table(iris$Species) # Hangi türden kaç tane var?
#todo işte bu kısım çok önemli
# Faktörlerin Sayısal Karşılıklarını Göster
# Faktörler arka planda sayılarla saklanır (1, 2, 3 olarak).
# Bunu görmek için:
as.numeric(iris$Species)

#birazda şov
boxplot(Sepal.Length ~ Species, data = iris,
        main = "Çiçek Türlerine Göre Sepal Uzunluğu",
        xlab = "Çiçek Türü", ylab = "Sepal Uzunluğu",
        col = c("red", "blue", "green"))

setosa_data <- subset(iris, Species == "setosa")
head(setosa_data)



