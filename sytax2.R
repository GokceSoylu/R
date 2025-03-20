A = "Gökçe"
B = "Soylu"
C = "özmen"
D = "Taha"

E = paste(D, B)
E
A = B = C = D = E = "taha Naim Özmen" # C için imkansız bu saçma agtama şekli R da mümkün
A
# A, B, C, D, E = " Özmen" Bu ifade olmaz
#varainles harf ile başlamalı ancak nokta ile başlamda geçerli zsayılır. isim içeriğinde _ bulunabilir ancak daha farklı yabancı karakterler buluınamaz

# veri tiplerinde hepsinde bullıunan caracter, intager, numeric(float), logical dışında birde complex bulunur(i ifadeleri için)

m = 10.5
n = 10L #(buradaki L ,nteger olduğunu gösterir) eğer sonunda L olmasaydo tam sayı bile olsa numeric olarak algılanırdı
x = m + n
x
class(m)
class(n)
class(x)