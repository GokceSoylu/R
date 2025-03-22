#data frames farklı veri tiplerini bünyesinde bulundurabilir. Farrklı kolonlarda farklı veri tiplerini bulundurabilir ancak her kolon içinde aynı veri tipini bulundumalı. bildiğin tablo mantığı yani
df = data.frame(
    name = c("hasan sabbah", "Gökçe Soylu", "Taha Naim Özmen"),
    pulse = c(140, 110, 120),
    durarion = c(100, 70, 80)
)
df

#gördüğün gibi canım bize her detayı güzelce veren arkadaşımız summary
summary(df)

#ACCESS
print("df[2]")
df[2] #hatta buraya aşağıdaki gibi direkt "pulse"da yazabilirsin yine çalışır
print("df[[pulse]]")
df[["pulse"]]
print("df$pulse")
df$pulse

#yine matriste kullanlıan rbind, cbind, -c(), d,m vb fonksiyonları özellikleri burad da kullanabilirisn
