# Vektörler aynı veri tipine sahip arraylerdir
# c fonksiyonu kullanılarak oluşturulur. kolay yoldan : ile de oluşturulabilir.

v1 = c(10, 25, 37, 48)
v2 = c("hasan", "sabbah", "alamud", "din", "fedai")
v3 = c(TRUE, FALSE)
v4 = 1.3:5.3
v5 = 1.7:6.4



# elaman aulaşma direkt [] yapılır ancak seçmek için tekrar c fonksiyonundan yaralanılır. ilk elemanın indexi 1 dir!
# v4 ve v5'e dikkat emeni sitiyorum : işareti her zamamn +1 ekleyerek gider ve sağdaki sayıya ulaşana kadar devam eder
v1[1]
v1[c(2, 4)]
length(v1)
sort(v2)
v4
v5



#rep() each ve times olmak üzere ikş farklı paramaetre kullanabilirsin
m1 = rep(c(1, 2, 3), each = 3)
m2 = rep(c(1, 2, 3), times = 3)
m1
m2


#seq() fonksiyonu : arkadaş atlamdan dümdiz gittiği için bunu biraz dha özelleştirmeyi sağlar
a1 = seq(from = 10, to = 50, by = 5)
a1
