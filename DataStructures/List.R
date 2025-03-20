# Vectör ile aynı sadece farklı veri yapılarını içerebilir. 
# list() fonsiyonu ile oluşturulur

l1 = list(1, list(2, 3, 4), "hasan")
l1
str(l1)

# vektörler ister tek elemanlı ister çok elemanlı olsun atomik yapılır. listenin ise her bir elemanı atamik yapılı bir vektör kbul edilir

# [[1]]
# [1] 1 atomic vector

# [[2]] içerisinde vectoeler bulunduran bir liste
# [[2]][[1]]
# [1] 2

# [[2]][[2]] 
# [1] 3

# [[2]][[3]] 
# [1] 4


# [[3]] caracter vector
# [1] "hasan"


##append
l2 = list("gökçe", "soylu", 24)
l2 = append(l2, "pc")
"pc" %in% l2

l2 = append(l2, "me", after = 3)
l2

#remove
l2 = l2[-3]
l2

#range
l3 = list(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
(l3)[7:10]

# iki listeyi birleştirmek için  de c fonksiyonu kulanılır(bu fonksiyon ayrıca vektör oluşturmak ve vektörün belirli elemanalrını seçmek içinde kullanılır v1[c(3,7)])
l4 = list(24, 25)

print(c(l3, l4))
