
#+(Addition), -(Subtraction), *(Multiplication), /(Division), ^(Exponent), 
#%%(Modulus)(Remainder from division), %/%	(Integer Division)
5 %% 2
5 %/% 2

17 %% 3
17 %/% 3 # tam bölme
17 / 3 #float bölme


# şöyle komik bir şey var 
3 -> x
x

#comparasion(karşılaştırma) operatörleri C ile aynı 
#  mantık operatorlerinin tamamı var  and olarak iki çeşit var 
# && kısa yolu kullanma sadece ilk elemanları karşılaştırma, & tüm elemanları karşılaştırma
a <- c(FALSE, FALSE, TRUE) #c fonksiyonu vektor oluşturmak için kullanılır
b = c(FALSE, TRUE, TRUE)
c = c(FALSE)

# r1 = c && b # buraada hata alırsın çünkü sadece ilk elemanları kıyaslıyacağı için tek elemanlıları karşılaştırabilir

r1 = c && b # eğer c tru olsa yine karşılaştırmayı kabul etmezdi
r1 # kısaca && sadece bir elemanı karşılaştırabildiği için tek elemanlı verktörleri kıyaslar tekliye karşılık çokklu vektörü kıyaslıyamaz ancak tekli vektörüm fals eise çıktı her zaman false olacağı için hata vermez false çıktısını verir ancak tekli vektör true ise devamında BELİKİDE TRUE gelem ihtimaline karşı kıyaslıyamayacağı için kabul etmez hat verrir


r2 = a & b
r2


